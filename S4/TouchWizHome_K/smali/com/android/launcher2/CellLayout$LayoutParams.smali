.class public Lcom/android/launcher2/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field public static final HEIGHT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/launcher2/CellLayout$LayoutParams;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isLockedToGrid:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1957
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams$1;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout$LayoutParams$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/CellLayout$LayoutParams;->WIDTH:Landroid/util/Property;

    .line 1962
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams$2;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "height"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout$LayoutParams$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/CellLayout$LayoutParams;->HEIGHT:Landroid/util/Property;

    .line 1967
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams$3;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "x"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout$LayoutParams$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/CellLayout$LayoutParams;->X:Landroid/util/Property;

    .line 1972
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams$4;

    const-class v1, Ljava/lang/Integer;

    const-string v2, "y"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout$LayoutParams$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/CellLayout$LayoutParams;->Y:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I

    .prologue
    const/4 v0, -0x1

    .line 2038
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 2006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2039
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 2040
    iput p2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 2041
    iput p3, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2042
    iput p4, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2043
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x1

    .line 2018
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2006
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2019
    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2020
    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2021
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v0, 0x1

    .line 2024
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2006
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2025
    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2026
    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2027
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher2/CellLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/android/launcher2/CellLayout$LayoutParams;

    .prologue
    .line 2030
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2006
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2031
    iget v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 2032
    iget v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 2033
    iget v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 2034
    iget v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 2035
    return-void
.end method


# virtual methods
.method public containsPt(II)Z
    .locals 3
    .param p1, "argX"    # I
    .param p2, "argY"    # I

    .prologue
    const/4 v0, 0x0

    .line 2061
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v1, :cond_0

    .line 2062
    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    if-lt p2, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v2, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v1, v2

    if-gt p2, v1, :cond_0

    const/4 v0, 0x1

    .line 2064
    :cond_0
    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 2085
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 2077
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 2093
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 2101
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 2081
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 2082
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 2073
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 2074
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 2089
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 2090
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 2097
    iput p1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 2098
    return-void
.end method

.method public setup(IIII)V
    .locals 2
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "gapX"    # I
    .param p4, "gapY"    # I

    .prologue
    .line 2046
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v0, :cond_0

    .line 2047
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int v1, p1, p3

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 2048
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int v1, p2, p4

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 2049
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 2051
    iget v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    mul-int/2addr v0, p2

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, p4

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 2054
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
