.class Landroid/text/HtmlToSpannedConverter$Header;
.super Ljava/lang/Object;
.source "Html.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/HtmlToSpannedConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field private mLevel:I


# direct methods
.method public constructor <init>(I)V
    .registers 2
    .param p1, "level"    # I

    .prologue
    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    iput p1, p0, mLevel:I

    .line 848
    return-void
.end method

.method static synthetic access$900(Landroid/text/HtmlToSpannedConverter$Header;)I
    .registers 2
    .param p0, "x0"    # Landroid/text/HtmlToSpannedConverter$Header;

    .prologue
    .line 843
    iget v0, p0, mLevel:I

    return v0
.end method
