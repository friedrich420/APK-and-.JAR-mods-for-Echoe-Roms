.class Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuPopupHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/popup/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuAdapter"
.end annotation


# instance fields
.field private mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

.field private mExpandedIndex:I

.field final synthetic this$0:Lcom/android/launcher2/popup/MenuPopupHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/popup/MenuPopupHelper;Lcom/android/launcher2/popup/MenuBuilder;)V
    .locals 2
    .param p2, "menu"    # Lcom/android/launcher2/popup/MenuBuilder;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 315
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 318
    iput-object p2, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    .line 319
    new-instance v0, Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;-><init>(Lcom/android/launcher2/popup/MenuPopupHelper;Lcom/android/launcher2/popup/MenuPopupHelper$1;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 320
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->findExpandedIndex()V

    .line 321
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    return-object v0
.end method


# virtual methods
.method findExpandedIndex()V
    .locals 6

    .prologue
    .line 361
    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;
    invoke-static {v5}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$400(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/popup/MenuBuilder;->getExpandedItem()Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v1

    .line 362
    .local v1, "expandedItem":Lcom/android/launcher2/popup/MenuItemImpl;
    if-eqz v1, :cond_1

    .line 363
    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;
    invoke-static {v5}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$400(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/popup/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 364
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 365
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 366
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/popup/MenuItemImpl;

    .line 367
    .local v3, "item":Lcom/android/launcher2/popup/MenuItemImpl;
    if-ne v3, v1, :cond_0

    .line 368
    iput v2, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    .line 374
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    :goto_1
    return-void

    .line 365
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Lcom/android/launcher2/popup/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    :cond_1
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    goto :goto_1
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$200(Lcom/android/launcher2/popup/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 326
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1

    .line 327
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 329
    :goto_1
    return v1

    .line 324
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 329
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public getItem(I)Lcom/android/launcher2/popup/MenuItemImpl;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 333
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mOverflowOnly:Z
    invoke-static {v1}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$200(Lcom/android/launcher2/popup/MenuPopupHelper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 335
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    :goto_0
    iget v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_0

    .line 336
    add-int/lit8 p1, p1, 0x1

    .line 338
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/popup/MenuItemImpl;

    return-object v1

    .line 333
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/popup/MenuItemImpl;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/launcher2/popup/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 344
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 348
    if-nez p2, :cond_0

    .line 349
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Lcom/android/launcher2/popup/MenuPopupHelper;->access$300(Lcom/android/launcher2/popup/MenuPopupHelper;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030050

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    move-object v0, p2

    .line 352
    check-cast v0, Lcom/android/launcher2/popup/MenuView$ItemView;

    .line 353
    .local v0, "itemView":Lcom/android/launcher2/popup/MenuView$ItemView;
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->this$0:Lcom/android/launcher2/popup/MenuPopupHelper;

    iget-boolean v1, v1, Lcom/android/launcher2/popup/MenuPopupHelper;->mForceShowIcon:Z

    if-eqz v1, :cond_1

    move-object v1, p2

    .line 354
    check-cast v1, Lcom/android/launcher2/popup/ListMenuItemView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/popup/ListMenuItemView;->setForceShowIcon(Z)V

    .line 356
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Lcom/android/launcher2/popup/MenuView$ItemView;->initialize(Lcom/android/launcher2/popup/MenuItemImpl;I)V

    .line 357
    return-object p2
.end method
