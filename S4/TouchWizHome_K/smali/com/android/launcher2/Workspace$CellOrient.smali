.class Lcom/android/launcher2/Workspace$CellOrient;
.super Ljava/lang/Object;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CellOrient"
.end annotation


# instance fields
.field aivTextView:Landroid/content/res/TypedArray;

.field aivView:Landroid/content/res/TypedArray;

.field cellGapX:I

.field cellGapY:I

.field cellHeight:I

.field cellWidth:I

.field fivTextView:Landroid/content/res/TypedArray;

.field fivView:Landroid/content/res/TypedArray;

.field leftMargin:I

.field mivTextView:Landroid/content/res/TypedArray;

.field mivView:Landroid/content/res/TypedArray;

.field rightMargin:I

.field topMargin:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/Workspace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/launcher2/Workspace$1;

    .prologue
    .line 4384
    invoke-direct {p0}, Lcom/android/launcher2/Workspace$CellOrient;-><init>()V

    return-void
.end method
