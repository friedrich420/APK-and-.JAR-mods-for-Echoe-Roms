.class final Lcom/android/launcher2/Utilities$1;
.super Ljava/lang/Object;
.source "Utilities.java"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$maxSize:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .prologue
    .line 815
    iput p1, p0, Lcom/android/launcher2/Utilities$1;->val$maxSize:I

    iput-object p2, p0, Lcom/android/launcher2/Utilities$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    const/4 v2, 0x0

    .line 820
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 843
    :cond_0
    :goto_0
    return-object v2

    .line 824
    :cond_1
    iget v3, p0, Lcom/android/launcher2/Utilities$1;->val$maxSize:I

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v4

    sub-int v5, p6, p5

    sub-int/2addr v4, v5

    sub-int v1, v3, v4

    .line 826
    .local v1, "keep":I
    if-gtz v1, :cond_2

    .line 827
    iget-object v2, p0, Lcom/android/launcher2/Utilities$1;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/android/launcher2/Utilities$1;->val$maxSize:I

    invoke-static {v2, v3}, Lcom/android/launcher2/Utilities;->showToast(Landroid/content/Context;I)V

    .line 828
    const-string v2, ""

    goto :goto_0

    .line 830
    :cond_2
    const/4 v3, 0x1

    if-ne v1, v3, :cond_3

    sub-int v3, p3, p2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 831
    const-string v2, ""

    goto :goto_0

    .line 832
    :cond_3
    sub-int v3, p3, p2

    if-ge v1, v3, :cond_0

    .line 834
    sub-int v3, p3, p2

    if-ge v1, v3, :cond_0

    .line 836
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/Utilities$1;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/android/launcher2/Utilities$1;->val$maxSize:I

    invoke-static {v2, v3}, Lcom/android/launcher2/Utilities;->showToast(Landroid/content/Context;I)V

    .line 837
    add-int v2, p2, v1

    invoke-interface {p1, p2, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 838
    :catch_0
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v2, ""

    goto :goto_0
.end method
