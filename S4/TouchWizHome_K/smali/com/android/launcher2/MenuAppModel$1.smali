.class final Lcom/android/launcher2/MenuAppModel$1;
.super Ljava/lang/Object;
.source "MenuAppModel.java"

# interfaces
.implements Lcom/android/launcher2/MenuAppModel$Normalizer;


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
        "Lcom/android/launcher2/MenuAppModel$Normalizer",
        "<",
        "Lcom/android/launcher2/AppItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I
    .locals 8
    .param p1, "a"    # Lcom/android/launcher2/AppItem;
    .param p2, "b"    # Lcom/android/launcher2/AppItem;

    .prologue
    const/4 v1, 0x1

    const/4 v2, -0x1

    .line 1201
    const/4 v0, 0x0

    .line 1202
    .local v0, "ret":I
    iget v3, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-eq v3, v2, :cond_4

    iget v3, p2, Lcom/android/launcher2/AppItem;->mScreen:I

    if-eq v3, v2, :cond_4

    .line 1204
    iget v3, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    iget v4, p2, Lcom/android/launcher2/AppItem;->mScreen:I

    # invokes: Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I
    invoke-static {v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$000(II)I

    move-result v0

    .line 1205
    if-nez v0, :cond_0

    .line 1206
    iget v3, p1, Lcom/android/launcher2/AppItem;->mCell:I

    iget v4, p2, Lcom/android/launcher2/AppItem;->mCell:I

    # invokes: Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I
    invoke-static {v3, v4}, Lcom/android/launcher2/MenuAppModel;->access$000(II)I

    move-result v0

    .line 1219
    :cond_0
    :goto_0
    if-nez v0, :cond_3

    .line 1221
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 1222
    # getter for: Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;
    invoke-static {}, Lcom/android/launcher2/MenuAppModel;->access$200()Ljava/text/Collator;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1228
    :cond_1
    :goto_1
    if-nez v0, :cond_3

    .line 1230
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_9

    iget-object v3, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_9

    .line 1231
    iget-object v1, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v2, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v0

    .line 1237
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    .line 1241
    iget-wide v2, p1, Lcom/android/launcher2/AppItem;->mId:J

    iget-wide v4, p2, Lcom/android/launcher2/AppItem;->mId:J

    # invokes: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v2, v3, v4, v5}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    .line 1245
    :cond_3
    return v0

    .line 1209
    :cond_4
    iget v3, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    iget v4, p2, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ne v3, v4, :cond_5

    .line 1212
    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mCreateTime:J

    iget-wide v6, p2, Lcom/android/launcher2/AppItem;->mCreateTime:J

    # invokes: Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I
    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher2/MenuAppModel;->access$100(JJ)I

    move-result v0

    goto :goto_0

    .line 1217
    :cond_5
    iget v3, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ne v3, v2, :cond_6

    move v0, v1

    :goto_3
    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_3

    .line 1224
    :cond_7
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eq v3, v4, :cond_1

    .line 1226
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-nez v3, :cond_8

    move v0, v2

    :goto_4
    goto :goto_1

    :cond_8
    move v0, v1

    goto :goto_4

    .line 1233
    :cond_9
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p2, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eq v3, v4, :cond_2

    .line 1235
    iget-object v3, p1, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v3, :cond_a

    move v0, v2

    :goto_5
    goto :goto_2

    :cond_a
    move v0, v1

    goto :goto_5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1198
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/launcher2/AppItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/MenuAppModel$1;->compare(Lcom/android/launcher2/AppItem;Lcom/android/launcher2/AppItem;)I

    move-result v0

    return v0
.end method

.method public normalize(Ljava/util/List;IZ)V
    .locals 7
    .param p2, "maxItemsPerScreen"    # I
    .param p3, "keepEmptyPages"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AppItem;>;"
    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1253
    const/4 v5, 0x0

    .line 1254
    .local v5, "targetScreen":I
    const/4 v4, 0x0

    .line 1255
    .local v4, "targetCell":I
    const/4 v2, 0x0

    .line 1301
    .local v2, "priorScreen":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 1304
    .local v1, "item":Lcom/android/launcher2/AppItem;
    iget-boolean v6, v1, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    if-nez v6, :cond_0

    .line 1307
    iget v3, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 1309
    .local v3, "screen":I
    if-eq v3, v2, :cond_3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3

    .line 1310
    if-eqz p3, :cond_1

    .line 1312
    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    .line 1314
    :cond_1
    if-eqz v4, :cond_2

    .line 1317
    add-int/lit8 v5, v5, 0x1

    .line 1318
    const/4 v4, 0x0

    .line 1320
    :cond_2
    move v2, v3

    .line 1322
    :cond_3
    if-ne v3, v5, :cond_4

    iget v6, v1, Lcom/android/launcher2/AppItem;->mCell:I

    if-eq v6, v4, :cond_5

    .line 1323
    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/launcher2/AppItem;->mDirty:Z

    .line 1324
    iput v5, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 1325
    iput v4, v1, Lcom/android/launcher2/AppItem;->mCell:I

    .line 1327
    :cond_5
    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_0

    .line 1328
    add-int/lit8 v5, v5, 0x1

    .line 1329
    const/4 v4, 0x0

    goto :goto_0

    .line 1332
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    .end local v3    # "screen":I
    :cond_6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1336
    const-string v0, "MenuAppModel.MENU_CUSTOM_NORMALIZER"

    return-object v0
.end method
