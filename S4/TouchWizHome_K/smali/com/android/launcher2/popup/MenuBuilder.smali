.class public Lcom/android/launcher2/popup/MenuBuilder;
.super Ljava/lang/Object;
.source "MenuBuilder.java"

# interfaces
.implements Landroid/view/Menu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popup/MenuBuilder$ItemInvoker;,
        Lcom/android/launcher2/popup/MenuBuilder$Callback;
    }
.end annotation


# static fields
.field private static final ACTION_VIEW_STATES_KEY:Ljava/lang/String; = "android:menu:actionviewstates"

.field private static final CATEGORY_MASK:I = -0x10000

.field private static final CATEGORY_SHIFT:I = 0x10

.field private static final PRESENTER_KEY:Ljava/lang/String; = "android:menu:presenters"

.field private static final USER_MASK:I = 0xffff

.field private static final sCategoryToOrder:[I


# instance fields
.field private mActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field private mDefaultShowAsAction:I

.field private mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

.field mHeaderIcon:Landroid/graphics/drawable/Drawable;

.field mHeaderTitle:Ljava/lang/CharSequence;

.field mHeaderView:Landroid/view/View;

.field private mIsActionItemsStale:Z

.field private mIsClosing:Z

.field private mIsVisibleItemsStale:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mItemsChangedWhileDispatchPrevented:Z

.field private mNonActionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalIconsVisible:Z

.field private mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/popup/MenuPresenter;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreventDispatchingItemsChanged:Z

.field private mQwertyMode:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShortcutsVisible:Z

.field private mTempShortcutItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher2/popup/MenuBuilder;->sCategoryToOrder:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x4
        0x5
        0x3
        0x2
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mDefaultShowAsAction:I

    .line 138
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 139
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mOptionalIconsVisible:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 147
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 183
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 189
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    .line 193
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    .line 195
    invoke-direct {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 196
    return-void
.end method

.method private addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 8
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 326
    invoke-static {p3}, Lcom/android/launcher2/popup/MenuBuilder;->getOrdering(I)I

    move-result v5

    .line 328
    .local v5, "ordering":I
    new-instance v0, Lcom/android/launcher2/popup/MenuItemImpl;

    iget v7, p0, Lcom/android/launcher2/popup/MenuBuilder;->mDefaultShowAsAction:I

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/popup/MenuItemImpl;-><init>(Lcom/android/launcher2/popup/MenuBuilder;IIIILjava/lang/CharSequence;I)V

    .line 331
    .local v0, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuItemImpl;->setMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-static {v2, v5}, Lcom/android/launcher2/popup/MenuBuilder;->findInsertIndex(Ljava/util/ArrayList;I)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 337
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 339
    return-object v0
.end method

.method private dispatchPresenterUpdate(Z)V
    .locals 4
    .param p1, "cleared"    # Z

    .prologue
    .line 232
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    :goto_0
    return-void

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 235
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 236
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuPresenter;

    .line 237
    .local v1, "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v1, :cond_1

    .line 238
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 240
    :cond_1
    invoke-interface {v1, p1}, Lcom/android/launcher2/popup/MenuPresenter;->updateMenuView(Z)V

    goto :goto_1

    .line 243
    .end local v1    # "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->startDispatchingItemsChanged()V

    goto :goto_0
.end method

.method private dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 286
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    .line 288
    .local v4, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v4, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 304
    :cond_0
    return-void

    .line 290
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 291
    .local v5, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuPresenter;

    .line 292
    .local v3, "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v3, :cond_3

    .line 293
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    :cond_3
    invoke-interface {v3}, Lcom/android/launcher2/popup/MenuPresenter;->getId()I

    move-result v1

    .line 296
    .local v1, "id":I
    if-lez v1, :cond_2

    .line 297
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    .line 298
    .local v2, "parcel":Landroid/os/Parcelable;
    if-eqz v2, :cond_2

    .line 299
    invoke-interface {v3, v2}, Lcom/android/launcher2/popup/MenuPresenter;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 263
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 283
    :goto_0
    return-void

    .line 265
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 267
    .local v3, "presenterStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 268
    .local v4, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuPresenter;

    .line 269
    .local v2, "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v2, :cond_2

    .line 270
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 272
    :cond_2
    invoke-interface {v2}, Lcom/android/launcher2/popup/MenuPresenter;->getId()I

    move-result v1

    .line 273
    .local v1, "id":I
    if-lez v1, :cond_1

    .line 274
    invoke-interface {v2}, Lcom/android/launcher2/popup/MenuPresenter;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v5

    .line 275
    .local v5, "state":Landroid/os/Parcelable;
    if-eqz v5, :cond_1

    .line 276
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 282
    .end local v1    # "id":I
    .end local v2    # "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    .end local v4    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    .end local v5    # "state":Landroid/os/Parcelable;
    :cond_3
    const-string v6, "android:menu:presenters"

    invoke-virtual {p1, v6, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0
.end method

.method private dispatchSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z
    .locals 5
    .param p1, "subMenu"    # Lcom/android/launcher2/popup/SubMenuBuilder;

    .prologue
    .line 247
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .line 259
    :cond_0
    return v3

    .line 249
    :cond_1
    const/4 v3, 0x0

    .line 251
    .local v3, "result":Z
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 252
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuPresenter;

    .line 253
    .local v1, "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v1, :cond_3

    .line 254
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 255
    :cond_3
    if-nez v3, :cond_2

    .line 256
    invoke-interface {v1, p1}, Lcom/android/launcher2/popup/MenuPresenter;->onSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z

    move-result v3

    goto :goto_0
.end method

.method private static findInsertIndex(Ljava/util/ArrayList;I)I
    .locals 3
    .param p1, "ordering"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 690
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 691
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 692
    .local v1, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getOrdering()I

    move-result v2

    if-gt v2, p1, :cond_0

    .line 693
    add-int/lit8 v2, v0, 0x1

    .line 697
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :goto_1
    return v2

    .line 690
    .restart local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 697
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static getOrdering(I)I
    .locals 3
    .param p0, "categoryOrder"    # I

    .prologue
    .line 621
    const/high16 v1, -0x10000

    and-int/2addr v1, p0

    shr-int/lit8 v0, v1, 0x10

    .line 623
    .local v0, "index":I
    if-ltz v0, :cond_0

    sget-object v1, Lcom/android/launcher2/popup/MenuBuilder;->sCategoryToOrder:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 624
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "order does not contain a valid category."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 627
    :cond_1
    sget-object v1, Lcom/android/launcher2/popup/MenuBuilder;->sCategoryToOrder:[I

    aget v1, v1, v0

    shl-int/lit8 v1, v1, 0x10

    const v2, 0xffff

    and-int/2addr v2, p0

    or-int/2addr v1, v2

    return v1
.end method

.method private removeItemAtInt(IZ)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "updateChildrenOnMenuViews"    # Z

    .prologue
    .line 438
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 442
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method private setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V
    .locals 3
    .param p1, "titleRes"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "iconRes"    # I
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1037
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1039
    .local v0, "r":Landroid/content/res/Resources;
    if-eqz p5, :cond_0

    .line 1040
    iput-object p5, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1043
    iput-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1044
    iput-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1063
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 1064
    return-void

    .line 1046
    :cond_0
    if-lez p1, :cond_3

    .line 1047
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1052
    :cond_1
    :goto_1
    if-lez p3, :cond_4

    .line 1053
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1059
    :cond_2
    :goto_2
    iput-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderView:Landroid/view/View;

    goto :goto_0

    .line 1048
    :cond_3
    if-eqz p2, :cond_1

    .line 1049
    iput-object p2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    goto :goto_1

    .line 1054
    :cond_4
    if-eqz p4, :cond_2

    .line 1055
    iput-object p4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_2
.end method

.method private setShortcutsVisibleInner(Z)V
    .locals 2
    .param p1, "shortcutsVisible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 653
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mShortcutsVisible:Z

    .line 659
    return-void

    .line 653
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v1, v1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 351
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 343
    invoke-direct {p0, v0, v0, v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .prologue
    .line 380
    iget-object v10, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 381
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 383
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 385
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    if-nez v10, :cond_0

    .line 386
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->removeGroup(I)V

    .line 389
    :cond_0
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 390
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 391
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v10, :cond_3

    move-object/from16 v10, p6

    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 393
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 396
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/android/launcher2/popup/MenuBuilder;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v10

    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v5

    .line 399
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v10, :cond_1

    .line 400
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v5, p8, v10

    .line 389
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 383
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 391
    .restart local v3    # "N":I
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v10, p5, v10

    goto :goto_2

    .line 404
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addMenuPresenter(Lcom/android/launcher2/popup/MenuPresenter;)V
    .locals 2
    .param p1, "presenter"    # Lcom/android/launcher2/popup/MenuPresenter;

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, p0}, Lcom/android/launcher2/popup/MenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;)V

    .line 213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    .line 214
    return-void
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 2
    .param p1, "titleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # I

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popup/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 367
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher2/popup/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 368
    .local v0, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    new-instance v1, Lcom/android/launcher2/popup/SubMenuBuilder;

    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0, v0}, Lcom/android/launcher2/popup/SubMenuBuilder;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)V

    .line 369
    .local v1, "subMenu":Lcom/android/launcher2/popup/SubMenuBuilder;
    invoke-virtual {v0, v1}, Lcom/android/launcher2/popup/MenuItemImpl;->setSubMenu(Lcom/android/launcher2/popup/SubMenuBuilder;)V

    .line 371
    return-object v1
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    .line 359
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    return-object v0
.end method

.method public changeMenuMode()V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    invoke-interface {v0, p0}, Lcom/android/launcher2/popup/MenuBuilder$Callback;->onMenuModeChange(Lcom/android/launcher2/popup/MenuBuilder;)V

    .line 687
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->collapseItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 465
    return-void
.end method

.method public clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 450
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 451
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->clear()V

    .line 452
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->clearHeader()V

    .line 453
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 454
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 455
    invoke-virtual {p0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 456
    return-void
.end method

.method public clearHeader()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1028
    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    .line 1029
    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    .line 1030
    iput-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderView:Landroid/view/View;

    .line 1032
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 1033
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    .line 872
    return-void
.end method

.method final close(Z)V
    .locals 4
    .param p1, "allMenusAreClosing"    # Z

    .prologue
    .line 855
    iget-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    if-eqz v3, :cond_0

    .line 867
    :goto_0
    return-void

    .line 857
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    .line 858
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 859
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuPresenter;

    .line 860
    .local v1, "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v1, :cond_1

    .line 861
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 863
    :cond_1
    invoke-interface {v1, p0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V

    goto :goto_1

    .line 866
    .end local v1    # "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsClosing:Z

    goto :goto_0
.end method

.method public collapseItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/android/launcher2/popup/MenuItemImpl;

    .prologue
    .line 1188
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    if-eq v4, p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 1206
    :cond_1
    :goto_0
    return v0

    .line 1190
    :cond_2
    const/4 v0, 0x0

    .line 1192
    .local v0, "collapsed":Z
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1193
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1194
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuPresenter;

    .line 1195
    .local v2, "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v2, :cond_4

    .line 1196
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1197
    :cond_4
    invoke-interface {v2, p0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->collapseItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1201
    .end local v2    # "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1203
    if-eqz v0, :cond_1

    .line 1204
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    goto :goto_0
.end method

.method dispatchMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/launcher2/popup/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder$Callback;->onMenuItemSelected(Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandItemActionView(Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 5
    .param p1, "item"    # Lcom/android/launcher2/popup/MenuItemImpl;

    .prologue
    .line 1166
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 1184
    :cond_0
    :goto_0
    return v0

    .line 1168
    :cond_1
    const/4 v0, 0x0

    .line 1170
    .local v0, "expanded":Z
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->stopDispatchingItemsChanged()V

    .line 1171
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 1172
    .local v3, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuPresenter;

    .line 1173
    .local v2, "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v2, :cond_3

    .line 1174
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1175
    :cond_3
    invoke-interface {v2, p0, p1}, Lcom/android/launcher2/popup/MenuPresenter;->expandItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    .end local v2    # "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    .end local v3    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->startDispatchingItemsChanged()V

    .line 1181
    if-eqz v0, :cond_0

    .line 1182
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    goto :goto_0
.end method

.method public findGroupIndex(I)I
    .locals 1
    .param p1, "group"    # I

    .prologue
    .line 568
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->findGroupIndex(II)I

    move-result v0

    return v0
.end method

.method public findGroupIndex(II)I
    .locals 4
    .param p1, "group"    # I
    .param p2, "start"    # I

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v2

    .line 574
    .local v2, "size":I
    if-gez p2, :cond_0

    .line 575
    const/4 p2, 0x0

    .line 578
    :cond_0
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 579
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 581
    .local v1, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 586
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :goto_1
    return v0

    .line 578
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v3

    .line 538
    .local v3, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 539
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 540
    .local v1, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getItemId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 551
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :goto_1
    return-object v1

    .line 542
    .restart local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 545
    .local v2, "possibleItem":Landroid/view/MenuItem;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 546
    goto :goto_1

    .line 538
    .end local v2    # "possibleItem":Landroid/view/MenuItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 551
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 555
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v2

    .line 557
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 558
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 559
    .local v1, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 564
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :goto_1
    return v0

    .line 557
    .restart local v0    # "i":I
    .restart local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 564
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/launcher2/popup/MenuItemImpl;
    .locals 12
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v11, 0x0

    .line 771
    iget-object v2, p0, Lcom/android/launcher2/popup/MenuBuilder;->mTempShortcutItemList:Ljava/util/ArrayList;

    .line 772
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 773
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 775
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-object v8

    .line 779
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v3

    .line 780
    .local v3, "metaState":I
    new-instance v4, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v4}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 782
    .local v4, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p2, v4}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    .line 785
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 786
    .local v7, "size":I
    const/4 v9, 0x1

    if-ne v7, v9, :cond_2

    .line 787
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/popup/MenuItemImpl;

    goto :goto_0

    .line 790
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->isQwertyMode()Z

    move-result v5

    .line 793
    .local v5, "qwerty":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v7, :cond_0

    .line 794
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 795
    .local v1, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    if-eqz v5, :cond_6

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v6

    .line 797
    .local v6, "shortcutChar":C
    :goto_2
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v9, v9, v11

    if-ne v6, v9, :cond_3

    and-int/lit8 v9, v3, 0x2

    if-eqz v9, :cond_5

    :cond_3
    iget-object v9, v4, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v10, 0x2

    aget-char v9, v9, v10

    if-ne v6, v9, :cond_4

    and-int/lit8 v9, v3, 0x2

    if-nez v9, :cond_5

    :cond_4
    if-eqz v5, :cond_7

    const/16 v9, 0x8

    if-ne v6, v9, :cond_7

    const/16 v9, 0x43

    if-ne p1, v9, :cond_7

    :cond_5
    move-object v8, v1

    .line 803
    goto :goto_0

    .line 795
    .end local v6    # "shortcutChar":C
    :cond_6
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getNumericShortcut()C

    move-result v6

    goto :goto_2

    .line 793
    .restart local v6    # "shortcutChar":C
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V
    .locals 11
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;I",
            "Landroid/view/KeyEvent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    const/16 v10, 0x43

    .line 726
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->isQwertyMode()Z

    move-result v6

    .line 727
    .local v6, "qwerty":Z
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v4

    .line 728
    .local v4, "metaState":I
    new-instance v5, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v5}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 730
    .local v5, "possibleChars":Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p3, v5}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v2

    .line 732
    .local v2, "isKeyCodeMapped":Z
    if-nez v2, :cond_1

    if-eq p2, v10, :cond_1

    .line 754
    :cond_0
    return-void

    .line 737
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 738
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 739
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 740
    .local v3, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->hasSubMenu()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 741
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v8, p1, p2, p3}, Lcom/android/launcher2/popup/MenuBuilder;->findItemsWithShortcutForKey(Ljava/util/List;ILandroid/view/KeyEvent;)V

    .line 743
    :cond_2
    if-eqz v6, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getAlphabeticShortcut()C

    move-result v7

    .line 744
    .local v7, "shortcutChar":C
    :goto_1
    and-int/lit8 v8, v4, 0x5

    if-nez v8, :cond_4

    if-eqz v7, :cond_4

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x0

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    iget-object v8, v5, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    const/4 v9, 0x2

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    if-eqz v6, :cond_4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    if-ne p2, v10, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 751
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 743
    .end local v7    # "shortcutChar":C
    :cond_5
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getNumericShortcut()C

    move-result v7

    goto :goto_1
.end method

.method public flagActionItems()V
    .locals 10

    .prologue
    .line 979
    iget-boolean v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    if-nez v8, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 984
    :cond_0
    const/4 v0, 0x0

    .line 985
    .local v0, "flagged":Z
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 986
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/popup/MenuPresenter;

    .line 987
    .local v5, "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    if-nez v5, :cond_1

    .line 988
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 990
    :cond_1
    invoke-interface {v5}, Lcom/android/launcher2/popup/MenuPresenter;->flagActionItems()Z

    move-result v8

    or-int/2addr v0, v8

    goto :goto_1

    .line 994
    .end local v5    # "presenter":Lcom/android/launcher2/popup/MenuPresenter;
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_2
    if-eqz v0, :cond_4

    .line 995
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 996
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 997
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v7

    .line 998
    .local v7, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 999
    .local v4, "itemsSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v4, :cond_5

    .line 1000
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 1001
    .local v3, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->isActionButton()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1002
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 999
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1004
    :cond_3
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1010
    .end local v1    # "i":I
    .end local v3    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    .end local v4    # "itemsSize":I
    .end local v7    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    :cond_4
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1011
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1012
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1014
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    goto :goto_0
.end method

.method getActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1018
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->flagActionItems()V

    .line 1019
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getActionViewStatesKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    const-string v0, "android:menu:actionviewstates"

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getExpandedItem()Lcom/android/launcher2/popup/MenuItemImpl;
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mExpandedItem:Lcom/android/launcher2/popup/MenuItemImpl;

    return-object v0
.end method

.method public getHeaderIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1127
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method getNonActionItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1023
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->flagActionItems()V

    .line 1024
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mNonActionItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method getOptionalIconsVisible()Z
    .locals 1

    .prologue
    .line 1162
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mOptionalIconsVisible:Z

    return v0
.end method

.method getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getRootMenu()Lcom/android/launcher2/popup/MenuBuilder;
    .locals 0

    .prologue
    .line 1143
    return-object p0
.end method

.method getVisibleItems()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/popup/MenuItemImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 936
    iget-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    .line 951
    :goto_0
    return-object v3

    .line 939
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 941
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 943
    .local v2, "itemsSize":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 944
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 945
    .local v1, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 948
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 949
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    .line 951
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mVisibleItems:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public hasVisibleItems()Z
    .locals 4

    .prologue
    .line 524
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuBuilder;->size()I

    move-result v2

    .line 526
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 527
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 528
    .local v1, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 529
    const/4 v3, 0x1

    .line 533
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :goto_1
    return v3

    .line 526
    .restart local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 533
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method isQwertyMode()Z
    .locals 1

    .prologue
    .line 634
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mQwertyMode:Z

    return v0
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 600
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShortcutsVisible()Z
    .locals 1

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mShortcutsVisible:Z

    return v0
.end method

.method onItemActionRequestChanged(Lcom/android/launcher2/popup/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/popup/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 931
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    .line 932
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 933
    return-void
.end method

.method onItemVisibleChanged(Lcom/android/launcher2/popup/MenuItemImpl;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/popup/MenuItemImpl;

    .prologue
    const/4 v0, 0x1

    .line 921
    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 922
    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 923
    return-void
.end method

.method onItemsChanged(Z)V
    .locals 2
    .param p1, "structureChanged"    # Z

    .prologue
    const/4 v1, 0x1

    .line 882
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_1

    .line 883
    if-eqz p1, :cond_0

    .line 884
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsVisibleItemsStale:Z

    .line 885
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mIsActionItemsStale:Z

    .line 888
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchPresenterUpdate(Z)V

    .line 892
    :goto_0
    return-void

    .line 890
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 1
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    .line 811
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/popup/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public performItemAction(Landroid/view/MenuItem;I)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 815
    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 817
    .local v1, "itemImpl":Lcom/android/launcher2/popup/MenuItemImpl;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_0
    move v0, v4

    .line 842
    :cond_1
    :goto_0
    return v0

    .line 821
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->invoke()Z

    move-result v0

    .line 823
    .local v0, "invoked":Z
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 824
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->expandActionView()Z

    move-result v4

    or-int/2addr v0, v4

    .line 825
    if-eqz v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 826
    :cond_3
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 827
    invoke-virtual {p0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    .line 829
    invoke-interface {p1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/SubMenuBuilder;

    .line 830
    .local v3, "subMenu":Lcom/android/launcher2/popup/SubMenuBuilder;
    invoke-interface {p1}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v2

    .line 831
    .local v2, "provider":Landroid/view/ActionProvider;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ActionProvider;->hasSubMenu()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 832
    invoke-virtual {v2, v3}, Landroid/view/ActionProvider;->onPrepareSubMenu(Landroid/view/SubMenu;)V

    .line 834
    :cond_4
    invoke-direct {p0, v3}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 835
    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    goto :goto_0

    .line 837
    .end local v2    # "provider":Landroid/view/ActionProvider;
    .end local v3    # "subMenu":Lcom/android/launcher2/popup/SubMenuBuilder;
    :cond_5
    and-int/lit8 v4, p2, 0x1

    if-nez v4, :cond_1

    .line 838
    invoke-virtual {p0, v6}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    goto :goto_0
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .prologue
    .line 702
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/popup/MenuBuilder;->findItemWithShortcutForKey(ILandroid/view/KeyEvent;)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v1

    .line 704
    .local v1, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    const/4 v0, 0x0

    .line 706
    .local v0, "handled":Z
    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {p0, v1, p3}, Lcom/android/launcher2/popup/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    .line 710
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-eqz v2, :cond_1

    .line 711
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher2/popup/MenuBuilder;->close(Z)V

    .line 714
    :cond_1
    return v0
.end method

.method public removeGroup(I)V
    .locals 5
    .param p1, "group"    # I

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->findGroupIndex(I)I

    move-result v0

    .line 414
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 415
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v1, v4, v0

    .line 416
    .local v1, "maxRemovable":I
    const/4 v2, 0x0

    .local v2, "numRemoved":I
    move v3, v2

    .line 417
    .end local v2    # "numRemoved":I
    .local v3, "numRemoved":I
    :goto_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    if-ge v3, v1, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/popup/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 419
    const/4 v4, 0x0

    invoke-direct {p0, v0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->removeItemAtInt(IZ)V

    move v3, v2

    .end local v2    # "numRemoved":I
    .restart local v3    # "numRemoved":I
    goto :goto_0

    .line 423
    .end local v3    # "numRemoved":I
    .restart local v2    # "numRemoved":I
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 425
    .end local v1    # "maxRemovable":I
    .end local v2    # "numRemoved":I
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 408
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->findItemIndex(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/popup/MenuBuilder;->removeItemAtInt(IZ)V

    .line 409
    return-void
.end method

.method public removeItemAt(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 446
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/popup/MenuBuilder;->removeItemAtInt(IZ)V

    .line 447
    return-void
.end method

.method public removeMenuPresenter(Lcom/android/launcher2/popup/MenuPresenter;)V
    .locals 4
    .param p1, "presenter"    # Lcom/android/launcher2/popup/MenuPresenter;

    .prologue
    .line 223
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 224
    .local v2, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuPresenter;

    .line 225
    .local v1, "item":Lcom/android/launcher2/popup/MenuPresenter;
    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_0

    .line 226
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPresenters:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 229
    .end local v1    # "item":Lcom/android/launcher2/popup/MenuPresenter;
    .end local v2    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/launcher2/popup/MenuPresenter;>;"
    :cond_2
    return-void
.end method

.method public restorePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 312
    return-void
.end method

.method public savePresenterStates(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 308
    return-void
.end method

.method public setCallback(Lcom/android/launcher2/popup/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/launcher2/popup/MenuBuilder$Callback;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCallback:Lcom/android/launcher2/popup/MenuBuilder$Callback;

    .line 320
    return-void
.end method

.method public setCurrentMenuInfo(Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mCurrentMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1155
    return-void
.end method

.method public setDefaultShowAsAction(I)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 0
    .param p1, "defaultShowAsAction"    # I

    .prologue
    .line 199
    iput p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mDefaultShowAsAction:I

    .line 200
    return-object p0
.end method

.method setExclusiveItemChecked(Landroid/view/MenuItem;)V
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 468
    invoke-interface {p1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    .line 470
    .local v2, "group":I
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 471
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_3

    .line 472
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 473
    .local v1, "curItem":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 474
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v4

    if-nez v4, :cond_1

    .line 471
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 475
    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuItemImpl;->isCheckable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    if-ne v1, p1, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Lcom/android/launcher2/popup/MenuItemImpl;->setCheckedInt(Z)V

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 481
    .end local v1    # "curItem":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_3
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .prologue
    .line 484
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 486
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 487
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 488
    .local v2, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 489
    invoke-virtual {v2, p3}, Lcom/android/launcher2/popup/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 490
    invoke-virtual {v2, p2}, Lcom/android/launcher2/popup/MenuItemImpl;->setCheckable(Z)Landroid/view/MenuItem;

    .line 486
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v2    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 4
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 513
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 515
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 516
    iget-object v3, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 517
    .local v2, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 518
    invoke-virtual {v2, p2}, Lcom/android/launcher2/popup/MenuItemImpl;->setEnabled(Z)Landroid/view/MenuItem;

    .line 515
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    .end local v2    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 496
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 501
    .local v0, "N":I
    const/4 v1, 0x0

    .line 502
    .local v1, "changedAtLeastOneItem":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 503
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 504
    .local v3, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    invoke-virtual {v3}, Lcom/android/launcher2/popup/MenuItemImpl;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 505
    invoke-virtual {v3, p2}, Lcom/android/launcher2/popup/MenuItemImpl;->setVisibleInt(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    .line 502
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 509
    .end local v3    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    :cond_1
    if-eqz v1, :cond_2

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 510
    :cond_2
    return-void
.end method

.method protected setHeaderIconInt(I)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6
    .param p1, "iconRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1110
    const/4 v1, 0x0

    move-object v0, p0

    move v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1111
    return-object p0
.end method

.method protected setHeaderIconInt(Landroid/graphics/drawable/Drawable;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1098
    move-object v0, p0

    move v3, v1

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1099
    return-object p0
.end method

.method protected setHeaderTitleInt(I)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6
    .param p1, "titleRes"    # I

    .prologue
    const/4 v2, 0x0

    .line 1086
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1087
    return-object p0
.end method

.method protected setHeaderTitleInt(Ljava/lang/CharSequence;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1074
    move-object v0, p0

    move-object v2, p1

    move v3, v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1075
    return-object p0
.end method

.method protected setHeaderViewInt(Landroid/view/View;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1122
    move-object v0, p0

    move v3, v1

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/popup/MenuBuilder;->setHeaderInternal(ILjava/lang/CharSequence;ILandroid/graphics/drawable/Drawable;Landroid/view/View;)V

    .line 1123
    return-object p0
.end method

.method public setOptionalIconsVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 1158
    iput-boolean p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mOptionalIconsVisible:Z

    .line 1159
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 1
    .param p1, "isQwerty"    # Z

    .prologue
    .line 604
    iput-boolean p1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mQwertyMode:Z

    .line 606
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 607
    return-void
.end method

.method public setShortcutsVisible(Z)V
    .locals 1
    .param p1, "shortcutsVisible"    # Z

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mShortcutsVisible:Z

    if-ne v0, p1, :cond_0

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/popup/MenuBuilder;->setShortcutsVisibleInner(Z)V

    .line 649
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public startDispatchingItemsChanged()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 907
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 909
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    if-eqz v0, :cond_0

    .line 910
    iput-boolean v1, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 911
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuBuilder;->onItemsChanged(Z)V

    .line 913
    :cond_0
    return-void
.end method

.method public stopDispatchingItemsChanged()V
    .locals 1

    .prologue
    .line 900
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    if-nez v0, :cond_0

    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mPreventDispatchingItemsChanged:Z

    .line 902
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/popup/MenuBuilder;->mItemsChangedWhileDispatchPrevented:Z

    .line 904
    :cond_0
    return-void
.end method
