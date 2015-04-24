.class public Lcom/android/launcher2/PositionDelta;
.super Ljava/lang/Object;
.source "PositionDelta.java"


# instance fields
.field final item:Lcom/android/launcher2/BaseItem;

.field private mChanged:Z

.field private mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

.field private final minSpanX:I

.field private final minSpanY:I

.field private final ospanX:I

.field private final ospanY:I

.field private final ox:I

.field private final oy:I

.field private spanX:I

.field private spanY:I

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 27
    iput-object v2, p0, Lcom/android/launcher2/PositionDelta;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    .line 61
    iput-object v2, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    .line 62
    iput v1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    iput v1, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 63
    iput v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    .line 64
    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    .line 65
    iput v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    .line 66
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "con_x"    # I
    .param p2, "con_y"    # I
    .param p3, "con_spanX"    # I
    .param p4, "con_spanY"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 27
    iput-object v1, p0, Lcom/android/launcher2/PositionDelta;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    .line 85
    iput-object v1, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    .line 86
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iput p1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    .line 87
    iput p2, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iput p2, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 88
    iput p3, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput p3, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    iput p3, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    .line 89
    iput p4, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput p4, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    iput p4, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/BaseItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const/4 v5, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v5, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 27
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/PositionDelta;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    .line 30
    iput-object p1, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    .line 31
    instance-of v4, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v4, :cond_1

    move-object v4, p1

    .line 32
    check-cast v4, Lcom/android/launcher2/HomeItem;

    iget v4, v4, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    move-object v4, p1

    .line 33
    check-cast v4, Lcom/android/launcher2/HomeItem;

    iget v4, v4, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 38
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    .line 39
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    .line 40
    instance-of v4, p1, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v4, :cond_4

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/HomeWidgetItem;

    iget v4, v4, Lcom/android/launcher2/HomeWidgetItem;->resizeMode:I

    if-eqz v4, :cond_4

    move-object v0, p1

    .line 41
    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    .line 42
    .local v0, "hItem":Lcom/android/launcher2/HomeWidgetItem;
    iget v1, v0, Lcom/android/launcher2/HomeWidgetItem;->resizeMode:I

    .line 43
    .local v1, "resizeMode":I
    invoke-virtual {v0}, Lcom/android/launcher2/HomeWidgetItem;->getResizeSpans()[I

    move-result-object v2

    .line 44
    .local v2, "resizeSpan":[I
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_2

    aget v4, v2, v5

    :goto_1
    iput v4, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    .line 45
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    aget v4, v2, v4

    :goto_2
    iput v4, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    .line 51
    .end local v0    # "hItem":Lcom/android/launcher2/HomeWidgetItem;
    .end local v1    # "resizeMode":I
    .end local v2    # "resizeSpan":[I
    :goto_3
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    instance-of v4, p1, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v4, :cond_0

    move-object v3, p1

    .line 53
    check-cast v3, Lcom/android/launcher2/HomeWidgetItem;

    .line 54
    .local v3, "temp":Lcom/android/launcher2/HomeWidgetItem;
    invoke-virtual {v3}, Lcom/android/launcher2/HomeWidgetItem;->getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/PositionDelta;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    .line 58
    .end local v3    # "temp":Lcom/android/launcher2/HomeWidgetItem;
    :cond_0
    return-void

    .line 35
    :cond_1
    iput v5, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iput v5, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    .line 36
    iput v5, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iput v5, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    goto :goto_0

    .line 44
    .restart local v0    # "hItem":Lcom/android/launcher2/HomeWidgetItem;
    .restart local v1    # "resizeMode":I
    .restart local v2    # "resizeSpan":[I
    :cond_2
    iget v4, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    goto :goto_1

    .line 45
    :cond_3
    iget v4, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    goto :goto_2

    .line 47
    .end local v0    # "hItem":Lcom/android/launcher2/HomeWidgetItem;
    .end local v1    # "resizeMode":I
    .end local v2    # "resizeSpan":[I
    :cond_4
    iget v4, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    .line 48
    iget v4, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput v4, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    goto :goto_3
.end method

.method public constructor <init>(Lcom/android/launcher2/PositionDelta;)V
    .locals 1
    .param p1, "p"    # Lcom/android/launcher2/PositionDelta;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PositionDelta;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    .line 69
    iget-object v0, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    iput-object v0, p0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    .line 70
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->x:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    .line 71
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->y:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    .line 72
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->ox:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    .line 73
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->oy:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    .line 74
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->spanX:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    .line 75
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->spanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    .line 76
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->ospanX:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    .line 77
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->ospanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    .line 78
    iget-boolean v0, p1, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 79
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    .line 80
    iget v0, p1, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    iput v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    .line 81
    iget-object v0, p1, Lcom/android/launcher2/PositionDelta;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    iput-object v0, p0, Lcom/android/launcher2/PositionDelta;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    .line 82
    return-void
.end method

.method private updateChanged()V
    .locals 2

    .prologue
    .line 105
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    .line 106
    return-void

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changed()Z
    .locals 1

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    return v0
.end method

.method public differentFrom(Lcom/android/launcher2/PositionDelta;)Z
    .locals 2
    .param p1, "od"    # Lcom/android/launcher2/PositionDelta;

    .prologue
    .line 109
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->spanX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iget v1, p1, Lcom/android/launcher2/PositionDelta;->spanY:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getMinSpanX()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    return v0
.end method

.method getMinSpanY()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    return v0
.end method

.method getSpanX()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    return v0
.end method

.method getSpanY()I
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    return v0
.end method

.method public getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/launcher2/PositionDelta;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    return-object v0
.end method

.method getX()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->x:I

    return v0
.end method

.method getY()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->y:I

    return v0
.end method

.method public hasSupportWidgetSize()Z
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/launcher2/PositionDelta;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PositionDelta;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v0}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 143
    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method overlaps(Lcom/android/launcher2/PositionDelta;)Z
    .locals 6
    .param p1, "otherDelta"    # Lcom/android/launcher2/PositionDelta;

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getX()I

    move-result v2

    .line 94
    .local v2, "x_":I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getY()I

    move-result v3

    .line 95
    .local v3, "y_":I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v0

    .line 96
    .local v0, "spanX_":I
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v1

    .line 98
    .local v1, "spanY_":I
    iget v4, p0, Lcom/android/launcher2/PositionDelta;->x:I

    iget v5, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-lt v4, v2, :cond_0

    iget v4, p0, Lcom/android/launcher2/PositionDelta;->x:I

    add-int v5, v2, v0

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_0

    iget v4, p0, Lcom/android/launcher2/PositionDelta;->y:I

    iget v5, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    if-lt v4, v3, :cond_0

    iget v4, p0, Lcom/android/launcher2/PositionDelta;->y:I

    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    if-le v4, v5, :cond_1

    .line 99
    :cond_0
    const/4 v4, 0x0

    .line 101
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method setSpanX(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 118
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method setSpanY(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method setX(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 116
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->x:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method setY(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/android/launcher2/PositionDelta;->y:I

    invoke-direct {p0}, Lcom/android/launcher2/PositionDelta;->updateChanged()V

    return-void
.end method

.method public shrinkable()Z
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanX:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->minSpanY:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public spanChanged()Z
    .locals 2

    .prologue
    .line 134
    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PositionDelta(changed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/PositionDelta;->mChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ox:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " oy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->oy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ospanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ospanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/PositionDelta;->ospanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
