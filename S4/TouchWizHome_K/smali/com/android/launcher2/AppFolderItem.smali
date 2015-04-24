.class public Lcom/android/launcher2/AppFolderItem;
.super Lcom/android/launcher2/AppItem;
.source "AppFolderItem.java"

# interfaces
.implements Lcom/android/launcher2/FolderItem;


# instance fields
.field private listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeFolderItem$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mHiddenAddButton:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOpened:Z

.field private mRedrawIcons:Z

.field private mSavedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppItem;-><init>(Lcom/android/launcher2/BaseItem$Type;Landroid/content/ComponentName;Z)V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    .line 36
    iput-boolean v2, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    .line 39
    iput-boolean v2, p0, Lcom/android/launcher2/AppFolderItem;->mRedrawIcons:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/launcher2/AppFolderItem;->mHiddenAddButton:Z

    .line 45
    return-void
.end method

.method private adjustPositions(III)V
    .locals 3
    .param p1, "minPos"    # I
    .param p2, "maxPos"    # I
    .param p3, "adjustValue"    # I

    .prologue
    .line 139
    if-gt p1, p2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 141
    .local v1, "item":Lcom/android/launcher2/AppItem;
    iget v2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-lt v2, p1, :cond_0

    iget v2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-gt v2, p2, :cond_0

    .line 142
    iget v2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/2addr v2, p3

    iput v2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    goto :goto_0

    .line 145
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    return-void
.end method

.method private freeEditResources()V
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    .line 258
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/AppFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    .line 61
    return-void
.end method

.method public addItemAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 7
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "position"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AppFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Can only add MENU_APPs to MENU_FOLDERs"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v1, p1

    .line 84
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 85
    .local v1, "appItem":Lcom/android/launcher2/AppItem;
    iget-object v5, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 86
    .local v4, "size":I
    if-ltz p2, :cond_1

    if-le p2, v4, :cond_2

    .line 87
    :cond_1
    move p2, v4

    .line 89
    :cond_2
    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-ne v5, p0, :cond_5

    .line 91
    iget v5, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-eq v5, p2, :cond_3

    .line 92
    iget v5, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    if-ge v5, p2, :cond_4

    .line 93
    iget v5, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v3, v5, 0x1

    .line 94
    .local v3, "minAdjustPos":I
    add-int/lit8 v2, p2, -0x1

    .line 95
    .local v2, "maxAdjustPos":I
    const/4 v0, -0x1

    .line 96
    .local v0, "adjustDelta":I
    add-int/lit8 p2, p2, -0x1

    .line 102
    :goto_0
    invoke-direct {p0, v3, v2, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    .line 103
    iput p2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 122
    .end local v0    # "adjustDelta":I
    .end local v2    # "maxAdjustPos":I
    .end local v3    # "minAdjustPos":I
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->sort()V

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    .line 124
    return-void

    .line 98
    :cond_4
    move v3, p2

    .line 99
    .restart local v3    # "minAdjustPos":I
    iget v5, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v2, v5, -0x1

    .line 100
    .restart local v2    # "maxAdjustPos":I
    const/4 v0, 0x1

    .restart local v0    # "adjustDelta":I
    goto :goto_0

    .line 107
    .end local v0    # "adjustDelta":I
    .end local v2    # "maxAdjustPos":I
    .end local v3    # "minAdjustPos":I
    :cond_5
    add-int/lit8 v2, v4, -0x1

    .line 108
    .restart local v2    # "maxAdjustPos":I
    move v3, p2

    .line 109
    .restart local v3    # "minAdjustPos":I
    const/4 v0, 0x1

    .line 111
    .restart local v0    # "adjustDelta":I
    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v5, :cond_6

    .line 112
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v5}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 116
    :goto_2
    invoke-direct {p0, v3, v2, v0}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    .line 117
    iput p2, v1, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 118
    const/4 v5, -0x1

    iput v5, v1, Lcom/android/launcher2/AppItem;->mCell:I

    .line 119
    iput-object p0, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 120
    iget-object v5, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v5, p2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 114
    :cond_6
    iget-object v5, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {v5, p1}, Lcom/android/launcher2/AppFolderItem;->removeItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_2
.end method

.method public addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher2/HomeFolderItem$FolderListener;

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    return-void
.end method

.method public childDestroyed(Lcom/android/launcher2/AppItem;)V
    .locals 1
    .param p1, "child"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 193
    :cond_0
    return-void
.end method

