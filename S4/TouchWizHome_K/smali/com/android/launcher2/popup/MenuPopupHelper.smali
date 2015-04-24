.class public Lcom/android/launcher2/popup/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;
.implements Lcom/android/launcher2/popup/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/popup/MenuPopupHelper$1;,
        Lcom/android/launcher2/popup/MenuPopupHelper$ExpandedIndexObserver;,
        Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
    }
.end annotation


# static fields
.field static final ITEM_LAYOUT:I = 0x7f030050


# instance fields
.field private mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

.field private mAnchorView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mForceShowIcon:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mMeasureParent:Landroid/view/ViewGroup;

.field private mMenu:Lcom/android/launcher2/popup/MenuBuilder;

.field private mOverflowOnly:Z

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPopupMaxWidth:I

.field private mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/launcher2/popup/MenuBuilder;

    .prologue
    .line 71
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/launcher2/popup/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/launcher2/popup/MenuBuilder;
    .param p3, "anchorView"    # Landroid/view/View;
    .param p4, "overflowOnly"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    .line 81
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    iput-object p2, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    .line 83
    iput-boolean p4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mOverflowOnly:Z

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 86
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopupMaxWidth:I

    .line 87
    iput-object p3, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 89
    invoke-virtual {p2, p0}, Lcom/android/launcher2/popup/MenuBuilder;->addMenuPresenter(Lcom/android/launcher2/popup/MenuPresenter;)V

    .line 90
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/popup/MenuPopupHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/popup/MenuPopupHelper;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mOverflowOnly:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/popup/MenuPopupHelper;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/popup/MenuPopupHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/popup/MenuPopupHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/popup/MenuPopupHelper;)Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/popup/MenuPopupHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    return-object v0
.end method

