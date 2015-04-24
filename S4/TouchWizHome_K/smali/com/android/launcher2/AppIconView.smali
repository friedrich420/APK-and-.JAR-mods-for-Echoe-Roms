.class public Lcom/android/launcher2/AppIconView;
.super Landroid/widget/TextView;
.source "AppIconView.java"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lcom/android/launcher2/DynamicShadowMixin$Holder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AppIconView$ShadowReadyCallback;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final HOME:I = 0x0

.field private static final MENU:I = 0x1

.field static final PADDING_V:F = 3.0f

.field private static final PRESS_ALPHA:F = 0.4f

.field static SHADOW_LARGE_COLOUR:I = 0x0

.field static SHADOW_LARGE_RADIUS:F = 0.0f

.field static SHADOW_SMALL_COLOUR:I = 0x0

.field static SHADOW_SMALL_RADIUS:F = 0.0f

.field static SHADOW_Y_OFFSET:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "AppIconView"

.field private static sBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private static sFontSizeDefault:I

.field private static sFontSizeSmall:I

.field private static sIconCenterXOffset:I

.field static sIconTopToTopOffset:I

.field static sIsDragState:Z


# instance fields
.field private callIntentAction:Ljava/lang/String;

.field private dialIntentAction:Ljava/lang/String;

.field private mBoundsRect:Landroid/graphics/Rect;

.field private mCheckedOverlay:Landroid/graphics/drawable/Drawable;

.field private mDidInvalidateForPressedState:Z

.field private mDimAmount:F

.field protected mDrawIcon:Z

.field protected mDrawShadow:Z

.field private mHotseatIconSize:I

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconDestination:I

.field protected mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconSize:I

.field protected mIsAttachedHotseat:Z

.field private mIsChecked:Z

.field private mIsCheckingEnabled:Z

.field private mIsDimmed:Z

