.class final Lcom/android/launcher2/MenuAppModel$4;
.super Ljava/lang/Object;
.source "MenuAppModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/MenuAppModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I
    .locals 6
    .param p1, "a"    # Lcom/android/launcher2/AppItem;
    .param p2, "b"    # Lcom/android/launcher2/AppItem;

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1432
    const/4 v0, 0x0

    .line 1433
    .local v0, "ret":I
    if-nez v0, :cond_2

    .line 1435
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1436
    # getter for: Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$200()Ljava/text/Collator;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1442
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 1444
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    iget-object v3, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    .line 1445
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    .line 1451
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 1455
    iget-wide v2, p1, Lcom/android/launcher2/AppItem;->mId:J

    iget-wide v4, p2, Lcom/android/launcher2/AppItem;->mId:J

    # invokes: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    .line 1459
    :cond_2
    return v0

    .line 1438
    :cond_3
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eq v3, v4, :cond_0

    .line 1440
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_4

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_2

    .line 1447
    :cond_5
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eq v3, v4, :cond_1

    .line 1449
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_6

    move v0, v1

    :goto_3
    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1429
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/launcher2/AppItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppModel$4;->compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I

    move-result v0

    return v0
.end method
