.class public Lcom/android/launcher2/CellPositionerNoGap;
.super Ljava/lang/Object;
.source "CellPositionerNoGap.java"

# interfaces
.implements Lcom/android/launcher2/CellPositioner;


# instance fields
.field private final mLayout:Lcom/android/launcher2/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/launcher2/CellPositionerNoGap;->mLayout:Lcom/android/launcher2/CellLayout;

    .line 30
    return-void
.end method


# virtual methods
.method public addDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher2/PositionDelta;

    .prologue
    .line 67
    return-void
.end method

.method public deltaAt(IIII)Lcom/android/launcher2/PositionDelta;
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "spanx"    # I
    .param p4, "spany"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public findNearestVacantArea(IIII[I)[I
    .locals 1
    .param p1, "cell_x"    # I
    .param p2, "cell_y"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .prologue
    .line 56
    if-eqz p5, :cond_0

    .line 57
    :goto_0
    const/4 v0, 0x0

    aput p1, p5, v0

    .line 58
    const/4 v0, 0x1

    aput p2, p5, v0

    .line 59
    return-object p5

    .line 56
    :cond_0
    const/4 v0, 0x2

    new-array p5, v0, [I

    goto :goto_0
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
    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 0
    .param p1, "d"    # Lcom/android/launcher2/PositionDelta;

    .prologue
    .line 72
    return-void
.end method

.method public reset(Z)V
    .locals 0
    .param p1, "resetDrag"    # Z

    .prologue
    .line 51
    return-void
.end method

.method public resetDragDelta()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public updateDeltasForDrag(Lcom/android/launcher2/PositionDelta;Lcom/android/launcher2/WidgetSizes;IIZZZ)Z
    .locals 1
    .param p1, "dragDelta"    # Lcom/android/launcher2/PositionDelta;
    .param p2, "widgetSizes"    # Lcom/android/launcher2/WidgetSizes;
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "shrinkingEnabled"    # Z
    .param p6, "allowDragDeltaReposition"    # Z
    .param p7, "ignoreOccupied"    # Z

    .prologue
    .line 36
    const/4 v0, 0x1

    return v0
.end method
