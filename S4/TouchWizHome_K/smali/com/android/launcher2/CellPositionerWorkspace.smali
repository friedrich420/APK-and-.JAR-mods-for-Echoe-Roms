.class public Lcom/android/launcher2/CellPositionerWorkspace;
.super Ljava/lang/Object;
.source "CellPositionerWorkspace.java"

# interfaces
.implements Lcom/android/launcher2/CellPositioner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;,
        Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;
    }
.end annotation


# instance fields
.field private final directions:[[I

.field private mCellHeight:I

.field private mCellWidth:I

.field private final mDeltaProvider:Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;

.field private final mDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private mDragDelta:Lcom/android/launcher2/PositionDelta;

.field private final mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

.field private final mLayout:Lcom/android/launcher2/CellLayout;

.field final mNumColumns:I

.field final mNumRows:I

.field private mOccupied:[[Z

.field private mShrinkingEnabled:Z

.field private final tmpExactXY:[I

.field private tmpForSort:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpRect:[I

.field private tmpRollback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpShiftDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpSortedDeltas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final tmpXY:[I


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;)V
    .locals 6
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p2, "deltaProvider"    # Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;
    .param p3, "gridDimensionProvder"    # Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    .line 61
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    .line 63
    const/16 v0, 0x9

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    .line 76
    iput-boolean v4, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mShrinkingEnabled:Z

    .line 276
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    .line 383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    .line 48
    iput-object p1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    .line 49
    iput-object p2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltaProvider:Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;

    .line 50
    iput-object p3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    .line 52
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getNumRows()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    .line 53
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getNumColumns()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    .line 55
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellWidth()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellWidth:I

    .line 56
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v0}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellHeight()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellHeight:I

    .line 58
    return-void

    .line 63
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        -0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
    .end array-data

    :array_8
    .array-data 4
        -0x1
        0x1
    .end array-data
.end method

.method private calculateOccupiedCells(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    iget v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    iget v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    .line 416
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 417
    .local v0, "d":Lcom/android/launcher2/PositionDelta;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_0

    .line 419
    .end local v0    # "d":Lcom/android/launcher2/PositionDelta;
    :cond_0
    return-void
.end method

.method private findDeltas(Lcom/android/launcher2/PositionDelta;Ljava/util/List;Ljava/util/List;Z)Z
    .locals 4
    .param p1, "underPos"    # Lcom/android/launcher2/PositionDelta;
    .param p4, "overlappingOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/PositionDelta;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p2, "source":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    .local p3, "res":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    const/4 v2, 0x1

    .line 389
    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 391
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 392
    .local v0, "d":Lcom/android/launcher2/PositionDelta;
    if-eqz p4, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PositionDelta;->overlaps(Lcom/android/launcher2/PositionDelta;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    .end local v0    # "d":Lcom/android/launcher2/PositionDelta;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 398
    .restart local v0    # "d":Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->shrinkable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-gt v3, v2, :cond_4

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 399
    :cond_4
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 401
    .end local v0    # "d":Lcom/android/launcher2/PositionDelta;
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 402
    .restart local v0    # "d":Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-ne v3, v2, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-ne v3, v2, :cond_6

    .line 403
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 405
    .end local v0    # "d":Lcom/android/launcher2/PositionDelta;
    :cond_7
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 406
    .restart local v0    # "d":Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->shrinkable()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-gt v3, v2, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-le v3, v2, :cond_8

    .line 407
    :cond_9
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 410
    .end local v0    # "d":Lcom/android/launcher2/PositionDelta;
    :cond_a
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpForSort:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 411
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    :goto_4
    return v2

    :cond_b
    const/4 v2, 0x0

    goto :goto_4
.end method

.method private findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z
    .locals 10
    .param p1, "cell_x"    # I
    .param p2, "cell_y"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "widgetSizes"    # Lcom/android/launcher2/WidgetSizes;
    .param p6, "ignoreOccupied"    # Z
    .param p7, "result"    # [I

    .prologue
    .line 447
    if-eqz p6, :cond_0

    const/4 v7, 0x1

    if-ne p3, v7, :cond_0

    const/4 v7, 0x1

    if-ne p4, v7, :cond_0

    .line 448
    const/4 v7, 0x0

    aput p1, p7, v7

    .line 449
    const/4 v7, 0x1

    aput p2, p7, v7

    .line 450
    const/4 v7, 0x1

    .line 498
    :goto_0
    return v7

    .line 453
    :cond_0
    move-object/from16 v1, p7

    .line 455
    .local v1, "bestXY":[I
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 457
    .local v0, "bestDistance":F
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_1
    iget v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    add-int/lit8 v8, p4, -0x1

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_7

    .line 459
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_2
    iget v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    add-int/lit8 v8, p3, -0x1

    sub-int/2addr v7, v8

    if-ge v5, v7, :cond_6

    .line 460
    if-nez p6, :cond_5

    .line 461
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, p3, :cond_5

    .line 462
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    if-ge v4, p4, :cond_4

    .line 463
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v7

    if-lez v7, :cond_2

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {p5, v7, v8}, Lcom/android/launcher2/WidgetSizes;->isAvailableSize(II)Z

    move-result v7

    if-nez v7, :cond_2

    .line 464
    add-int/2addr v5, v3

    .line 459
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_1
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 468
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    add-int v8, v5, v3

    aget-object v7, v7, v8

    add-int v8, v6, v4

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_3

    .line 469
    add-int/2addr v5, v3

    .line 470
    goto :goto_5

    .line 462
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 461
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 482
    .end local v3    # "i":I
    .end local v4    # "j":I
    :cond_5
    sub-int v7, v5, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellWidth:I

    mul-int/2addr v7, v8

    sub-int v8, v6, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellHeight:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    int-to-float v2, v7

    .line 485
    .local v2, "distance":F
    cmpg-float v7, v2, v0

    if-gtz v7, :cond_1

    .line 486
    move v0, v2

    .line 487
    const/4 v7, 0x0

    aput v5, v1, v7

    .line 488
    const/4 v7, 0x1

    aput v6, v1, v7

    .line 490
    const/4 v7, 0x0

    cmpl-float v7, v0, v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    .line 457
    .end local v2    # "distance":F
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 495
    .end local v5    # "x":I
    :cond_7
    const v7, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v7, v0, v7

    if-nez v7, :cond_8

    .line 496
    const/4 v7, 0x0

    goto :goto_0

    .line 498
    :cond_8
    const/4 v7, 0x1

    goto :goto_0
.end method

.method private isDeltaValid(II)Z
    .locals 1
    .param p1, "xDim"    # I
    .param p2, "yDim"    # I

    .prologue
    .line 438
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 439
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V
    .locals 9
    .param p1, "d"    # Lcom/android/launcher2/PositionDelta;
    .param p2, "mark"    # Z

    .prologue
    .line 422
    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getCountX()I

    move-result v0

    .line 423
    .local v0, "countX":I
    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayout;->getCountY()I

    move-result v1

    .line 424
    .local v1, "countY":I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v5

    .line 425
    .local v5, "x_":I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v7

    .line 426
    .local v7, "y_":I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v2

    .line 427
    .local v2, "spanX":I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    .line 428
    .local v3, "spanY":I
    invoke-direct {p0, v5, v7}, Lcom/android/launcher2/CellPositionerWorkspace;->isDeltaValid(II)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 429
    move v4, v5

    .local v4, "x":I
    :goto_0
    add-int v8, v5, v2

    if-ge v4, v8, :cond_1

    if-ge v4, v0, :cond_1

    .line 430
    move v6, v7

    .local v6, "y":I
    :goto_1
    add-int v8, v7, v3

    if-ge v6, v8, :cond_0

    if-ge v6, v1, :cond_0

    .line 431
    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    aget-object v8, v8, v4

    aput-boolean p2, v8, v6

    .line 430
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 429
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 435
    .end local v4    # "x":I
    .end local v6    # "y":I
    :cond_1
    return-void
.end method

.method private quickCheckEnoughSpace(I)Z
    .locals 4
    .param p1, "checkSpace"    # I

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 508
    .local v0, "c":I
    const/4 v1, 0x0

    .local v1, "x":I
    :goto_0
    iget v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    if-ge v1, v3, :cond_2

    .line 509
    const/4 v2, 0x0

    .local v2, "y":I
    :goto_1
    iget v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    if-ge v2, v3, :cond_1

    .line 510
    iget-object v3, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mOccupied:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v2

    if-nez v3, :cond_0

    .line 511
    add-int/lit8 v0, v0, 0x1

    .line 512
    if-lt v0, p1, :cond_0

    .line 513
    const/4 v3, 0x1

    .line 517
    .end local v2    # "y":I
    :goto_2
    return v3

    .line 509
    .restart local v2    # "y":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 508
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 517
    .end local v2    # "y":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private resetDeltas()V
    .locals 3

    .prologue
    .line 262
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 263
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltaProvider:Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;

    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Lcom/android/launcher2/CellPositionerWorkspace$DeltaProvider;->getDeltas(Ljava/util/List;)V

    .line 265
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    if-eqz v1, :cond_0

    .line 266
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PositionDelta;

    iget-object v1, v1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    iget-object v2, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    iget-object v2, v2, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    if-ne v1, v2, :cond_1

    .line 268
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 273
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    .line 274
    return-void

    .line 266
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z
    .locals 22
    .param p1, "dragDelta"    # Lcom/android/launcher2/PositionDelta;
    .param p2, "overlappingOnly"    # Z

    .prologue
    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 288
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PositionDelta;

    .line 289
    .local v16, "d":Lcom/android/launcher2/PositionDelta;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/launcher2/PositionDelta;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/PositionDelta;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    .end local v16    # "d":Lcom/android/launcher2/PositionDelta;
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/launcher2/CellPositionerWorkspace;->findDeltas(Lcom/android/launcher2/PositionDelta;Ljava/util/List;Ljava/util/List;Z)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 293
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PositionDelta;

    .line 296
    .restart local v16    # "d":Lcom/android/launcher2/PositionDelta;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_1

    .line 298
    .end local v16    # "d":Lcom/android/launcher2/PositionDelta;
    :cond_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    .line 303
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/launcher2/CellPositionerWorkspace;->toRect([ILjava/util/ArrayList;)V

    .line 304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v5, 0x1

    aget v5, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v8, 0x2

    aget v6, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v8, 0x3

    aget v7, v3, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 305
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int v17, v3, v4

    .line 306
    .local v17, "dx":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRect:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int v18, v3, v4

    .line 307
    .local v18, "dy":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PositionDelta;

    .line 308
    .restart local v16    # "d":Lcom/android/launcher2/PositionDelta;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v3

    add-int v3, v3, v17

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 309
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    add-int v3, v3, v18

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 310
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto :goto_2

    .line 314
    .end local v16    # "d":Lcom/android/launcher2/PositionDelta;
    .end local v17    # "dx":I
    .end local v18    # "dy":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpSortedDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PositionDelta;

    .line 315
    .restart local v16    # "d":Lcom/android/launcher2/PositionDelta;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v7

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 317
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mShrinkingEnabled:Z

    if-eqz v3, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->shrinkable()Z

    move-result v3

    if-nez v3, :cond_4

    .line 318
    :cond_3
    const/4 v3, 0x0

    .line 361
    .end local v16    # "d":Lcom/android/launcher2/PositionDelta;
    :goto_4
    return v3

    .line 320
    .restart local v16    # "d":Lcom/android/launcher2/PositionDelta;
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v6

    .line 321
    .local v6, "spanX":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v7

    .line 322
    .local v7, "spanY":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getMinSpanX()I

    move-result v20

    .line 323
    .local v20, "minSpanX":I
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getMinSpanY()I

    move-result v21

    .line 326
    .local v21, "minSpanY":I
    :cond_5
    if-le v6, v7, :cond_9

    move/from16 v0, v20

    if-le v6, v0, :cond_9

    .line 327
    add-int/lit8 v6, v6, -0x1

    .line 334
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v4

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v5

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 338
    :goto_6
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    if-ge v6, v3, :cond_6

    .line 339
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v10

    add-int/lit8 v11, v6, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v8, p0

    move v12, v7

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v3

    if-nez v3, :cond_b

    .line 342
    :cond_6
    :goto_7
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    if-ge v7, v3, :cond_7

    .line 343
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v9

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v10

    add-int/lit8 v12, v7, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/PositionDelta;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object/from16 v8, p0

    move v11, v6

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v3

    if-nez v3, :cond_c

    .line 347
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    .line 348
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    .line 352
    .end local v6    # "spanX":I
    .end local v7    # "spanY":I
    .end local v20    # "minSpanX":I
    .end local v21    # "minSpanY":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 354
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/CellPositionerWorkspace;->markCellsForDelta(Lcom/android/launcher2/PositionDelta;Z)V

    goto/16 :goto_3

    .line 328
    .restart local v6    # "spanX":I
    .restart local v7    # "spanY":I
    .restart local v20    # "minSpanX":I
    .restart local v21    # "minSpanY":I
    :cond_9
    move/from16 v0, v21

    if-le v7, v0, :cond_a

    .line 329
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_5

    .line 331
    :cond_a
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 338
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 342
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 359
    .end local v6    # "spanX":I
    .end local v7    # "spanY":I
    .end local v16    # "d":Lcom/android/launcher2/PositionDelta;
    .end local v20    # "minSpanX":I
    .end local v21    # "minSpanY":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpShiftDeltas:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 361
    const/4 v3, 0x1

    goto/16 :goto_4
.end method

.method private toRect([ILjava/util/ArrayList;)V
    .locals 8
    .param p1, "r"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "deltas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/PositionDelta;>;"
    const/16 v2, 0x64

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 366
    aput v2, p1, v4

    .line 367
    aput v2, p1, v5

    .line 368
    aput v4, p1, v6

    .line 369
    aput v4, p1, v7

    .line 371
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 372
    .local v0, "d":Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    aget v3, p1, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, p1, v4

    .line 373
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v2

    aget v3, p1, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, p1, v5

    .line 374
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v3

    add-int/2addr v2, v3

    aget v3, p1, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p1, v6

    .line 375
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    add-int/2addr v2, v3

    aget v3, p1, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p1, v7

    goto :goto_0

    .line 379
    .end local v0    # "d":Lcom/android/launcher2/PositionDelta;
    :cond_0
    aget v2, p1, v6

    aget v3, p1, v4

    sub-int/2addr v2, v3

    aput v2, p1, v6

    .line 380
    aget v2, p1, v7

    aget v3, p1, v5

    sub-int/2addr v2, v3

    aput v2, p1, v7

    .line 381
    return-void
.end method

.method private tryRearrange(Z)Z
    .locals 14
    .param p1, "allowDragDeltaReposition"    # Z

    .prologue
    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 168
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v5

    .line 169
    .local v5, "spanX":I
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v6

    .line 171
    .local v6, "spanY":I
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    aget v3, v11, v10

    .line 172
    .local v3, "ox":I
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    aget v4, v11, v9

    .line 175
    .local v4, "oy":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    array-length v11, v11

    if-ge v2, v11, :cond_2

    .line 176
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v10

    add-int v7, v3, v11

    .line 177
    .local v7, "x":I
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v9

    add-int v8, v4, v11

    .line 178
    .local v8, "y":I
    if-ltz v7, :cond_1

    if-ltz v8, :cond_1

    add-int v11, v7, v5

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    if-gt v11, v12, :cond_1

    add-int v11, v8, v6

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    if-gt v11, v12, :cond_1

    .line 179
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v7}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 180
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 181
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v11, v9}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 221
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_0
    :goto_1
    return v9

    .line 185
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_1
    if-nez p1, :cond_3

    .line 188
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_2
    mul-int v11, v5, v6

    invoke-direct {p0, v11}, Lcom/android/launcher2/CellPositionerWorkspace;->quickCheckEnoughSpace(I)Z

    move-result v11

    if-nez v11, :cond_4

    move v9, v10

    goto :goto_1

    .line 175
    .restart local v7    # "x":I
    .restart local v8    # "y":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_4
    const/4 v2, 0x0

    :goto_2
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    array-length v11, v11

    if-ge v2, v11, :cond_6

    .line 192
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v10

    add-int v7, v3, v11

    .line 193
    .restart local v7    # "x":I
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->directions:[[I

    aget-object v11, v11, v2

    aget v11, v11, v9

    add-int v8, v4, v11

    .line 194
    .restart local v8    # "y":I
    if-ltz v7, :cond_5

    if-ltz v8, :cond_5

    add-int v11, v7, v5

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    if-gt v11, v12, :cond_5

    add-int v11, v8, v6

    iget v12, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    if-gt v11, v12, :cond_5

    .line 195
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v7}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 196
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 197
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v11, v10}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 201
    :cond_5
    if-nez p1, :cond_8

    .line 205
    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_6
    if-eqz p1, :cond_b

    .line 206
    const/4 v7, 0x0

    .restart local v7    # "x":I
    :goto_3
    iget v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumColumns:I

    sub-int/2addr v11, v5

    add-int/lit8 v11, v11, 0x1

    if-ge v7, v11, :cond_b

    .line 207
    const/4 v8, 0x0

    .restart local v8    # "y":I
    :goto_4
    iget v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mNumRows:I

    sub-int/2addr v11, v6

    add-int/lit8 v11, v11, 0x1

    if-ge v8, v11, :cond_a

    .line 208
    sub-int v11, v3, v7

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 209
    .local v0, "dx":I
    sub-int v11, v4, v8

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 210
    .local v1, "dy":I
    if-ge v0, v13, :cond_9

    if-ge v1, v13, :cond_9

    .line 207
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 191
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 212
    .restart local v0    # "dx":I
    .restart local v1    # "dy":I
    :cond_9
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v7}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 213
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v11, v8}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 214
    iget-object v11, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {p0, v11, v10}, Lcom/android/launcher2/CellPositionerWorkspace;->shiftDeltas(Lcom/android/launcher2/PositionDelta;Z)Z

    move-result v11

    if-eqz v11, :cond_7

    goto/16 :goto_1

    .line 206
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v7    # "x":I
    .end local v8    # "y":I
    :cond_b
    move v9, v10

    .line 221
    goto/16 :goto_1
.end method


# virtual methods
.method public addDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/PositionDelta;

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    .line 535
    return-void
.end method

.method public deltaAt(IIII)Lcom/android/launcher2/PositionDelta;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "spanx"    # I
    .param p4, "spany"    # I

    .prologue
    .line 241
    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 242
    .local v0, "d":Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v4

    .line 243
    .local v4, "x_":I
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v5

    .line 244
    .local v5, "y_":I
    if-ne p1, v4, :cond_1

    if-ne p2, v5, :cond_1

    .line 250
    .end local v0    # "d":Lcom/android/launcher2/PositionDelta;
    .end local v4    # "x_":I
    .end local v5    # "y_":I
    :goto_0
    return-object v0

    .line 245
    .restart local v0    # "d":Lcom/android/launcher2/PositionDelta;
    .restart local v4    # "x_":I
    .restart local v5    # "y_":I
    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v2

    .line 246
    .local v2, "spanx_":I
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v3

    .line 247
    .local v3, "spany_":I
    add-int v6, p1, p3

    add-int/lit8 v6, v6, -0x1

    if-lt v6, v4, :cond_0

    add-int v6, v4, v2

    if-ge p1, v6, :cond_0

    add-int v6, p2, p4

    add-int/lit8 v6, v6, -0x1

    if-lt v6, v5, :cond_0

    add-int v6, v5, v3

    if-ge p2, v6, :cond_0

    goto :goto_0

    .line 250
    .end local v0    # "d":Lcom/android/launcher2/PositionDelta;
    .end local v2    # "spanx_":I
    .end local v3    # "spany_":I
    .end local v4    # "x_":I
    .end local v5    # "y_":I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 10
    .param p1, "cell_x"    # I
    .param p2, "cell_y"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 523
    invoke-virtual {p0, v9}, Lcom/android/launcher2/CellPositionerWorkspace;->reset(Z)V

    .line 524
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    aput v8, p5, v6

    .line 526
    aput v8, p5, v9

    .line 528
    :cond_0
    return-object p5
.end method

.method public getDeltas()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDragDelta()Lcom/android/launcher2/PositionDelta;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 226
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/launcher2/PositionDelta;

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-direct {v0, v1}, Lcom/android/launcher2/PositionDelta;-><init>(Lcom/android/launcher2/PositionDelta;)V

    goto :goto_0
.end method

.method public removeDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 1
    .param p1, "d"    # Lcom/android/launcher2/PositionDelta;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->calculateOccupiedCells(Ljava/util/List;)V

    .line 541
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .param p1, "resetDrag"    # Z

    .prologue
    .line 255
    if-eqz p1, :cond_0

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas()V

    .line 259
    return-void
.end method

.method public resetDragDelta()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    .line 232
    return-void
.end method

.method public updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;Lcom/android/launcher2/WidgetSizes;IIZZZ)Z
    .locals 14
    .param p1, "dragDelta"    # Lcom/android/launcher2/PositionDelta;
    .param p2, "widgetSizes"    # Lcom/android/launcher2/WidgetSizes;
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "shrinkingEnabled"    # Z
    .param p6, "allowDragDeltaReposition"    # Z
    .param p7, "ignoreOccupied"    # Z

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    .line 83
    move/from16 v0, p5

    iput-boolean v0, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mShrinkingEnabled:Z

    .line 85
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 86
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 88
    invoke-direct {p0}, Lcom/android/launcher2/CellPositionerWorkspace;->resetDeltas()V

    .line 89
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellWidth()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellWidth:I

    .line 90
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mGridDimensionProvider:Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;

    invoke-interface {v1}, Lcom/android/launcher2/CellPositionerWorkspace$GridDimensionProvider;->getCellHeight()I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mCellHeight:I

    .line 92
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v4

    .line 93
    .local v4, "spanX":I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v5

    .line 95
    .local v5, "spanY":I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    .line 96
    .local v2, "cell_x":I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    .line 98
    .local v3, "cell_y":I
    const/4 v1, 0x1

    if-lt v4, v1, :cond_0

    const/4 v1, 0x1

    if-ge v5, v1, :cond_1

    .line 99
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "span must be at least 1! spanX: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   spanY: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v1, v6}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 105
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v1, v6}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 106
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    move-object v1, p0

    move/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    const/4 v6, 0x1

    aget v1, v1, v6

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpXY:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ne v1, v6, :cond_2

    .line 109
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 110
    const/4 v1, 0x1

    .line 160
    :goto_0
    return v1

    .line 113
    :cond_2
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 116
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    .line 118
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 119
    const/4 v1, 0x1

    goto :goto_0

    .line 123
    :cond_3
    move v9, v4

    .line 124
    .local v9, "tryX":I
    move v10, v5

    .line 125
    .local v10, "tryY":I
    :cond_4
    move/from16 v0, p3

    if-gt v9, v0, :cond_5

    move/from16 v0, p4

    if-le v10, v0, :cond_a

    .line 127
    :cond_5
    if-le v9, v10, :cond_7

    move/from16 v0, p3

    if-le v9, v0, :cond_7

    .line 128
    add-int/lit8 v9, v9, -0x1

    .line 137
    :goto_1
    if-eqz p2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v1

    if-lez v1, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher2/WidgetSizes;->isAvailableSize(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 140
    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpExactXY:[I

    move-object v6, p0

    move v7, v2

    move v8, v3

    invoke-direct/range {v6 .. v13}, Lcom/android/launcher2/CellPositionerWorkspace;->findNearestArea(IIIILcom/android/launcher2/WidgetSizes;Z[I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 141
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v9}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    .line 142
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v10}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    .line 143
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 144
    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/launcher2/CellPositionerWorkspace;->tryRearrange(Z)Z

    .line 146
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 147
    const/4 v1, 0x1

    goto :goto_0

    .line 129
    :cond_7
    move/from16 v0, p4

    if-le v10, v0, :cond_8

    .line 130
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 131
    :cond_8
    move/from16 v0, p3

    if-le v9, v0, :cond_9

    .line 132
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 134
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 153
    :cond_a
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/PositionDelta;->setX(I)V

    .line 154
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/PositionDelta;->setY(I)V

    .line 155
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v4}, Lcom/android/launcher2/PositionDelta;->setSpanX(I)V

    .line 156
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDragDelta:Lcom/android/launcher2/PositionDelta;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/PositionDelta;->setSpanY(I)V

    .line 157
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 158
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->mDeltas:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object v1, p0, Lcom/android/launcher2/CellPositionerWorkspace;->tmpRollback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 160
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
