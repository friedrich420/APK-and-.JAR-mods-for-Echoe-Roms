.class public Landroid/widget/Toolbar$LayoutParams;
.super Landroid/app/ActionBar$LayoutParams;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# static fields
.field static final CUSTOM:I = 0x0

.field static final EXPANDED:I = 0x2

.field static final SYSTEM:I = 0x1


# instance fields
.field mViewType:I


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .param p1, "gravity"    # I

    .prologue
    .line 1837
    const/4 v0, -0x2

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, <init>(III)V

    .line 1838
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1827
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, mViewType:I

    .line 1828
    const v0, 0x800013

    iput v0, p0, gravity:I

    .line 1829
    return-void
.end method

.method public constructor <init>(III)V
    .registers 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 1832
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, mViewType:I

    .line 1833
    iput p3, p0, gravity:I

    .line 1834
    return-void
.end method

.method public constructor <init>(Landroid/app/ActionBar$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 1847
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, mViewType:I

    .line 1848
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1823
    invoke-direct {p0, p1, p2}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, mViewType:I

    .line 1824
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1858
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, mViewType:I

    .line 1859
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 1851
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, mViewType:I

    .line 1854
    invoke-virtual {p0, p1}, copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 1855
    return-void
.end method

.method public constructor <init>(Landroid/widget/Toolbar$LayoutParams;)V
    .registers 3
    .param p1, "source"    # Landroid/widget/Toolbar$LayoutParams;

    .prologue
    .line 1841
    invoke-direct {p0, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    .line 1820
    const/4 v0, 0x0

    iput v0, p0, mViewType:I

    .line 1843
    iget v0, p1, mViewType:I

    iput v0, p0, mViewType:I

    .line 1844
    return-void
.end method
