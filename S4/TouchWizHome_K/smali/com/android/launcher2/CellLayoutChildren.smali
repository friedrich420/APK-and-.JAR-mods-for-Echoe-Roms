.class public Lcom/android/launcher2/CellLayoutChildren;
.super Landroid/view/ViewGroup;
.source "CellLayoutChildren.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "CellLayoutChildren"


# instance fields
.field private mCellHeight:I

.field private mCellWidth:I

.field private mGapX:I

.field private mGapY:I

.field private mHiddenItem:Lcom/android/launcher2/BaseItem;

.field protected mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpCellXY:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Lcom/android/launcher2/CellLayoutChildren$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutChildren$1;-><init>(Lcom/android/launcher2/CellLayoutChildren;)V

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 52
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->setMotionEventSplittingEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 57
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;Z)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "createView"    # Z

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->hasItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to add a duplicate entry for this item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    return v0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    if-eqz p2, :cond_2

    .line 95
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;)V

    .line 97
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 405
    .local v0, "grandParent":Landroid/view/View;
    instance-of v4, v0, Lcom/android/launcher2/Hotseat;

    if-eqz v4, :cond_0

    .line 406
    instance-of v4, p1, Lcom/android/launcher2/AppIconView;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 407
    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 408
    .local v1, "icon":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 409
    .local v2, "item":Lcom/android/launcher2/BaseItem;
    if-eqz v2, :cond_2

    .line 410
    sget-boolean v4, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "CellLayoutChildren"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView() adding view to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and title = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " child count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    .end local v1    # "icon":Lcom/android/launcher2/AppIconView;
    .end local v2    # "item":Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 419
    instance-of v4, p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v4, :cond_1

    .line 420
    check-cast p1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    .end local p1    # "v":Landroid/view/View;
    invoke-interface {p1}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;

    move-result-object v3

    .line 421
    .local v3, "shadow":Lcom/android/launcher2/DynamicShadowMixin;
    if-eqz v3, :cond_1

    .line 422
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DynamicShadowMixin;->setViewToInvalidate(Landroid/view/View;)V

    .line 425
    .end local v3    # "shadow":Lcom/android/launcher2/DynamicShadowMixin;
    :cond_1
    return-void

    .line 412
    .restart local v1    # "icon":Lcom/android/launcher2/AppIconView;
    .restart local v2    # "item":Lcom/android/launcher2/BaseItem;
    .restart local p1    # "v":Landroid/view/View;
    :cond_2
    instance-of v4, v1, Lcom/android/launcher2/AllappsIcon;

    if-eqz v4, :cond_0

    .line 413
    sget-boolean v4, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v4, :cond_0

    const-string v4, "CellLayoutChildren"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addView() adding all apps icon to Hotseat\'s CellLayoutChildren @ index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " child count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 112
    .local v0, "l":Lcom/android/launcher2/CellLayout;
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-interface {v2, p1, v0}, Lcom/android/launcher2/ItemViewBuilder;->buildView(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)Landroid/view/View;

    move-result-object v1

    .line 113
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne p1, v2, :cond_0

    .line 114
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    :cond_0
    return-object v1
.end method