.field private final mLastTouch:[I

.field private mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

.field private mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;

.field private mPressedGlowColor:I

.field private mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

.field private mPressedOutlineColor:I

.field final mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

.field private mStayPressed:Z

.field private final mTempCanvas:Landroid/graphics/Canvas;

.field private final mTempRect:Landroid/graphics/Rect;

.field final mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

.field protected mTextVisible:Z

.field private mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

.field private messageIntentAction:Ljava/lang/String;

.field private quickContactIntentAction:Ljava/lang/String;

.field sMovieIconSize:I

.field sMovieIconSizeHeight:I

.field sMovieLeftX:I

.field sMovieLeftY:I

.field sMovieRightX:I

.field sMovieRightY:I

.field sThumbnailSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_RADIUS:F

    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    sput v0, Lcom/android/launcher2/AppIconView;->SHADOW_SMALL_RADIUS:F

    .line 66
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/android/launcher2/AppIconView;->SHADOW_Y_OFFSET:F

    .line 67
    const/high16 v0, -0x23000000

    sput v0, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_COLOUR:I

    .line 68
    const/high16 v0, -0x34000000    # -3.3554432E7f

    sput v0, Lcom/android/launcher2/AppIconView;->SHADOW_SMALL_COLOUR:I

    .line 134
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/AppIconView;->DEBUGGABLE:Z

    .line 392
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 143
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/16 v8, 0x64

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    .line 74
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 75
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    .line 78
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    .line 85
    iput v3, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    .line 88
    const v2, 0x3f0ccccd    # 0.55f

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    .line 89
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    .line 103
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mTempCanvas:Landroid/graphics/Canvas;

    .line 108
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mTempRect:Landroid/graphics/Rect;

    .line 122
    const-string v2, "android.intent.action.SENDTO"

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->messageIntentAction:Ljava/lang/String;

    .line 123
    const-string v2, "android.intent.action.CALL"

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->callIntentAction:Ljava/lang/String;

    .line 124
    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->dialIntentAction:Ljava/lang/String;

    .line 125
    const-string v2, "com.android.contacts.action.QUICK_CONTACT"

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->quickContactIntentAction:Ljava/lang/String;

    .line 127
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v2, v8, v9, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    .line 128
    new-instance v2, Lcom/android/launcher2/ScalarAnimator;

    invoke-direct {v2, v8, v9, v5}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    .line 136
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    .line 722
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 723
    iput-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 995
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    .line 149
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->AppIconView:[I

    invoke-virtual {p1, p2, v2, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    .line 153
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 155
    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconDestination:I

    if-ne v2, v4, :cond_0

    .line 156
    new-instance v2, Ljava/util/MissingResourceException;

    const-string v3, "AppIconView must have the attribute launcher:destination set to either \'home\' or \'menu\' set"

    const-string v4, "launcher:destination"

    const-string v5, "value of either \'home\' or \'menu\'"

    invoke-direct {v2, v3, v4, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->initBadgeValue()V

    .line 162
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->initMovieIconValue()V

    .line 164
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 165
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e00c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    .line 166
    const v2, 0x7f0e001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AppIconView;->mHotseatIconSize:I

    .line 167
    const v2, 0x7f0200b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    .line 170
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 171
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget v3, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 172
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getShadowRadius()F

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_RADIUS:F

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getShadowDy()F

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->SHADOW_Y_OFFSET:F

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getShadowColor()I

    move-result v2

    sput v2, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_COLOUR:I

    .line 178
    sget v2, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_RADIUS:F

    const/4 v3, 0x0

    sget v4, Lcom/android/launcher2/AppIconView;->SHADOW_Y_OFFSET:F

    sget v5, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_COLOUR:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher2/AppIconView;->setShadowLayer(FFFI)V

    .line 179
    invoke-virtual {p0, v6}, Lcom/android/launcher2/AppIconView;->setHoverPopupType(I)V

    .line 181
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->init()V

    .line 182
    return-void
.end method

.method static createDarkenColorFilter(F)Landroid/graphics/ColorFilter;
    .locals 4
    .param p0, "mult"    # F

    .prologue
    .line 1148
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 1150
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p0

    float-to-int v0, v2

    .line 1151
    .local v0, "alpha":I
    rsub-int v0, v0, 0xff

    .line 1152
    const/16 v2, 0xff

    invoke-static {v2, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    .line 1153
    .local v1, "color":I
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    return-object v2
.end method

.method private createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "outlineColor"    # I
    .param p3, "glowColor"    # I

    .prologue
    .line 710
    sget v1, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 711
    .local v1, "padding":I
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 714
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 715
    invoke-direct {p0, p1, v1}, Lcom/android/launcher2/AppIconView;->drawWithPadding(Landroid/graphics/Canvas;I)V

    .line 716
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v0, p1, p3, p2}, Lcom/android/launcher2/HolographicOutlineHelper;->applyThickExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 717
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 719
    return-object v0
.end method

.method private drawWithPadding(Landroid/graphics/Canvas;I)V
    .locals 6
    .param p1, "destCanvas"    # Landroid/graphics/Canvas;
    .param p2, "padding"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 681
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mTempRect:Landroid/graphics/Rect;

    .line 682
    .local v0, "clipRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 685
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 689
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    if-ge v1, v2, :cond_0

    .line 690
    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 696
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 697
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScaleX()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScaleY()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    div-float/2addr v3, v5

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v4

    add-int/2addr v4, p2

    int-to-float v4, v4

    div-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 699
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v2, p2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getScrollY()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v3, p2, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 700
    sget-object v1, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->draw(Landroid/graphics/Canvas;)V

    .line 702
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 703
    return-void
.end method

.method public static getHomeIconLayout(Lcom/android/launcher2/BaseItem;)I
    .locals 1
    .param p0, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 1192
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    const v0, 0x7f03001f

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f030021

    goto :goto_0
.end method

.method public static getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    .line 1213
    sget-object v0, Lcom/android/launcher2/ShadowStyleable;->TextView:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public static getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "style"    # I

    .prologue
    .line 1209
    sget-object v0, Lcom/android/launcher2/ShadowStyleable;->View:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/android/launcher2/HolographicOutlineHelper;->obtain()Lcom/android/launcher2/HolographicOutlineHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AppIconView;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->mPressedGlowColor:I

    iput v1, p0, Lcom/android/launcher2/AppIconView;->mPressedOutlineColor:I

    .line 213
    return-void
.end method

.method private isHotseatItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "isHotseat":Z
    instance-of v1, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/launcher2/HomeItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    iget-wide v2, p1, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    .line 370
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private playCheckStatus(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .prologue
    .line 969
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    if-eqz p1, :cond_0

    const v0, 0x7f100071

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 972
    return-void

    .line 969
    :cond_0
    const v0, 0x7f100072

    goto :goto_0
.end method

.method public static recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 0
    .param p0, "viewStyle"    # Landroid/content/res/TypedArray;
    .param p1, "textViewStyle"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1217
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1218
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1219
    return-void
.end method

.method static setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V
    .locals 1
    .param p0, "mult"    # F
    .param p1, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 1143
    invoke-static {p0}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 1144
    .local v0, "filter":Landroid/graphics/ColorFilter;
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1145
    return-void
.end method

.method private updateCheckingOverlay()V
    .locals 2

    .prologue
    .line 949
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_3

    .line 950
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 951
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 955
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    .line 958
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 959
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mCheckedOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 966
    :goto_0
    return-void

    .line 961
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mUncheckedOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 964
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 216
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V

    .line 217
    return-void
.end method

.method protected applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V
    .locals 25
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 220
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/AppIconView;->setTag(Ljava/lang/Object;)V

    .line 221
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 222
    .local v16, "newTitle":Ljava/lang/String;
    if-eqz v16, :cond_0

    .line 223
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    .line 225
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/AppIconView;->isHotseatItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    .line 227
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 231
    :cond_2
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_d

    .line 232
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f100069

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 246
    :cond_4
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v22

    if-eqz v22, :cond_f

    .line 247
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f1000c9

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 274
    :goto_1
    if-nez p2, :cond_5

    .line 275
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    const-class v23, Lcom/android/launcher2/FolderIconView;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_16

    const/4 v12, 0x1

    .line 276
    .local v12, "isFolder":Z
    :goto_2
    new-instance v22, Ljava/lang/NullPointerException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Trying to create a FastBitmapDrawable with a null bitmap. See attached item info: isFolder= "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v22
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    .end local v12    # "isFolder":Z
    :catch_0
    move-exception v8

    .line 284
    .local v8, "exception":Ljava/lang/NullPointerException;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x10d0000

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 287
    .local v6, "defaultIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v6, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 288
    sget-object v22, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 289
    invoke-virtual {v8}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 292
    .end local v6    # "defaultIcon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "exception":Ljava/lang/NullPointerException;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v22, v0

    if-eqz v22, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v22

    if-eqz v22, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v22

    const-string v23, "com.android.dialer.DialtactsActivity"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    .line 297
    sget-boolean v22, Lcom/android/launcher2/AppIconView;->DEBUGGABLE:Z

    if-eqz v22, :cond_6

    .line 298
    const-string v22, "AppIconView"

    const-string v23, "applyBaseItem: Phone icon is loaded"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .local v18, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v22, p1

    .line 301
    check-cast v22, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v20

    .line 304
    .local v20, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_17

    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 307
    .local v5, "ci":Landroid/content/pm/ComponentInfo;
    :goto_3
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v11

    move-object/from16 v0, p1

    iput v11, v0, Lcom/android/launcher2/BaseItem;->mIconResId:I

    .line 309
    .local v11, "iconId":I
    iget-object v4, v5, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 311
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    const/16 v19, 0x0

    .line 313
    .local v19, "res":Landroid/content/res/Resources;
    if-nez v4, :cond_18

    .line 314
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 321
    :goto_4
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AppIconView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    move-object/from16 v23, v0

    iget v0, v5, Landroid/content/pm/ComponentInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_19

    iget-object v0, v5, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_5
    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v11, v2}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 324
    sget-boolean v22, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v22, :cond_8

    .line 325
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v13

    .line 326
    .local v13, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v13}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v22

    if-nez v22, :cond_8

    .line 327
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/android/launcher2/ThemeLoader;->loadAppIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 328
    .local v15, "newIcon":Landroid/graphics/Bitmap;
    if-nez v15, :cond_7

    .line 329
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 331
    :cond_7
    if-nez v15, :cond_1a

    .line 335
    .end local v13    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v15    # "newIcon":Landroid/graphics/Bitmap;
    :cond_8
    :goto_6
    if-nez p2, :cond_a

    .line 336
    sget-boolean v22, Lcom/android/launcher2/AppIconView;->DEBUGGABLE:Z

    if-eqz v22, :cond_9

    .line 337
    const-string v22, "AppIconView"

    const-string v23, "applyBaseItem: phone icon set to system default app icon"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const/high16 v23, 0x10d0000

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 341
    .restart local v6    # "defaultIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v6, v0}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 346
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v6    # "defaultIcon":Landroid/graphics/drawable/Drawable;
    .end local v11    # "iconId":I
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1b

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/FolderItem;

    move/from16 v22, v0

    if-nez v22, :cond_1b

    const/16 v22, 0x1

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;Z)V

    .line 348
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    move-object/from16 v22, v0

    if-eqz v22, :cond_b

    .line 349
    const/4 v14, 0x0

    .local v14, "mPhoneIcon":Landroid/graphics/Bitmap;
    move-object/from16 v22, p1

    .line 350
    check-cast v22, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->dialIntentAction:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1c

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f02000c

    invoke-static/range {v22 .. v23}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 360
    :goto_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Lcom/android/launcher2/AppIconView;->setIconMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;)V

    .line 363
    .end local v14    # "mPhoneIcon":Landroid/graphics/Bitmap;
    :cond_b
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v22

    if-nez v22, :cond_c

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->resetShadow()V

    .line 366
    :cond_c
    return-void

    .line 236
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f10006a

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 237
    .local v9, "folderString":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    .line 238
    .local v10, "folderStringLen":I
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v17

    .line 239
    .local v17, "newTitleLen":I
    move/from16 v0, v17

    if-lt v0, v10, :cond_e

    sub-int v22, v17, v10

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 241
    :cond_e
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_0

    .line 249
    .end local v9    # "folderString":Ljava/lang/String;
    .end local v10    # "folderStringLen":I
    .end local v17    # "newTitleLen":I
    :cond_f
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v22, v0

    if-eqz v22, :cond_15

    .line 250
    const-string v21, ""

    .local v21, "type":Ljava/lang/String;
    move-object/from16 v22, p1

    .line 251
    check-cast v22, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "action":Ljava/lang/String;
    if-eqz v3, :cond_11

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_11

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->dialIntentAction:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->callIntentAction:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    .line 254
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f1000d5

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 262
    :cond_11
    :goto_9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_14

    .line 263
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 255
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->messageIntentAction:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f1000d6

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_9

    .line 257
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->quickContactIntentAction:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f1000d7

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_9

    .line 265
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 268
    .end local v3    # "action":Ljava/lang/String;
    .end local v21    # "type":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 275
    :cond_16
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 304
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_17
    move-object/from16 v0, v20

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto/16 :goto_3

    .line 316
    .restart local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "ci":Landroid/content/pm/ComponentInfo;
    .restart local v11    # "iconId":I
    .restart local v19    # "res":Landroid/content/res/Resources;
    :cond_18
    :try_start_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v19

    goto/16 :goto_4

    .line 317
    :catch_1
    move-exception v7

    .line 318
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_4

    .line 322
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_19
    iget-object v0, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    goto/16 :goto_5

    .restart local v13    # "loader":Lcom/android/launcher2/ThemeLoader;
    .restart local v15    # "newIcon":Landroid/graphics/Bitmap;
    :cond_1a
    move-object/from16 p2, v15

    .line 331
    goto/16 :goto_6

    .line 346
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v11    # "iconId":I
    .end local v13    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v15    # "newIcon":Landroid/graphics/Bitmap;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1b
    const/16 v22, 0x0

    goto/16 :goto_7

    .restart local v14    # "mPhoneIcon":Landroid/graphics/Bitmap;
    :cond_1c
    move-object/from16 v22, p1

    .line 353
    check-cast v22, Lcom/android/launcher2/HomeShortcutItem;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher2/HomeShortcutItem;->getIntent()Landroid/content/Intent;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->messageIntentAction:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f02000d

    invoke-static/range {v22 .. v23}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_8

    .line 357
    :cond_1d
    const/4 v14, 0x0

    goto/16 :goto_8
.end method

.method public applyStyle(I)V
    .locals 3
    .param p1, "style"    # I

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1243
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1244
    .local v2, "viewStyle":Landroid/content/res/TypedArray;
    invoke-static {v0, p1}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1245
    .local v1, "textViewStyle":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 1246
    invoke-static {v2, v1}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 1247
    return-void
.end method

.method public applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "viewStyle"    # Landroid/content/res/TypedArray;
    .param p2, "textViewStyle"    # Landroid/content/res/TypedArray;

    .prologue
    .line 1196
    invoke-static {p1, p0}, Lcom/android/launcher2/RotateHelper;->setViewAttributes(Landroid/content/res/TypedArray;Landroid/view/View;)V

    .line 1197
    invoke-static {p2, p0}, Lcom/android/launcher2/RotateHelper;->setTextViewAttributes(Landroid/content/res/TypedArray;Landroid/widget/TextView;)V

    .line 1199
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 1200
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    if-eqz v1, :cond_0

    .line 1201
    iget-object v0, v1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    .line 1202
    .local v0, "iconMovie":Landroid/graphics/Movie;
    if-eqz v0, :cond_0

    .line 1203
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setIconMovie(Landroid/graphics/Movie;)V

    .line 1206
    .end local v0    # "iconMovie":Landroid/graphics/Movie;
    :cond_0
    return-void
.end method

.method public createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p1, "badgeCount"    # I

    .prologue
    .line 1001
    if-nez p1, :cond_0

    const/16 v18, 0x0

    .line 1049
    :goto_0
    return-object v18

    .line 1003
    :cond_0
    const/16 v18, 0x3e8

    move/from16 v0, p1

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget v19, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1008
    :goto_1
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v14, v0, Landroid/graphics/Rect;->left:I

    .line 1010
    .local v14, "paddingLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v15, v0, Landroid/graphics/Rect;->top:I

    .line 1011
    .local v15, "paddingTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    add-int v16, v14, v18

    .line 1012
    .local v16, "paddingWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    add-int v13, v15, v18

    .line 1013
    .local v13, "paddingHeight":I
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    sub-int v11, v18, v16

    .line 1014
    .local v11, "defaultContentsWidth":I
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    sub-int v10, v18, v13

    .line 1016
    .local v10, "defaultContentsHeight":I
    const-string v18, "%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1017
    .local v5, "badgeText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/AppIconView;->mBoundsRect:Landroid/graphics/Rect;

    .line 1018
    .local v6, "bounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v5, v1, v2, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1023
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e0078

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    add-int v9, v18, v19

    .line 1024
    .local v9, "contentsWidth":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 1025
    .local v8, "contentsHeight":I
    if-ge v9, v11, :cond_1

    .line 1027
    move v9, v11

    .line 1030
    :cond_1
    if-ge v8, v10, :cond_2

    .line 1032
    sub-int v18, v10, v8

    div-int/lit8 v18, v18, 0x2

    add-int v15, v15, v18

    .line 1033
    move v8, v10

    .line 1035
    :cond_2
    add-int v17, v9, v16

    .line 1036
    .local v17, "width":I
    add-int v12, v8, v13

    .line 1038
    .local v12, "height":I
    sget-object v18, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v12, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1039
    .local v4, "b":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1041
    .local v7, "c":Landroid/graphics/Canvas;
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1042
    sget-object v18, Lcom/android/launcher2/AppIconView;->sBadgeDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1048
    div-int/lit8 v18, v9, 0x2

    add-int v18, v18, v14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v6, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v19, v15, v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v7, v5, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1049
    new-instance v18, Lcom/android/launcher2/FastBitmapDrawable;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 1006
    .end local v4    # "b":Landroid/graphics/Bitmap;
    .end local v5    # "badgeText":Ljava/lang/String;
    .end local v6    # "bounds":Landroid/graphics/Rect;
    .end local v7    # "c":Landroid/graphics/Canvas;
    .end local v8    # "contentsHeight":I
    .end local v9    # "contentsWidth":I
    .end local v10    # "defaultContentsHeight":I
    .end local v11    # "defaultContentsWidth":I
    .end local v12    # "height":I
    .end local v13    # "paddingHeight":I
    .end local v14    # "paddingLeft":I
    .end local v15    # "paddingTop":I
    .end local v16    # "paddingWidth":I
    .end local v17    # "width":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget v19, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_1
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 395
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v0

    .line 397
    :cond_1
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 399
    sput-boolean v2, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    .line 403
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    goto :goto_0

    .line 400
    :cond_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 401
    sput-boolean v0, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    goto :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 767
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 769
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->drawShadow(Landroid/graphics/Canvas;)V

    .line 771
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppIconView;->drawIconOrText(Landroid/graphics/Canvas;)V

    .line 773
    return-void
.end method

.method public drawIconOrText(Landroid/graphics/Canvas;)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 780
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v15

    .line 781
    .local v15, "mScrollX":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getScrollY()I

    move-result v16

    .line 782
    .local v16, "mScrollY":I
    const v11, 0xffffff

    .line 783
    .local v11, "color_mask":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v2, v3

    float-to-int v9, v2

    .line 784
    .local v9, "alpha":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getCurrentTextColor()I

    move-result v10

    .line 785
    .local v10, "color":I
    const v2, 0xffffff

    and-int/2addr v10, v2

    .line 786
    shl-int/lit8 v2, v9, 0x18

    or-int/2addr v10, v2

    .line 787
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    .line 789
    sget v2, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_COLOUR:I

    const v3, 0xffffff

    and-int v19, v2, v3

    .line 790
    .local v19, "shadow_color":I
    shl-int/lit8 v2, v9, 0x18

    or-int v19, v19, v2

    .line 791
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget v3, Lcom/android/launcher2/AppIconView;->SHADOW_LARGE_RADIUS:F

    const/4 v4, 0x0

    sget v5, Lcom/android/launcher2/AppIconView;->SHADOW_Y_OFFSET:F

    move/from16 v0, v19

    invoke-virtual {v2, v3, v4, v5, v0}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 793
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-nez v2, :cond_5

    .line 794
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 797
    int-to-float v3, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v4, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v2

    add-int/2addr v2, v15

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v6, v2

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 800
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 801
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 810
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v2}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 815
    :cond_0
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 816
    int-to-float v3, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v4, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v2

    add-int/2addr v2, v15

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getHeight()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v6, v2

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 819
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 827
    .local v17, "overlay":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_4

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    if-eqz v2, :cond_4

    .line 828
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getDrawableState()[I

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 830
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v2, :cond_1

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->isClickable()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    .line 832
    .local v12, "dimValue":F
    :goto_1
    invoke-static {v12}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v13

    .line 833
    .local v13, "filter":Landroid/graphics/ColorFilter;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 836
    .end local v12    # "dimValue":F
    .end local v13    # "filter":Landroid/graphics/ColorFilter;
    :cond_1
    const/4 v8, 0x1

    .line 837
    .local v8, "OverlayIconToptoTopOffset":I
    move-object/from16 v0, p0

    instance-of v2, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_2

    .line 838
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0195

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 840
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v2

    sget v3, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    add-int/2addr v2, v3

    add-int v20, v2, v8

    .line 841
    .local v20, "top":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v21

    .line 842
    .local v21, "viewWidth":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 843
    .local v18, "overlayWidth":I
    div-int/lit8 v2, v21, 0x2

    sget v3, Lcom/android/launcher2/AppIconView;->sIconCenterXOffset:I

    add-int v14, v2, v3

    .line 844
    .local v14, "left":I
    add-int v2, v14, v18

    move/from16 v0, v21

    if-le v2, v0, :cond_3

    .line 845
    add-int v2, v14, v18

    sub-int v2, v2, v21

    sub-int/2addr v14, v2

    .line 848
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getScrollX()I

    move-result v2

    add-int/2addr v14, v2

    .line 849
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v2, v14

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int v3, v3, v20

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 851
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 853
    .end local v8    # "OverlayIconToptoTopOffset":I
    .end local v14    # "left":I
    .end local v18    # "overlayWidth":I
    .end local v20    # "top":I
    .end local v21    # "viewWidth":I
    :cond_4
    return-void

    .line 804
    .end local v17    # "overlay":Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->save(I)I

    .line 805
    int-to-float v3, v15

    move/from16 v0, v16

    int-to-float v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v2

    add-int/2addr v2, v15

    int-to-float v5, v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppIconView;->getExtendedPaddingTop()I

    move-result v2

    add-int v2, v2, v16

    int-to-float v6, v2

    sget-object v7, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 806
    invoke-super/range {p0 .. p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 807
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 831
    .restart local v17    # "overlay":Landroid/graphics/drawable/Drawable;
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method protected drawShadow(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 738
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    if-eqz v3, :cond_0

    .line 739
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 740
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    sub-int v2, v3, v4

    .line 741
    .local v2, "dw":I
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    sub-int v1, v3, v4

    .line 743
    .local v1, "dh":I
    int-to-float v3, v2

    div-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 754
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getAlpha()F

    move-result v4

    mul-float/2addr v3, v4

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 755
    .local v0, "alpha":I
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 756
    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 757
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 759
    .end local v0    # "alpha":I
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 864
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 867
    iget-boolean v3, p0, Lcom/android/launcher2/AppIconView;->mDidInvalidateForPressedState:Z

    if-nez v3, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setCellLayoutPressedOrFocusedIcon()V

    .line 898
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 900
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 901
    .local v2, "overlay":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 902
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 903
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 905
    :cond_1
    return-void

    .line 873
    .end local v2    # "overlay":Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_6

    move v0, v3

    .line 874
    .local v0, "backgroundEmptyBefore":Z
    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mStayPressed:Z

    if-nez v5, :cond_3

    .line 875
    iput-object v6, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 877
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 878
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getLayout()Landroid/text/Layout;

    move-result-object v5

    if-nez v5, :cond_4

    .line 881
    iput-object v6, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 889
    :cond_4
    iput-boolean v4, p0, Lcom/android/launcher2/AppIconView;->mStayPressed:Z

    .line 890
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setCellLayoutPressedOrFocusedIcon()V

    .line 892
    :cond_5
    iget-object v5, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v5, :cond_7

    move v1, v3

    .line 893
    .local v1, "backgroundEmptyNow":Z
    :goto_2
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    .end local v0    # "backgroundEmptyBefore":Z
    .end local v1    # "backgroundEmptyNow":Z
    :cond_6
    move v0, v4

    .line 873
    goto :goto_1

    .restart local v0    # "backgroundEmptyBefore":Z
    :cond_7
    move v1, v4

    .line 892
    goto :goto_2
.end method

.method protected generateShadowIfNeeded()V
    .locals 7

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->shouldHaveIconShadow()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 435
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    .line 436
    .local v6, "item":Lcom/android/launcher2/BaseItem;
    if-eqz v6, :cond_0

    .line 437
    iget-object v0, v6, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, v6, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/Bitmap;)V

    .line 463
    .end local v6    # "item":Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    return-void

    .line 440
    .restart local v6    # "item":Lcom/android/launcher2/BaseItem;
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 441
    .local v1, "bm":Landroid/graphics/Bitmap;
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v0, :cond_2

    .line 443
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 444
    :cond_2
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v0

    new-instance v2, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;

    invoke-direct {v2, p0, v6}, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;-><init>(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/ShadowGen;->queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;Landroid/content/res/Resources;Z)V

    goto :goto_0

    .line 449
    .end local v1    # "bm":Landroid/graphics/Bitmap;
    .end local v6    # "item":Lcom/android/launcher2/BaseItem;
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->shouldHaveIconShadow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public getAnimGroup()I
    .locals 2

    .prologue
    .line 1171
    const/4 v0, 0x0

    .line 1173
    .local v0, "group":I
    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v1, :cond_0

    .line 1174
    const/4 v0, 0x1

    .line 1176
    :cond_0
    return v0
.end method

.method public getDimAmount()F
    .locals 1

    .prologue
    .line 1156
    iget v0, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    return v0
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getHotseatScaleFactor()F
    .locals 2

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 377
    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v1, :cond_0

    .line 378
    iget v1, p0, Lcom/android/launcher2/AppIconView;->mHotseatIconSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 380
    :cond_0
    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getItemId()J
    .locals 2

    .prologue
    .line 1168
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    iget-wide v0, v0, Lcom/android/launcher2/BaseItem;->mId:J

    return-wide v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public getMovieDrawable()Lcom/android/launcher2/MovieDrawable;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    return-object v0
.end method

.method getPressedOrFocusedBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method getPressedOrFocusedBackgroundPadding()I
    .locals 1

    .prologue
    .line 667
    sget v0, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getTextVisible()Z
    .locals 1

    .prologue
    .line 939
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    return v0
.end method

.method public hideBadge()V
    .locals 4

    .prologue
    .line 1086
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1089
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1090
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 1091
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 1093
    .local v0, "item":Lcom/android/launcher2/BaseItem;
    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    .line 1094
    :cond_0
    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1097
    .end local v0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_1
    return-void
.end method

.method protected initBadgeValue()V
    .locals 2

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 187
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0e0193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/AppIconView;->sIconCenterXOffset:I

    .line 188
    const v1, 0x7f0e0194

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/AppIconView;->sIconTopToTopOffset:I

    .line 189
    const v1, 0x7f0e00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    .line 190
    const v1, 0x7f0e0191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/AppIconView;->sFontSizeDefault:I

    .line 191
    const v1, 0x7f0e0192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sput v1, Lcom/android/launcher2/AppIconView;->sFontSizeSmall:I

    .line 192
    return-void
.end method

.method protected initMovieIconValue()V
    .locals 2

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 197
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0e00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    .line 198
    const v1, 0x7f0e00c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    .line 199
    const v1, 0x7f0e00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    .line 200
    const v1, 0x7f0e00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    .line 201
    const v1, 0x7f0e00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    .line 202
    const v1, 0x7f0e00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    .line 203
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDimmed()Z
    .locals 1

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/Canvas;

    .prologue
    .line 386
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 387
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 388
    :cond_0
    return-void
.end method

.method public onDrop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 732
    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 733
    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 734
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 735
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 594
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 596
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 597
    .local v1, "tag":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 655
    :cond_0
    :goto_0
    return v0

    .line 601
    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v5

    .line 602
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v6

    .line 606
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-nez v2, :cond_3

    .line 610
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 611
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mTempCanvas:Landroid/graphics/Canvas;

    iget v3, p0, Lcom/android/launcher2/AppIconView;->mPressedGlowColor:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->mPressedOutlineColor:I

    invoke-direct {p0, v2, v3, v4}, Lcom/android/launcher2/AppIconView;->createGlowingOutline(Landroid/graphics/Canvas;II)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    .line 614
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 615
    iput-boolean v6, p0, Lcom/android/launcher2/AppIconView;->mDidInvalidateForPressedState:Z

    .line 616
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->setCellLayoutPressedOrFocusedIcon()V

    goto :goto_0

    .line 618
    :cond_2
    iput-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mDidInvalidateForPressedState:Z

    goto :goto_0

    .line 620
    :cond_3
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    .line 625
    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    goto :goto_0

    .line 630
    :pswitch_1
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    .line 635
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    goto/16 :goto_0

    .line 640
    :pswitch_2
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    .line 641
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    goto/16 :goto_0

    .line 645
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 646
    instance-of v2, v1, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    .line 648
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppIconView;->setAlpha(F)V

    goto/16 :goto_0

    .line 597
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "vis"    # I

    .prologue
    .line 408
    invoke-super {p0, p1}, Landroid/widget/TextView;->onWindowVisibilityChanged(I)V

    .line 409
    if-eqz p1, :cond_1

    .line 426
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 420
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 421
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 422
    .local v0, "item":Lcom/android/launcher2/BaseItem;
    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->generateShadowIfNeeded()V

    goto :goto_0
.end method

.method public refreshBadge()V
    .locals 0

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->showBadge()V

    .line 1101
    return-void
.end method

.method public resetShadow()V
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 430
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->generateShadowIfNeeded()V

    .line 431
    return-void
.end method

.method setCellLayoutPressedOrFocusedIcon()V
    .locals 3

    .prologue
    .line 659
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 660
    .local v1, "parent":Landroid/view/ViewGroup;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    .line 661
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 662
    .local v0, "cellLayout":Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mPressedOrFocusedBackground:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .end local p0    # "this":Lcom/android/launcher2/AppIconView;
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayout;->setPressedOrFocusedIcon(Lcom/android/launcher2/AppIconView;)V

    .line 664
    .end local v0    # "cellLayout":Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void

    .line 662
    .restart local v0    # "cellLayout":Lcom/android/launcher2/CellLayout;
    .restart local p0    # "this":Lcom/android/launcher2/AppIconView;
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 981
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    .line 982
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->updateCheckingOverlay()V

    .line 983
    sget-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mExitingSelectableState:Z

    if-nez v0, :cond_0

    .line 984
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    invoke-direct {p0, v0}, Lcom/android/launcher2/AppIconView;->playCheckStatus(Z)V

    .line 985
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/MenuAppsGrid;->mExitingSelectableState:Z

    .line 986
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 987
    return-void
.end method

.method public setCheckingEnabled(Z)V
    .locals 0
    .param p1, "checkingEnabled"    # Z

    .prologue
    .line 943
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsCheckingEnabled:Z

    .line 944
    invoke-direct {p0}, Lcom/android/launcher2/AppIconView;->updateCheckingOverlay()V

    .line 945
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 946
    return-void
.end method

.method public setDimAmount(F)V
    .locals 1
    .param p1, "dimAmount"    # F

    .prologue
    .line 1159
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    iput p1, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    goto :goto_0
.end method

.method public setDimmed(ZZ)V
    .locals 6
    .param p1, "isDim"    # Z
    .param p2, "invalidate"    # Z

    .prologue
    .line 1119
    iget-boolean v5, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    if-ne v5, p1, :cond_1

    .line 1140
    :cond_0
    :goto_0
    return-void

    .line 1121
    :cond_1
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mIsDimmed:Z

    .line 1122
    if-eqz p1, :cond_4

    iget v0, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    .line 1123
    .local v0, "dimValue":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 1124
    .local v4, "p":Landroid/graphics/Paint;
    invoke-static {v0, v4}, Lcom/android/launcher2/AppIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 1125
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1126
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v2

    .line 1127
    .local v2, "filter":Landroid/graphics/ColorFilter;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v5, v1

    if-ge v3, v5, :cond_5

    .line 1128
    aget-object v5, v1, v3

    if-eqz v5, :cond_3

    .line 1129
    instance-of v5, p0, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-boolean v5, Lcom/android/launcher2/AppIconView;->sIsDragState:Z

    if-nez v5, :cond_3

    .line 1130
    :cond_2
    aget-object v5, v1, v3

    invoke-virtual {v5, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1127
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1122
    .end local v0    # "dimValue":F
    .end local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .end local v2    # "filter":Landroid/graphics/ColorFilter;
    .end local v3    # "i":I
    .end local v4    # "p":Landroid/graphics/Paint;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 1135
    .restart local v0    # "dimValue":F
    .restart local v1    # "drawables":[Landroid/graphics/drawable/Drawable;
    .restart local v2    # "filter":Landroid/graphics/ColorFilter;
    .restart local v3    # "i":I
    .restart local v4    # "p":Landroid/graphics/Paint;
    :cond_5
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/launcher2/AppIconView;->setDimmedBadge(ZZLandroid/graphics/ColorFilter;)V

    .line 1137
    if-eqz p2, :cond_0

    .line 1138
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    goto :goto_0
.end method

.method public setDimmedBadge(ZZLandroid/graphics/ColorFilter;)V
    .locals 3
    .param p1, "isDim"    # Z
    .param p2, "invalidate"    # Z
    .param p3, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 1104
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 1106
    .local v1, "tag":Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/launcher2/BaseItem;

    iget v2, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-nez v2, :cond_2

    .line 1107
    :cond_0
    const/4 v0, 0x0

    .line 1111
    .end local v1    # "tag":Ljava/lang/Object;
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v0, :cond_1

    .line 1112
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 1113
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1114
    return-void

    .line 1109
    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "tag":Ljava/lang/Object;
    :cond_2
    check-cast v1, Lcom/android/launcher2/BaseItem;

    .end local v1    # "tag":Ljava/lang/Object;
    iget v2, v1, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method setDrawShadow(Z)V
    .locals 0
    .param p1, "draw"    # Z

    .prologue
    .line 762
    iput-boolean p1, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 763
    return-void
.end method

.method public setHotseatText(Lcom/android/launcher2/HomeItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 1182
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v0, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/Utilities;->isCamera()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f0b0013

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1185
    const-string v0, "AppIconView"

    const-string v1, "setTextVisible to false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setTextVisible(Z)V

    .line 1189
    :cond_0
    return-void

    .line 1183
    :cond_1
    const v0, 0x7f0b0012

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/Bitmap;Z)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;
    .param p2, "isNormalSize"    # Z

    .prologue
    const/4 v3, 0x0

    .line 496
    if-nez p2, :cond_1

    .line 497
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 501
    :goto_0
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 502
    .local v1, "iconDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->isDimmed()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    iget v2, p0, Lcom/android/launcher2/AppIconView;->mDimAmount:F

    invoke-static {v2}, Lcom/android/launcher2/AppIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v0

    .line 504
    .local v0, "filter":Landroid/graphics/ColorFilter;
    if-eqz v1, :cond_0

    .line 505
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 507
    .end local v0    # "filter":Landroid/graphics/ColorFilter;
    :cond_0
    invoke-virtual {p0, v3, v1, v3, v3}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 510
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->destroyDrawingCache()V

    .line 511
    return-void

    .line 499
    .end local v1    # "iconDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/launcher2/Utilities;->CreateScaledBitmapWithNormalSize(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setIconMovie(Landroid/graphics/Movie;)V
    .locals 6
    .param p1, "movie"    # Landroid/graphics/Movie;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 514
    new-instance v1, Lcom/android/launcher2/MovieDrawable;

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    invoke-direct {v1, p1, v2, v3}, Lcom/android/launcher2/MovieDrawable;-><init>(Landroid/graphics/Movie;II)V

    iput-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    .line 516
    iget v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 517
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 518
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v0, v5, v5}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 520
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 521
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v4, v1, v2, v4}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 522
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    iget v5, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    invoke-virtual {p0, v4, v1, v4, v4}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setIconMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "movie"    # Landroid/graphics/Movie;
    .param p2, "mPhoneBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 529
    new-instance v2, Lcom/android/launcher2/MovieDrawable;

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    invoke-direct {v2, p1, v3, v4}, Lcom/android/launcher2/MovieDrawable;-><init>(Landroid/graphics/Movie;II)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    .line 533
    iget v2, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 536
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 537
    .local v0, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, v0, v6, v6}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FF)V

    .line 540
    if-eqz p2, :cond_0

    .line 541
    iget v2, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    add-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    add-int/lit8 v3, v3, 0x3

    invoke-static {p2, v2, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 542
    .local v1, "mPhoneBitmapTemp":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 543
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    iget-object v3, p0, Lcom/android/launcher2/AppIconView;->mMoviePhoneIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v5, v2, v3, v5}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 544
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aget-object v2, v2, v7

    iget v3, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    iget v4, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    iget v5, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    iget v6, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 548
    .end local v1    # "mPhoneBitmapTemp":Landroid/graphics/Bitmap;
    :goto_0
    const/high16 v2, -0x1000000

    invoke-virtual {p0, v2}, Lcom/android/launcher2/AppIconView;->setTextColor(I)V

    .line 549
    return-void

    .line 546
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AppIconView;->mMovieDrawable:Lcom/android/launcher2/MovieDrawable;

    invoke-virtual {p0, v5, v2, v5, v5}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected setIconShadow(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 564
    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mIsAttachedHotseat:Z

    if-eqz v1, :cond_0

    .line 565
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mHotseatIconSize:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/AppIconView;->mIconSize:I

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 566
    .local v0, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 568
    .end local v0    # "scale":F
    :cond_0
    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v1, p1}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setIconShadow(Landroid/graphics/drawable/Drawable;)V

    .line 569
    return-void
