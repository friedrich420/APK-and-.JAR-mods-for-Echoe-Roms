.class public Lcom/android/launcher2/PagedViewWidget;
.super Landroid/widget/LinearLayout;
.source "PagedViewWidget.java"

# interfaces
.implements Landroid/widget/Checkable;


# static fields
.field private static final sPreviewFadeInDuration:I = 0x50

.field private static final sPreviewFadeInStaggerDuration:I = 0x14


# instance fields
.field private mCheckedAlpha:F

.field private mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mCheckedFadeInDuration:I

.field private mCheckedFadeOutDuration:I

.field private mDeleteRegion:Landroid/graphics/Rect;

.field private mDimensionsFormatString:Ljava/lang/String;

.field private final mHighlightColor:I

.field private mImage:Landroid/widget/ImageView;

.field private mIsChecked:Z

.field private mOverlay:Landroid/graphics/drawable/Drawable;

.field private mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

.field private mTalkbackDimen:Ljava/lang/String;

.field spanX:I

.field spanY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const v3, 0x7f0c0002

    const/4 v4, 0x0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 60
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    .line 62
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 81
    .local v0, "alpha":I
    if-lez v0, :cond_0

    .line 82
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x43800000    # 256.0f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 83
    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeInDuration:I

    .line 85
    const v2, 0x7f0c0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeOutDuration:I

    .line 88
    :cond_0
    const v2, 0x7f100006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    .line 89
    const v2, 0x7f100007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mTalkbackDimen:Ljava/lang/String;

    .line 90
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setHapticFeedbackEnabled(Z)V

    .line 91
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setWillNotDraw(Z)V

    .line 92
    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWidget;->setClipToPadding(Z)V

    .line 93
    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/PagedViewWidget;->mHighlightColor:I

    .line 94
    return-void
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getChildCount()I

    move-result v0

    .line 214
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 214
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method


# virtual methods
.method public applyCellSpan(II)V
    .locals 7
    .param p1, "cellSpanWidth"    # I
    .param p2, "cellSpanHeight"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 142
    const v1, 0x7f0f0016

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 143
    .local v0, "dims":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mDimensionsFormatString:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mTalkbackDimen:Ljava/lang/String;

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    :cond_0
    iput p2, p0, Lcom/android/launcher2/PagedViewWidget;->spanY:I

    .line 150
    iput p1, p0, Lcom/android/launcher2/PagedViewWidget;->spanX:I

    .line 151
    return-void
.end method

