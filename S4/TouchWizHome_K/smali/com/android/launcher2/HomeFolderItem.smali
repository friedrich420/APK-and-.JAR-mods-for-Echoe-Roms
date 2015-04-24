.class Lcom/android/launcher2/HomeFolderItem;
.super Lcom/android/launcher2/HomeItem;
.source "HomeFolderItem.java"

# interfaces
.implements Lcom/android/launcher2/FolderItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeFolderItem$FolderListener;
    }
.end annotation


# static fields
.field public static final IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
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

.field private mOpened:Z

.field private mRedrawIcons:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 366
    new-instance v0, Lcom/android/launcher2/HomeFolderItem$1;

    invoke-direct {v0}, Lcom/android/launcher2/HomeFolderItem$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/HomeFolderItem;->IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mHiddenAddButton:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    .line 56
    return-void
.end method

.method private adjustPositions(III)V
    .locals 3
    .param p1, "minPos"    # I
    .param p2, "maxPos"    # I
    .param p3, "adjustValue"    # I

    .prologue
    .line 189
    if-gt p1, p2, :cond_1

    .line 190
    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 191
    .local v1, "item":Lcom/android/launcher2/HomeItem;
    iget v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-lt v2, p1, :cond_0

    iget v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-gt v2, p2, :cond_0

    .line 192
    iget v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    add-int/2addr v2, p3

    iput v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    goto :goto_0

    .line 195
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method

