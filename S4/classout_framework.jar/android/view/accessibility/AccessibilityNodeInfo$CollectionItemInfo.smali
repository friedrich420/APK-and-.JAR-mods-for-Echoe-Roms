.class public final Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityNodeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CollectionItemInfo"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x14

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mColumnIndex:I

.field private mColumnSpan:I

.field private mHeading:Z

.field private mRowIndex:I

.field private mRowSpan:I

.field private mSelected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 3668
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor <init>(IIIIZZ)V
    .registers 7
    .param p1, "rowIndex"    # I
    .param p2, "rowSpan"    # I
    .param p3, "columnIndex"    # I
    .param p4, "columnSpan"    # I
    .param p5, "heading"    # Z
    .param p6, "selected"    # Z

    .prologue
    .line 3740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3741
    iput p1, p0, mRowIndex:I

    .line 3742
    iput p2, p0, mRowSpan:I

    .line 3743
    iput p3, p0, mColumnIndex:I

    .line 3744
    iput p4, p0, mColumnSpan:I

    .line 3745
    iput-boolean p5, p0, mHeading:Z

    .line 3746
    iput-boolean p6, p0, mSelected:Z

    .line 3747
    return-void
.end method

.method private clear()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 3813
    iput v0, p0, mColumnIndex:I

    .line 3814
    iput v0, p0, mColumnSpan:I

    .line 3815
    iput v0, p0, mRowIndex:I

    .line 3816
    iput v0, p0, mRowSpan:I

    .line 3817
    iput-boolean v0, p0, mHeading:Z

    .line 3818
    iput-boolean v0, p0, mSelected:Z

    .line 3819
    return-void
.end method

.method public static obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 11
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z

    .prologue
    .line 3693
    const/4 v5, 0x0

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 14
    .param p0, "rowIndex"    # I
    .param p1, "rowSpan"    # I
    .param p2, "columnIndex"    # I
    .param p3, "columnSpan"    # I
    .param p4, "heading"    # Z
    .param p5, "selected"    # Z

    .prologue
    .line 3708
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .line 3709
    .local v7, "info":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    if-nez v7, :cond_16

    .line 3710
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, <init>(IIIIZZ)V

    .line 3720
    :goto_15
    return-object v0

    .line 3714
    :cond_16
    iput p0, v7, mRowIndex:I

    .line 3715
    iput p1, v7, mRowSpan:I

    .line 3716
    iput p2, v7, mColumnIndex:I

    .line 3717
    iput p3, v7, mColumnSpan:I

    .line 3718
    iput-boolean p4, v7, mHeading:Z

    .line 3719
    iput-boolean p5, v7, mSelected:Z

    move-object v0, v7

    .line 3720
    goto :goto_15
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    .registers 7
    .param p0, "other"    # Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    .prologue
    .line 3678
    iget v0, p0, mRowIndex:I

    iget v1, p0, mRowSpan:I

    iget v2, p0, mColumnIndex:I

    iget v3, p0, mColumnSpan:I

    iget-boolean v4, p0, mHeading:Z

    iget-boolean v5, p0, mSelected:Z

    invoke-static/range {v0 .. v5}, obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getColumnIndex()I
    .registers 2

    .prologue
    .line 3755
    iget v0, p0, mColumnIndex:I

    return v0
.end method

.method public getColumnSpan()I
    .registers 2

    .prologue
    .line 3773
    iget v0, p0, mColumnSpan:I

    return v0
.end method

.method public getRowIndex()I
    .registers 2

    .prologue
    .line 3764
    iget v0, p0, mRowIndex:I

    return v0
.end method

.method public getRowSpan()I
    .registers 2

    .prologue
    .line 3782
    iget v0, p0, mRowSpan:I

    return v0
.end method

.method public isHeading()Z
    .registers 2

    .prologue
    .line 3792
    iget-boolean v0, p0, mHeading:Z

    return v0
.end method

.method public isSelected()Z
    .registers 2

    .prologue
    .line 3801
    iget-boolean v0, p0, mSelected:Z

    return v0
.end method

.method recycle()V
    .registers 2

    .prologue
    .line 3808
    invoke-direct {p0}, clear()V

    .line 3809
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 3810
    return-void
.end method