.method private measureContentWidth(Landroid/widget/ListAdapter;)I
    .locals 10
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v8, 0x0

    .line 177
    const/4 v6, 0x0

    .line 178
    .local v6, "width":I
    const/4 v4, 0x0

    .line 179
    .local v4, "itemView":Landroid/view/View;
    const/4 v3, 0x0

    .line 180
    .local v3, "itemType":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 182
    .local v7, "widthMeasureSpec":I
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 184
    .local v1, "heightMeasureSpec":I
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 185
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 186
    invoke-interface {p1, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 187
    .local v5, "positionType":I
    if-eq v5, v3, :cond_0

    .line 188
    move v3, v5

    .line 189
    const/4 v4, 0x0

    .line 191
    :cond_0
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    if-nez v8, :cond_1

    .line 192
    new-instance v8, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    .line 194
    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMeasureParent:Landroid/view/ViewGroup;

    invoke-interface {p1, v2, v4, v8}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 195
    invoke-virtual {v4, v7, v1}, Landroid/view/View;->measure(II)V

    .line 196
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 198
    .end local v5    # "positionType":I
    :cond_2
    return v6
.end method


# virtual methods
.method public collapseItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/launcher2/popup/MenuBuilder;
    .param p2, "item"    # Lcom/android/launcher2/popup/MenuItemImpl;

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 143
    :cond_0
    return-void
.end method

.method public expandItemActionView(Lcom/android/launcher2/popup/MenuBuilder;Lcom/android/launcher2/popup/MenuItemImpl;)Z
    .locals 1
    .param p1, "menu"    # Lcom/android/launcher2/popup/MenuBuilder;
    .param p2, "item"    # Lcom/android/launcher2/popup/MenuItemImpl;

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 301
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/launcher2/popup/MenuView;
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 235
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "MenuPopupHelpers manage their own views"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/launcher2/popup/MenuBuilder;

    .prologue
    .line 231
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V
    .locals 1
    .param p1, "menu"    # Lcom/android/launcher2/popup/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    if-eq p1, v0, :cond_1

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    .line 281
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher2/popup/MenuPresenter$Callback;->onCloseMenu(Lcom/android/launcher2/popup/MenuBuilder;Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iput-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 148
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuBuilder;->close()V

    .line 149
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 152
    iput-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 155
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 205
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_2

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    .line 212
    .end local v0    # "anchor":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 207
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    .line 164
    .local v0, "adapter":Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;
    # getter for: Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->mAdapterMenu:Lcom/android/launcher2/popup/MenuBuilder;
    invoke-static {v0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->access$000(Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;)Lcom/android/launcher2/popup/MenuBuilder;

    move-result-object v1

    invoke-virtual {v0, p3}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->getItem(I)Lcom/android/launcher2/popup/MenuItemImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/popup/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    .line 165
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 168
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/16 v1, 0x52

    if-ne p2, v1, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->dismiss()V

    .line 172
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 311
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/launcher2/popup/SubMenuBuilder;)Z
    .locals 8
    .param p1, "subMenu"    # Lcom/android/launcher2/popup/SubMenuBuilder;

    .prologue
    const/4 v5, 0x0

    .line 250
    invoke-virtual {p1}, Lcom/android/launcher2/popup/SubMenuBuilder;->hasVisibleItems()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 251
    new-instance v4, Lcom/android/launcher2/popup/MenuPopupHelper;

    iget-object v6, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-direct {v4, v6, p1, v7, v5}, Lcom/android/launcher2/popup/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/launcher2/popup/MenuBuilder;Landroid/view/View;Z)V

    .line 252
    .local v4, "subPopup":Lcom/android/launcher2/popup/MenuPopupHelper;
    iget-object v6, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    invoke-virtual {v4, v6}, Lcom/android/launcher2/popup/MenuPopupHelper;->setCallback(Lcom/android/launcher2/popup/MenuPresenter$Callback;)V

    .line 254
    const/4 v3, 0x0

    .line 255
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/launcher2/popup/SubMenuBuilder;->size()I

    move-result v1

    .line 256
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 257
    invoke-virtual {p1, v2}, Lcom/android/launcher2/popup/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 258
    .local v0, "childItem":Landroid/view/MenuItem;
    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 259
    const/4 v3, 0x1

    .line 263
    .end local v0    # "childItem":Landroid/view/MenuItem;
    :cond_0
    invoke-virtual {v4, v3}, Lcom/android/launcher2/popup/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 265
    invoke-virtual {v4}, Lcom/android/launcher2/popup/MenuPopupHelper;->tryShow()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 266
    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    if-eqz v5, :cond_1

    .line 267
    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    invoke-interface {v5, p1}, Lcom/android/launcher2/popup/MenuPresenter$Callback;->onOpenSubMenu(Lcom/android/launcher2/popup/MenuBuilder;)Z

    .line 269
    :cond_1
    const/4 v5, 0x1

    .line 272
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "preserveIconSpacing":Z
    .end local v4    # "subPopup":Lcom/android/launcher2/popup/MenuPopupHelper;
    :cond_2
    return v5

    .line 256
    .restart local v0    # "childItem":Landroid/view/MenuItem;
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "preserveIconSpacing":Z
    .restart local v4    # "subPopup":Lcom/android/launcher2/popup/MenuPopupHelper;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 216
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 225
    :cond_1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 226
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 94
    return-void
.end method

.method public setCallback(Lcom/android/launcher2/popup/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/launcher2/popup/MenuPresenter$Callback;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPresenterCallback:Lcom/android/launcher2/popup/MenuPresenter$Callback;

    .line 246
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0
    .param p1, "forceShow"    # Z

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mForceShowIcon:Z

    .line 98
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/popup/MenuPopupHelper;->tryShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    return-void
.end method

.method public tryShow()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x1

    .line 109
    new-instance v4, Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    .line 110
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, p0}, Landroid/widget/ListPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 111
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    new-instance v4, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mMenu:Lcom/android/launcher2/popup/MenuBuilder;

    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;-><init>(Lcom/android/launcher2/popup/MenuPopupHelper;Lcom/android/launcher2/popup/MenuBuilder;)V

    iput-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    .line 113
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, v3}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    .line 117
    .local v1, "anchor":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 118
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v4, :cond_0

    move v0, v3

    .line 119
    .local v0, "addGlobalListener":Z
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 120
    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 121
    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 122
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4, v1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 127
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    invoke-direct {p0, v5}, Lcom/android/launcher2/popup/MenuPopupHelper;->measureContentWidth(Landroid/widget/ListAdapter;)I

    move-result v5

    iget v6, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopupMaxWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setContentWidth(I)V

    .line 128
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 129
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e007b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 131
    .local v2, "vOffset":I
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 132
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    iget-object v5, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0060

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 133
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/ListPopupWindow;->setDropDownGravity(I)V

    .line 134
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->show()V

    .line 135
    iget-object v4, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 136
    .end local v0    # "addGlobalListener":Z
    .end local v2    # "vOffset":I
    :goto_0
    return v3

    :cond_2
    move v3, v0

    .line 124
    goto :goto_0
.end method

.method public updateMenuView(Z)V
    .locals 1
    .param p1, "cleared"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/popup/MenuPopupHelper;->mAdapter:Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;

    invoke-virtual {v0}, Lcom/android/launcher2/popup/MenuPopupHelper$MenuAdapter;->notifyDataSetChanged()V

    .line 241
    :cond_0
    return-void
.end method