.method public contains(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsNonSystemApps()Z
    .locals 3

    .prologue
    .line 202
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 203
    .local v1, "item":Lcom/android/launcher2/AppItem;
    iget-boolean v2, v1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 205
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->destroy()V

    .line 215
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 216
    .local v1, "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AppItem;->parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V

    goto :goto_0

    .line 218
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 219
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 220
    .restart local v1    # "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v1, p0}, Lcom/android/launcher2/AppItem;->parentDestroyed(Lcom/android/launcher2/AppFolderItem;)V

    goto :goto_1

    .line 222
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_1
    iput-object v3, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    .line 223
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    .line 224
    iput-object v3, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    .line 225
    return-void
.end method

.method public editBegin()V
    .locals 2

    .prologue
    .line 229
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editBegin()V

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    .line 232
    return-void
.end method

.method public editCommit()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editCommit()V

    .line 237
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    .line 238
    return-void
.end method

.method public editDestroy()V
    .locals 3

    .prologue
    .line 241
    iget-object v2, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 242
    .local v1, "item":Lcom/android/launcher2/AppItem;
    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->editParentDestroyed()V

    goto :goto_0

    .line 243
    .end local v1    # "item":Lcom/android/launcher2/AppItem;
    :cond_0
    return-void
.end method

.method public editRevert()V
    .locals 1

    .prologue
    .line 247
    invoke-super {p0}, Lcom/android/launcher2/AppItem;->editRevert()V

    .line 248
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mSavedItems:Ljava/util/List;

    iput-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    .line 250
    invoke-direct {p0}, Lcom/android/launcher2/AppFolderItem;->freeEditResources()V

    .line 251
    return-void
.end method

.method public getAllItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 360
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getFolderColor()I
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/android/launcher2/AppFolderItem;->mColor:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 339
    iget-wide v0, p0, Lcom/android/launcher2/AppFolderItem;->mId:J

    return-wide v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 158
    .local v0, "item":Lcom/android/launcher2/BaseItem;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/android/launcher2/BaseItem;
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 161
    .restart local v0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 308
    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    return v0
.end method

.method public isHiddenAddButton()Z
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mHiddenAddButton:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    return v0
.end method

.method public isRequiredToRedraw()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/android/launcher2/AppFolderItem;->mRedrawIcons:Z

    return v0
.end method

.method public isValidItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 182
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method itemsChanged()V
    .locals 2

    .prologue
    .line 348
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AppFolderItem;->setToRedrawIcons(Z)V

    .line 349
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onItemsChanged()V

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 352
    :cond_0
    return-void
.end method

.method loadItem(Lcom/android/launcher2/AppItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/AppItem;

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    iput-object p0, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 268
    return-void
.end method

.method public normalize(Lcom/android/launcher2/MenuAppModel$Normalizer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, "normalizer":Lcom/android/launcher2/MenuAppModel$Normalizer;, "Lcom/android/launcher2/MenuAppModel$Normalizer<Lcom/android/launcher2/AppItem;>;"
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    .line 276
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)V
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const/4 v2, -0x1

    .line 287
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 288
    check-cast v0, Lcom/android/launcher2/AppItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    .line 289
    iget v0, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v1, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher2/AppFolderItem;->adjustPositions(III)V

    .line 290
    iput v2, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 291
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 292
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f1000c7

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher2/AppFolderItem;->itemsChanged()V

    .line 295
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher2/HomeFolderItem$FolderListener;

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 335
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mEnabled:Z

    .line 314
    return-void
.end method

.method public setFolderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 370
    iput p1, p0, Lcom/android/launcher2/AppFolderItem;->mColor:I

    .line 371
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppModel;->changeFolderColor(Lcom/android/launcher2/AppFolderItem;)V

    .line 372
    return-void
.end method

.method public setHiddenAddButton(Z)V
    .locals 0
    .param p1, "isHiddenAddButton"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mHiddenAddButton:Z

    .line 386
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mOpened:Z

    .line 323
    return-void
.end method

.method public setTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 299
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 301
    :cond_1
    iput-object p2, p0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    .line 302
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/MenuAppModel;->changeFolderName(Lcom/android/launcher2/AppFolderItem;)V

    .line 304
    :cond_2
    return-void
.end method

.method public setToRedrawIcons(Z)V
    .locals 0
    .param p1, "isRequiredToRedraw"    # Z

    .prologue
    .line 381
    iput-boolean p1, p0, Lcom/android/launcher2/AppFolderItem;->mRedrawIcons:Z

    .line 382
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/launcher2/AppFolderItem;->mItems:Ljava/util/List;

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppModel;->getCurrentComparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    return-void
.end method
