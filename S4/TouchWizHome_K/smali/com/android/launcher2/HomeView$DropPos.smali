.class public Lcom/android/launcher2/HomeView$DropPos;
.super Ljava/lang/Object;
.source "HomeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DropPos"
.end annotation


# instance fields
.field mCellX:I

.field mCellY:I

.field mFoundInCurrentScreen:Z

.field mScreen:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeView$DropPos;->mFoundInCurrentScreen:Z

    .line 4705
    return-void
.end method


# virtual methods
.method public assign(Lcom/android/launcher2/CellLayout;III)V
    .locals 0
    .param p1, "target"    # Lcom/android/launcher2/CellLayout;
    .param p2, "screen"    # I
    .param p3, "cellx"    # I
    .param p4, "celly"    # I

    .prologue
    .line 4708
    iput p2, p0, Lcom/android/launcher2/HomeView$DropPos;->mScreen:I

    .line 4709
    iput p3, p0, Lcom/android/launcher2/HomeView$DropPos;->mCellX:I

    .line 4710
    iput p4, p0, Lcom/android/launcher2/HomeView$DropPos;->mCellY:I

    .line 4711
    return-void
.end method