.method public buildViews()V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 102
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Tried to build item views when we already had views."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 106
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->buildView(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 108
    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    :cond_1
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 352
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 355
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 356
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 357
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 358
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public disableHardwareLayers()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getLayerType()I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 69
    :cond_0
    return-void
.end method

.method public drawShadows(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 429
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 430
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 428
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_1
    instance-of v3, v2, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 433
    check-cast v3, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    invoke-interface {v3}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;

    move-result-object v1

    .line 434
    .local v1, "shadow":Lcom/android/launcher2/DynamicShadowMixin;
    if-eqz v1, :cond_0

    .line 435
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 436
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 437
    invoke-virtual {v1, p1}, Lcom/android/launcher2/DynamicShadowMixin;->draw(Landroid/graphics/Canvas;)V

    .line 438
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    .line 442
    .end local v1    # "shadow":Lcom/android/launcher2/DynamicShadowMixin;
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-void
.end method

.method public enableHardwareLayers()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 60
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getLayerType()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 61
    sget-object v0, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->setLayerType(ILandroid/graphics/Paint;)V

    .line 63
    :cond_0
    return-void
.end method

.method public findFolderItem(J)Lcom/android/launcher2/BaseItem;
    .locals 5
    .param p1, "id"    # J

    .prologue
    .line 396
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 397
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    iget-wide v2, v1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 399
    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 226
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 227
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/android/launcher2/AllappsIcon;

    if-nez v4, :cond_1

    .line 226
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 231
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-gt v4, p1, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge p1, v4, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-gt v4, p2, :cond_0

    iget v4, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge p2, v4, :cond_0

    .line 236
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 10
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const/4 v4, 0x0

    .line 212
    if-nez p1, :cond_1

    move-object v3, v4

    .line 222
    :cond_0
    :goto_0
    return-object v3

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 215
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 216
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 217
    .local v3, "v":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 218
    .local v2, "tag":Ljava/lang/Object;
    instance-of v5, v2, Lcom/android/launcher2/BaseItem;

    if-eqz v5, :cond_2

    .line 219
    check-cast v2, Lcom/android/launcher2/BaseItem;

    .end local v2    # "tag":Ljava/lang/Object;
    iget-wide v6, v2, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v8, p1, Lcom/android/launcher2/BaseItem;->mId:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 215
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "v":Landroid/view/View;
    :cond_3
    move-object v3, v4

    .line 222
    goto :goto_0
.end method

.method public getChildFromPosition(I)Landroid/view/View;
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 246
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 247
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 246
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 255
    .end local v0    # "child":Landroid/view/View;
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getHiddenItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 259
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 260
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 264
    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemAt(II)Lcom/android/launcher2/BaseItem;
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 241
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public hasItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterateBaseItems(Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Closure:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator",
            "<TClosure;>;TClosure;)V"
        }
    .end annotation

    .prologue
    .line 459
    .local p1, "iterator":Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;, "Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator<TClosure;>;"
    .local p2, "closure":Ljava/lang/Object;, "TClosure;"
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 460
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    invoke-interface {p1, v1, p2}, Lcom/android/launcher2/CellLayoutChildren$BaseItemIterator;->iterate(Lcom/android/launcher2/BaseItem;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    :cond_1
    return-void
.end method

.method public measureChild(Landroid/view/View;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    .line 296
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 297
    .local v2, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v5, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v6, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 298
    iget v1, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 299
    .local v1, "childWidth":I
    iget v0, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 300
    .local v0, "childHeight":I
    invoke-static {v1, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/view/View;->measure(II)V

    .line 302
    return-void
.end method

.method notifyWidgetsOfPageScroll(IIII)V
    .locals 4
    .param p1, "currentPageIndex"    # I
    .param p2, "pageIndex"    # I
    .param p3, "pageWidth"    # I
    .param p4, "pageOffset"    # I

    .prologue
    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 446
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 447
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 448
    check-cast v2, Lcom/android/launcher2/SurfaceWidgetView;

    .line 449
    .local v2, "swv":Lcom/android/launcher2/SurfaceWidgetView;
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/launcher2/SurfaceWidgetView;->onPageScroll(IIII)V

    .line 445
    .end local v2    # "swv":Lcom/android/launcher2/SurfaceWidgetView;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 452
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    .line 307
    .local v11, "count":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v11, :cond_2

    .line 308
    invoke-virtual {p0, v13}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 309
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 310
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 312
    .local v14, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 313
    .local v9, "childLeft":I
    iget v10, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 316
    .local v10, "childTop":I
    :try_start_0
    iget v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v0, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v8, v9, v10, v0, v1}, Landroid/view/View;->layout(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    :goto_1
    iget-boolean v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    if-eqz v0, :cond_1

    .line 322
    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 324
    iget-object v7, p0, Lcom/android/launcher2/CellLayoutChildren;->mTmpCellXY:[I

    .line 325
    .local v7, "cellXY":[I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CellLayoutChildren;->getLocationOnScreen([I)V

    .line 326
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "android.home.drop"

    const/4 v3, 0x0

    aget v3, v7, v3

    add-int/2addr v3, v9

    iget v4, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v4, v10

    iget v5, v14, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 307
    .end local v7    # "cellXY":[I
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v14    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 317
    .restart local v9    # "childLeft":I
    .restart local v10    # "childTop":I
    .restart local v14    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :catch_0
    move-exception v12

    .line 318
    .local v12, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "child layout exception. child tag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "childLeft":I
    .end local v10    # "childTop":I
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 273
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    if-nez v5, :cond_1

    .line 275
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "CellLayoutChildren cannot accept an UNSPECIFIED MeasureSpec"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 278
    .local v4, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 279
    .local v2, "height":I
    invoke-virtual {p0, v4, v2}, Lcom/android/launcher2/CellLayoutChildren;->setMeasuredDimension(II)V

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 283
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 284
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 285
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    .line 286
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 283
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    .end local v0    # "child":Landroid/view/View;
    :cond_3
    return-void
.end method

.method protected onViewAddedInCLC(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 158
    const-string v1, "CellLayoutChildren"

    const-string v2, "Adding view to CellLayoutChildren without an associated item."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 163
    .local v0, "l":Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    if-eqz v1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    invoke-interface {v2, p1, v1, v0}, Lcom/android/launcher2/ItemViewBuilder;->onViewAdded(Landroid/view/View;Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/CellLayout;)V

    .line 167
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->onViewAddedToLayout(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onViewRemovedInCLC(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 172
    return-void
.end method

.method public removeAllItems()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 192
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 177
    .local v0, "rc":Z
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne p1, v2, :cond_0

    .line 178
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 180
    :cond_0
    if-eqz v0, :cond_1

    .line 181
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v1

    .line 182
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 186
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return v0
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 342
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 343
    if-eqz p1, :cond_0

    .line 344
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 345
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 346
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher2/CellLayoutChildren;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 348
    .end local v0    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setCellDimensions(IIII)V
    .locals 3
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "gapX"    # I
    .param p4, "gapY"    # I

    .prologue
    .line 72
    iput p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    .line 73
    iput p2, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    .line 74
    iput p3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    .line 75
    iput p4, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    .line 76
    sget-boolean v0, Lcom/android/launcher2/CellLayoutChildren;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "CellLayoutChildren"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCellDimensions. width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gapX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gapY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 365
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 366
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 367
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 369
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    .line 370
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 365
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 373
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 377
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 378
    return-void
.end method

.method public setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V
    .locals 0
    .param p1, "b"    # Lcom/android/launcher2/ItemViewBuilder;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 87
    return-void
.end method

.method public setItemVisibility(Lcom/android/launcher2/BaseItem;I)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "v"    # I

    .prologue
    .line 196
    if-nez p2, :cond_1

    .line 197
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 201
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    .line 202
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v1, :cond_0

    .line 203
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :cond_0
    return-void

    .line 199
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    iput-object p1, p0, Lcom/android/launcher2/CellLayoutChildren;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    goto :goto_0
.end method

.method public setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 4
    .param p1, "lp"    # Lcom/android/launcher2/CellLayout$LayoutParams;

    .prologue
    .line 292
    iget v0, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellWidth:I

    iget v1, p0, Lcom/android/launcher2/CellLayoutChildren;->mCellHeight:I

    iget v2, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapX:I

    iget v3, p0, Lcom/android/launcher2/CellLayoutChildren;->mGapY:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 293
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public updateChildrenToNewPage(ILjava/util/List;)V
    .locals 5
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p2, "ls":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 382
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 383
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 386
    .local v2, "item":Lcom/android/launcher2/HomeItem;
    instance-of v4, v2, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v4, :cond_0

    .line 387
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    .local v3, "v":Landroid/view/View;
    move-object v4, v2

    .line 388
    check-cast v4, Lcom/android/launcher2/HomeFolderItem;

    check-cast v3, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    .end local v3    # "v":Landroid/view/View;
    invoke-virtual {v4, v3}, Lcom/android/launcher2/HomeFolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 390
    :cond_0
    iput p1, v2, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 391
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v2    # "item":Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method