.method public applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "highlight"    # Ljava/lang/String;

    .prologue
    .line 123
    const v6, 0x7f0f0015

    invoke-virtual {p0, v6}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 124
    .local v4, "name":Landroid/widget/TextView;
    const/4 v3, -0x1

    .line 125
    .local v3, "indexOf":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    .line 127
    .local v1, "highlightStrLength":I
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 128
    .local v0, "highLightText":Landroid/text/Spannable;
    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v6, p1, v7}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v2

    .line 129
    .local v2, "iQueryForIndian":[C
    if-eqz v2, :cond_1

    .line 130
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    .line 131
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 132
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    .line 136
    .end local v5    # "s":Ljava/lang/String;
    :goto_0
    const/4 v6, -0x1

    if-le v3, v6, :cond_0

    .line 137
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget v7, p0, Lcom/android/launcher2/PagedViewWidget;->mHighlightColor:I

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v3, v1

    const/4 v8, 0x0

    invoke-interface {v0, v6, v3, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 138
    :cond_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void

    .line 134
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public applyLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 110
    const v1, 0x7f0f0015

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    .local v0, "name":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHoverPopupType(I)V

    .line 113
    return-void
.end method

.method applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V
    .locals 4
    .param p1, "preview"    # Lcom/android/launcher2/FastBitmapDrawable;
    .param p2, "index"    # I
    .param p3, "scale"    # Z
    .param p4, "animate"    # Z

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 164
    new-instance v0, Lcom/android/launcher2/DynamicShadowMixin;

    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/launcher2/DynamicShadowMixin;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    .line 165
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/DynamicShadowMixin;->setViewToInvalidate(Landroid/view/View;)V

    .line 167
    if-eqz p4, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 169
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x14

    add-int/lit8 v1, v1, 0x50

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 175
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 285
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 286
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 288
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 289
    .local v2, "overlay":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    .line 290
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 292
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 293
    .local v6, "overlayWd":I
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 294
    .local v3, "overlayHt":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 295
    .local v5, "overlayRect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 296
    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    .line 297
    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    add-int/2addr v3, v8

    .line 300
    :cond_0
    div-int/lit8 v4, v3, 0x2

    .line 302
    .local v4, "overlayHtHalf":I
    new-instance v0, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v0, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 303
    .local v0, "imagePos":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {p0, v8, v0}, Lcom/android/launcher2/PagedViewWidget;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 304
    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int v7, v8, v4

    .line 305
    .local v7, "top":I
    iget v8, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, v8, v6

    .line 306
    .local v1, "left":I
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getScrollX()I

    move-result v8

    add-int/2addr v1, v8

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    .line 308
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    add-int v9, v1, v6

    add-int v10, v7, v3

    invoke-virtual {v8, v1, v7, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 309
    iget-object v8, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 310
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 312
    .end local v0    # "imagePos":Landroid/graphics/Rect;
    .end local v1    # "left":I
    .end local v3    # "overlayHt":I
    .end local v4    # "overlayHtHalf":I
    .end local v5    # "overlayRect":Landroid/graphics/Rect;
    .end local v6    # "overlayWd":I
    .end local v7    # "top":I
    :cond_1
    return-void
.end method

.method public drawShadow(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 181
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getScrollX()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    iget-object v1, p0, Lcom/android/launcher2/PagedViewWidget;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/DynamicShadowMixin;->draw(Landroid/graphics/Canvas;)V

    .line 184
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 187
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 188
    .local v0, "ret":Landroid/view/ViewParent;
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 189
    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    return v0
.end method

.method public isDeleteRequested(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 316
    .local v0, "action":I
    const/4 v1, 0x0

    .line 318
    .local v1, "res":Z
    iget-object v5, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    and-int/lit16 v5, v0, 0xff

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    :cond_0
    move v2, v1

    .line 325
    .end local v1    # "res":Z
    .local v2, "res":I
    :goto_0
    return v2

    .line 322
    .end local v2    # "res":I
    .restart local v1    # "res":Z
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 323
    .local v3, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 324
    .local v4, "y":F
    iget-object v5, p0, Lcom/android/launcher2/PagedViewWidget;->mDeleteRegion:Landroid/graphics/Rect;

    float-to-int v6, v3

    float-to-int v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    move v2, v1

    .line 325
    .restart local v2    # "res":I
    goto :goto_0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 99
    const v0, 0x7f0f0017

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mImage:Landroid/widget/ImageView;

    .line 106
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 207
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 202
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setCellSpanVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 154
    const v1, 0x7f0f0016

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 155
    .local v0, "dims":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 156
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    :cond_0
    return-void

    .line 156
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 251
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/PagedViewWidget;->setChecked(ZZ)V

    .line 252
    return-void
.end method

.method setChecked(ZZ)V
    .locals 6
    .param p1, "checked"    # Z
    .param p2, "animate"    # Z

    .prologue
    .line 220
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-eq v2, p1, :cond_1

    .line 221
    iput-boolean p1, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    .line 225
    iget-boolean v2, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-eqz v2, :cond_2

    .line 226
    iget v0, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlpha:F

    .line 227
    .local v0, "alpha":F
    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeInDuration:I

    .line 234
    .local v1, "duration":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 235
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 237
    :cond_0
    if-eqz p2, :cond_3

    .line 238
    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->getAlpha()F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 239
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v4, v1

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 240
    iget-object v2, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 245
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->invalidate()V

    .line 247
    .end local v0    # "alpha":F
    .end local v1    # "duration":I
    :cond_1
    return-void

    .line 229
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 230
    .restart local v0    # "alpha":F
    iget v1, p0, Lcom/android/launcher2/PagedViewWidget;->mCheckedFadeOutDuration:I

    .restart local v1    # "duration":I
    goto :goto_0

    .line 242
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->setAlpha(F)V

    goto :goto_1
.end method

.method public setLabelVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 116
    const v1, 0x7f0f0015

    invoke-virtual {p0, v1}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 117
    .local v0, "name":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 118
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 120
    :cond_0
    return-void

    .line 118
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setOverlay(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "overlay"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 266
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWidget;->mOverlay:Landroid/graphics/drawable/Drawable;

    .line 267
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWidget;->invalidate()V

    .line 269
    :cond_0
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWidget;->mIsChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewWidget;->setChecked(Z)V

    .line 262
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
