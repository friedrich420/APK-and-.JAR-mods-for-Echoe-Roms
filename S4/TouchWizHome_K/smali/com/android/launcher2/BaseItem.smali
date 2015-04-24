.class public abstract Lcom/android/launcher2/BaseItem;
.super Ljava/lang/Object;
.source "BaseItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/BaseItem$Type;
    }
.end annotation


# static fields
.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public mBadgeCount:I

.field public mColor:I

.field public mDirty:Z

.field public mIconBitmap:Landroid/graphics/Bitmap;

.field public mIconMovie:Landroid/graphics/Movie;

.field public mIconResId:I

.field public mIconShadowBitmap:Landroid/graphics/Bitmap;

.field public mId:J

.field public mScreen:I

.field public mSecretItem:Z

.field public mSetFromDND:Z

.field public mTitle:Ljava/lang/String;

.field public mTitleResId:I

.field public final mType:Lcom/android/launcher2/BaseItem$Type;

.field public viewForThisHasSeenLightOfDayBefore:Z


# direct methods
.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 4
    .param p1, "type"    # Lcom/android/launcher2/BaseItem$Type;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/BaseItem;->mId:J

    .line 69
    iput-boolean v2, p0, Lcom/android/launcher2/BaseItem;->mDirty:Z

    .line 74
    iput-boolean v2, p0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    .line 80
    iput-boolean v2, p0, Lcom/android/launcher2/BaseItem;->mSetFromDND:Z

    .line 91
    iput v3, p0, Lcom/android/launcher2/BaseItem;->mColor:I

    .line 98
    iput v3, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    .line 113
    iput-object p1, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    .line 114
    return-void
.end method

.method public static getContainingFolderId(Lcom/android/launcher2/BaseItem;)J
    .locals 4
    .param p0, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 213
    instance-of v2, p0, Lcom/android/launcher2/AppItem;

    if-eqz v2, :cond_1

    move-object v2, p0

    check-cast v2, Lcom/android/launcher2/AppItem;

    iget-object v2, v2, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_1

    .line 214
    check-cast p0, Lcom/android/launcher2/AppItem;

    .end local p0    # "item":Lcom/android/launcher2/BaseItem;
    iget-object v2, p0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v0, v2, Lcom/android/launcher2/AppFolderItem;->mId:J

    .line 220
    .local v0, "id":J
    :cond_0
    :goto_0
    return-wide v0

    .line 215
    .end local v0    # "id":J
    .restart local p0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_1
    instance-of v2, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_2

    .line 216
    check-cast p0, Lcom/android/launcher2/HomeItem;

    .end local p0    # "item":Lcom/android/launcher2/BaseItem;
    iget-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    .line 217
    .restart local v0    # "id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 220
    .end local v0    # "id":J
    .restart local p0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public static isFolder(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .param p0, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isItemInFolder(Lcom/android/launcher2/BaseItem;)Z
    .locals 8
    .param p0, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const/4 v2, 0x1

    .line 197
    instance-of v1, p0, Lcom/android/launcher2/AppItem;

    if-eqz v1, :cond_0

    move-object v1, p0

    check-cast v1, Lcom/android/launcher2/AppItem;

    iget-object v1, v1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    move v1, v2

    .line 209
    :goto_0
    return v1

    .line 199
    :cond_0
    instance-of v1, p0, Lcom/android/launcher2/HomeItem;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 200
    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 202
    .local v0, "homeItem":Lcom/android/launcher2/HomeItem;
    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x64

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    move v1, v2

    .line 205
    goto :goto_0

    .line 209
    .end local v0    # "homeItem":Lcom/android/launcher2/HomeItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isWidget(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .param p0, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public getFromDND()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSetFromDND:Z

    return v0
.end method

.method public final getItemType()Lcom/android/launcher2/BaseItem$Type;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    return-object v0
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    return v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public setFromDND(Z)Z
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/launcher2/BaseItem;->mSetFromDND:Z

    .line 167
    .local v0, "oldState":Z
    iput-boolean p1, p0, Lcom/android/launcher2/BaseItem;->mSetFromDND:Z

    .line 169
    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/android/launcher2/BaseItem;->mScreen:I

    .line 162
    return-void
.end method

.method public unbind()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method
