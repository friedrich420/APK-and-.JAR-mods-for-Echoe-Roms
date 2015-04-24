.class public Lcom/android/launcher2/QuickViewDragBar;
.super Landroid/widget/FrameLayout;
.source "QuickViewDragBar.java"

# interfaces
.implements Lcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;


# static fields
.field private static sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mDeleteDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeleteTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/QuickViewDragBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickViewDragBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private setStates(ZZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "selected"    # Z
    .param p3, "activated"    # Z

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewDragBar;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 122
    invoke-virtual {p0, p2}, Lcom/android/launcher2/QuickViewDragBar;->setSelected(Z)V

    .line 123
    invoke-virtual {p0, p3}, Lcom/android/launcher2/QuickViewDragBar;->setActivated(Z)V

    .line 124
    return-void
.end method


# virtual methods
.method public checkOver(II)Z
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 101
    sget-object v2, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 102
    sget-object v2, Lcom/android/launcher2/QuickViewDragBar;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    invoke-direct {p0, v0, v0, v1}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    .line 109
    :goto_0
    return v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->resetTrashCan()V

    move v0, v1

    .line 109
    goto :goto_0
.end method

.method public enableDelete(Z)V
    .locals 1
    .param p1, "isEnable"    # Z

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/launcher2/QuickViewDragBar;->setActivated(Z)V

    .line 141
    return-void
.end method

.method public onBulgeAnimationEnded()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->resetTrashCan()V

    .line 129
    return-void
.end method

.method public onDrop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 115
    invoke-direct {p0, v0, v0, v0}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    .line 116
    return-void
.end method

.method public onFinishInflate()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 55
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 56
    const v0, 0x7f0f002d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickViewDragBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/launcher2/HomeEditBar;->findFirstDrawable(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 58
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 61
    .local v3, "bin":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 63
    .local v4, "lid":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/android/launcher2/DeleteDrawable;

    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeleteDrawable;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;ZLcom/android/launcher2/DeleteDrawable$BulgeAnimationListener;)V

    iput-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move v8, v5

    .line 66
    .local v8, "isLandscape":Z
    :goto_0
    if-eqz v8, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTextRight()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 72
    .local v9, "res":Landroid/content/res/Resources;
    const v0, 0x7f0e0100

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v7, v0, v1

    .line 73
    .local v7, "font_size":F
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 84
    .end local v3    # "bin":Landroid/graphics/drawable/Drawable;
    .end local v4    # "lid":Landroid/graphics/drawable/Drawable;
    .end local v7    # "font_size":F
    .end local v8    # "isLandscape":Z
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    return-void

    .line 65
    .restart local v3    # "bin":Landroid/graphics/drawable/Drawable;
    .restart local v4    # "lid":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 76
    .restart local v8    # "isLandscape":Z
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isDeleteDropTargetTextRight()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 78
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v10, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 81
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v10, v1, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public resetTrashCan()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher2/QuickViewDragBar;->setStates(ZZZ)V

    .line 136
    return-void
.end method

.method public setTextDisplayPositionRight(Z)V
    .locals 5
    .param p1, "isHorizontal"    # Z

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/launcher2/QuickViewDragBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 89
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x7f0e0100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float v0, v2, v3

    .line 90
    .local v0, "font_size":F
    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 91
    if-eqz p1, :cond_1

    .line 92
    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 98
    .end local v0    # "font_size":F
    .end local v1    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 95
    .restart local v0    # "font_size":F
    .restart local v1    # "res":Landroid/content/res/Resources;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/launcher2/QuickViewDragBar;->mDeleteDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