.method static createFromAppFolderItem(Landroid/content/Context;Lcom/android/launcher2/AppFolderItem;JIII)Lcom/android/launcher2/HomeFolderItem;
    .locals 18
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "appFolderItem"    # Lcom/android/launcher2/AppFolderItem;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "cellX"    # I
    .param p6, "cellY"    # I

    .prologue
    .line 61
    new-instance v3, Lcom/android/launcher2/HomeFolderItem;

    invoke-direct {v3}, Lcom/android/launcher2/HomeFolderItem;-><init>()V

    .line 62
    .local v3, "item":Lcom/android/launcher2/HomeFolderItem;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher2/AppFolderItem;->mSecretItem:Z

    iput-boolean v2, v3, Lcom/android/launcher2/HomeFolderItem;->mSecretItem:Z

    .line 63
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    iput-object v2, v3, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    .line 64
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher2/AppFolderItem;->mColor:I

    iput v2, v3, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    .line 65
    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v9}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/LauncherApplication;

    .line 69
    .local v10, "app":Lcom/android/launcher2/LauncherApplication;
    const/4 v12, 0x0

    .line 70
    .local v12, "badgeSum":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v14

    .line 71
    .local v14, "itemCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v14, :cond_1

    .line 72
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/AppItem;

    .line 74
    .local v11, "appItem":Lcom/android/launcher2/AppItem;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    new-instance v16, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct/range {v16 .. v16}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 76
    .local v16, "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget v2, v11, Lcom/android/launcher2/AppItem;->mIconResId:I

    move-object/from16 v0, v16

    iput v2, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 77
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    iget-object v4, v11, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    .line 80
    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v15

    .line 81
    .local v15, "shortcut":Lcom/android/launcher2/HomeShortcutItem;
    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v15, v2}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 86
    .end local v16    # "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :goto_1
    iget-wide v4, v3, Lcom/android/launcher2/HomeFolderItem;->mId:J

    iput-wide v4, v15, Lcom/android/launcher2/HomeShortcutItem;->container:J

    .line 87
    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherProvider;->generateNewHomeId()J

    move-result-wide v4

    iput-wide v4, v15, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    .line 88
    invoke-virtual {v3, v15}, Lcom/android/launcher2/HomeFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 89
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/launcher2/LauncherModel;->addItemToItemList(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 91
    iget v2, v11, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    add-int/2addr v12, v2

    .line 71
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 83
    .end local v15    # "shortcut":Lcom/android/launcher2/HomeShortcutItem;
    :cond_0
    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v15

    .restart local v15    # "shortcut":Lcom/android/launcher2/HomeShortcutItem;
    goto :goto_1

    .line 93
    .end local v11    # "appItem":Lcom/android/launcher2/AppItem;
    .end local v15    # "shortcut":Lcom/android/launcher2/HomeShortcutItem;
    :cond_1
    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v2

    iget-wide v4, v3, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/launcher2/LauncherProvider;->addHomeFolderItems(JLcom/android/launcher2/HomeFolderItem;)V

    .line 95
    iput v12, v3, Lcom/android/launcher2/HomeFolderItem;->mBadgeCount:I

    .line 96
    return-object v3
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 112
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/HomeFolderItem;->addItemAt(Lcom/android/launcher2/BaseItem;I)V

    .line 113
    return-void
.end method

.method public addItemAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 11
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "position"    # I

    .prologue
    const/4 v10, -0x1

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/launcher2/HomeFolderItem;->isValidItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 132
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can only add HOME_APPLICATIONs or HOME_SHORTCUTs to HOME_FOLDERs. Tried to add "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v1, p1

    .line 136
    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 137
    .local v1, "homeItem":Lcom/android/launcher2/HomeItem;
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 138
    .local v5, "size":I
    if-ltz p2, :cond_1

    if-le p2, v5, :cond_2

    .line 139
    :cond_1
    move p2, v5

    .line 141
    :cond_2
    iget-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    iget-wide v8, p0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 143
    iget v6, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-eq v6, p2, :cond_3

    .line 144
    iget v6, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-ge v6, p2, :cond_4

    .line 145
    iget v6, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    add-int/lit8 v4, v6, 0x1

    .line 146
    .local v4, "minAdjustPos":I
    add-int/lit8 v3, p2, -0x1

    .line 147
    .local v3, "maxAdjustPos":I
    const/4 v0, -0x1

    .line 148
    .local v0, "adjustDelta":I
    add-int/lit8 p2, p2, -0x1

    .line 154
    :goto_0
    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    .line 155
    iput p2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 174
    .end local v0    # "adjustDelta":I
    .end local v3    # "maxAdjustPos":I
    .end local v4    # "minAdjustPos":I
    :cond_3
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    .line 175
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v6, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onAdd(Lcom/android/launcher2/BaseItem;)V

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 150
    .end local v2    # "i":I
    :cond_4
    move v4, p2

    .line 151
    .restart local v4    # "minAdjustPos":I
    iget v6, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    add-int/lit8 v3, v6, -0x1

    .line 152
    .restart local v3    # "maxAdjustPos":I
    const/4 v0, 0x1

    .restart local v0    # "adjustDelta":I
    goto :goto_0

    .line 159
    .end local v0    # "adjustDelta":I
    .end local v3    # "maxAdjustPos":I
    .end local v4    # "minAdjustPos":I
    :cond_5
    add-int/lit8 v3, v5, -0x1

    .line 160
    .restart local v3    # "maxAdjustPos":I
    move v4, p2

    .line 161
    .restart local v4    # "minAdjustPos":I
    const/4 v0, 0x1

    .line 167
    .restart local v0    # "adjustDelta":I
    invoke-direct {p0, v4, v3, v0}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    .line 168
    iput v10, v1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 169
    iput v10, v1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 170
    iget-wide v6, p0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    iput-wide v6, v1, Lcom/android/launcher2/HomeItem;->container:J

    .line 171
    iput p2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 172
    iget-object v6, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, p2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 177
    .end local v0    # "adjustDelta":I
    .end local v3    # "maxAdjustPos":I
    .end local v4    # "minAdjustPos":I
    .restart local v2    # "i":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->sort()V

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    .line 179
    return-void
.end method

.method public addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher2/HomeFolderItem$FolderListener;

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method public contains(Lcom/android/launcher2/BaseItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getContainer()J
    .locals 2

    .prologue
    .line 391
    iget-wide v0, p0, Lcom/android/launcher2/HomeFolderItem;->container:J

    return-wide v0
.end method

.method public getFolderColor()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 376
    iget-wide v0, p0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    return-wide v0
.end method

.method public getItemAt(I)Lcom/android/launcher2/BaseItem;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, "item":Lcom/android/launcher2/BaseItem;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "item":Lcom/android/launcher2/BaseItem;
    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 211
    .restart local v0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_0
    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mEnabled:Z

    return v0
.end method

.method public isHiddenAddButton()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mHiddenAddButton:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mOpened:Z

    return v0
.end method

.method public isRequiredToRedraw()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lcom/android/launcher2/HomeFolderItem;->mRedrawIcons:Z

    return v0
.end method

.method public isValidItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 232
    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method itemsChanged()V
    .locals 2

    .prologue
    .line 290
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onItemsChanged()V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return-void
.end method

.method loadItem(Lcom/android/launcher2/HomeItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    return-void
.end method

.method public normalize(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    .local p1, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->sort()V

    .line 314
    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 315
    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    .line 316
    .local v1, "item":Lcom/android/launcher2/HomeItem;
    iget v2, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-eq v2, v0, :cond_0

    .line 317
    iput v0, v1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 318
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 321
    .end local v1    # "item":Lcom/android/launcher2/HomeItem;
    :cond_1
    return-void
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 265
    invoke-super {p0, p1}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 266
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "title"

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_0
    iget v0, p0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 269
    const-string v0, "color"

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 270
    :cond_1
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)V
    .locals 4
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 243
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 246
    iget v1, p1, Lcom/android/launcher2/BaseItem;->mScreen:I

    iget-object v2, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher2/HomeFolderItem;->adjustPositions(III)V

    .line 247
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1, p1}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onRemove(Lcom/android/launcher2/BaseItem;)V

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_0
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v2, 0x7f1000c7

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher2/HomeFolderItem;->itemsChanged()V

    .line 252
    return-void
.end method

.method public removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/launcher2/HomeFolderItem$FolderListener;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 336
    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mEnabled:Z

    .line 337
    return-void
.end method

.method public setFolderColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 401
    iput p1, p0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    .line 403
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-static {v0, p0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 404
    return-void
.end method

.method public setHiddenAddButton(Z)V
    .locals 0
    .param p1, "isHiddenAddButton"    # Z

    .prologue
    .line 419
    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mHiddenAddButton:Z

    .line 420
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mOpened:Z

    .line 346
    return-void
.end method

.method public setTitle(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 256
    iput-object p2, p0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/HomeFolderItem$FolderListener;

    invoke-interface {v1, p2}, Lcom/android/launcher2/HomeFolderItem$FolderListener;->onTitleChanged(Ljava/lang/String;)V

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    invoke-static {p1, p0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 261
    return-void
.end method

.method public setToRedrawIcons(Z)V
    .locals 0
    .param p1, "isRequiredToRedraw"    # Z

    .prologue
    .line 415
    iput-boolean p1, p0, Lcom/android/launcher2/HomeFolderItem;->mRedrawIcons:Z

    .line 416
    return-void
.end method

.method public sort()V
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->contents:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/HomeFolderItem;->IN_FOLDER_POSITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 287
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeFolderItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher2/HomeFolderItem;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 326
    iget-object v0, p0, Lcom/android/launcher2/HomeFolderItem;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 327
    return-void
.end method
