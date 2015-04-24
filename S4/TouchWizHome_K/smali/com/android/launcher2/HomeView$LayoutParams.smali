.class public Lcom/android/launcher2/HomeView$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 5096
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5090
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    .line 5097
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 5112
    iget v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 5104
    iget v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 5120
    iget v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 5128
    iget v0, p0, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 5108
    iput p1, p0, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    .line 5109
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 5100
    iput p1, p0, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    .line 5101
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 5116
    iput p1, p0, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    .line 5117
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 5124
    iput p1, p0, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    .line 5125
    return-void
.end method
