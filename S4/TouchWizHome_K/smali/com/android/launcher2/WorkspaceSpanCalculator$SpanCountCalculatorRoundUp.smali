.class Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;
.super Ljava/lang/Object;
.source "WorkspaceSpanCalculator.java"

# interfaces
.implements Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WorkspaceSpanCalculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpanCountCalculatorRoundUp"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/WorkspaceSpanCalculator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/WorkspaceSpanCalculator$1;

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanCount(III)I
    .locals 4
    .param p1, "targetSize"    # I
    .param p2, "cellSize"    # I
    .param p3, "cellGap"    # I

    .prologue
    .line 138
    add-int v1, p1, p3

    .line 139
    .local v1, "numerator":I
    add-int v0, p2, p3

    .line 140
    .local v0, "denominator":I
    add-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    div-int v2, v3, v0

    .line 141
    .local v2, "spanCount":I
    const/4 v3, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method