.end method

.method setIconShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 587
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 588
    return-void
.end method

.method public setLastTouchPoint(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 913
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mLastTouch:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 914
    return-void
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "overlay"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 857
    iput-object p1, p0, Lcom/android/launcher2/AppIconView;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 858
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 860
    :cond_0
    return-void
.end method

.method public setTextAlpha(I)V
    .locals 1
    .param p1, "a"    # I

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1165
    return-void
.end method

.method public setTextVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 926
    if-eqz p1, :cond_1

    .line 927
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 928
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    if-nez v1, :cond_0

    .line 929
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .end local v0    # "tag":Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 930
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    .line 936
    :cond_0
    :goto_0
    return-void

    .line 933
    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setText(Ljava/lang/CharSequence;)V

    .line 934
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AppIconView;->mTextVisible:Z

    goto :goto_0
.end method

.method protected shouldHaveIconShadow()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public showBadge()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1053
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1055
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/BaseItem;

    iget v4, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-nez v4, :cond_4

    .line 1056
    :cond_0
    const/4 v0, 0x0

    .line 1060
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 1063
    if-eqz v3, :cond_3

    instance-of v4, v3, Lcom/android/launcher2/BaseItem;

    if-eqz v4, :cond_3

    move-object v2, v3

    .line 1064
    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 1065
    .local v2, "item":Lcom/android/launcher2/BaseItem;
    const/4 v1, 0x0

    .line 1067
    .local v1, "description":Ljava/lang/String;
    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_1

    iget-object v4, v2, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_3

    .line 1068
    :cond_1
    iget v4, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-le v4, v7, :cond_5

    .line 1069
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    iget v7, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    :goto_1
    invoke-static {v2}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1077
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1080
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1083
    .end local v1    # "description":Ljava/lang/String;
    .end local v2    # "item":Lcom/android/launcher2/BaseItem;
    :cond_3
    return-void

    .end local v0    # "badge":Landroid/graphics/drawable/Drawable;
    :cond_4
    move-object v4, v3

    .line 1058
    check-cast v4, Lcom/android/launcher2/BaseItem;

    iget v4, v4, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "badge":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 1070
    .restart local v1    # "description":Ljava/lang/String;
    .restart local v2    # "item":Lcom/android/launcher2/BaseItem;
    :cond_5
    iget v4, v2, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    if-ne v4, v7, :cond_6

    .line 1071
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1000d2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1073
    :cond_6
    iget-object v1, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    goto :goto_1
.end method

.method public startFadeShadow()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 725
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 726
    iget-object v0, p0, Lcom/android/launcher2/AppIconView;->mTextShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/ScalarAnimator;->start(FF)V

    .line 727
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawIcon:Z

    .line 728
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mDrawShadow:Z

    .line 729
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->invalidate()V

    .line 730
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 991
    iget-boolean v0, p0, Lcom/android/launcher2/AppIconView;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView;->setChecked(Z)V

    .line 992
    return-void

    .line 991
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateMovieValues()V
    .locals 2

    .prologue
    .line 1222
    invoke-virtual {p0}, Lcom/android/launcher2/AppIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1224
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0e00c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSize:I

    .line 1225
    const v1, 0x7f0e00c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieIconSizeHeight:I

    .line 1226
    const v1, 0x7f0e00c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sThumbnailSize:I

    .line 1228
    const v1, 0x7f0e00ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftX:I

    .line 1229
    const v1, 0x7f0e00cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieLeftY:I

    .line 1230
    const v1, 0x7f0e00cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightX:I

    .line 1231
    const v1, 0x7f0e00cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/AppIconView;->sMovieRightY:I

    .line 1232
    return-void
.end method
