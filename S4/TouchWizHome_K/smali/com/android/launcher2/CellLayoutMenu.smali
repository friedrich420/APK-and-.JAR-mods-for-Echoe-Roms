.class public Lcom/android/launcher2/CellLayoutMenu;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutMenu.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CellLayoutMenu"


# instance fields
.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field private mNumItemsPushedIn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 46
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 60
    return-void
.end method

.method private fillFromPageRightSnake()V
    .locals 5

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 286
    .local v2, "screen":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayoutMenu;

    .line 287
    .local v1, "p":Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v1, :cond_1

    .line 288
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 291
    .local v0, "child":Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getPageItemCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getScreen()I

    move-result v4

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 297
    :cond_0
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->getPageItemCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 307
    .end local v0    # "child":Lcom/android/launcher2/BaseItem;
    .end local v1    # "p":Lcom/android/launcher2/CellLayoutMenu;
    .end local v2    # "screen":I
    :cond_1
    :goto_0
    return-void

    .line 301
    .restart local v0    # "child":Lcom/android/launcher2/BaseItem;
    .restart local v1    # "p":Lcom/android/launcher2/CellLayoutMenu;
    .restart local v2    # "screen":I
    :cond_2
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutMenu;->invalidate()V

    goto :goto_0
.end method

.method private getState()Lcom/android/launcher2/MenuAppsGrid$State;
    .locals 2

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 389
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v1, :cond_0

    .line 390
    check-cast v0, Lcom/android/launcher2/MenuAppsGrid;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppsGrid;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    .line 392
    :goto_0
    return-object v1

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private pushItemsToNextPage()V
    .locals 5

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->findFirstEmptySpace()I

    move-result v1

    .line 224
    .local v1, "lastCell":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v4

    mul-int v1, v3, v4

    .line 227
    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 229
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 230
    .local v0, "item":Lcom/android/launcher2/AppItem;
    if-nez v0, :cond_1

    .line 231
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "item in < was null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 233
    iget v3, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iget v4, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 234
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    iget v4, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    invoke-virtual {v3, v4}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v2

    .line 235
    .local v2, "p":Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    .line 237
    .end local v0    # "item":Lcom/android/launcher2/AppItem;
    .end local v2    # "p":Lcom/android/launcher2/CellLayoutMenu;
    :cond_2
    return-void
.end method

.method private showViewTypeRearrangeDialog()V
    .locals 5

    .prologue
    .line 180
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    .local v1, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f1000f0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 182
    const v2, 0x7f1000f1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f100009

    new-instance v4, Lcom/android/launcher2/CellLayoutMenu$3;

    invoke-direct {v4, p0}, Lcom/android/launcher2/CellLayoutMenu$3;-><init>(Lcom/android/launcher2/CellLayoutMenu;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f10000a

    new-instance v4, Lcom/android/launcher2/CellLayoutMenu$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/CellLayoutMenu$2;-><init>(Lcom/android/launcher2/CellLayoutMenu;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 203
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 204
    return-void
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 382
    const-wide/16 v0, -0x66

    return-wide v0
.end method

.method public handleStateChange(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p2, "oldState"    # Lcom/android/launcher2/MenuAppsGrid$State;

    .prologue
    .line 417
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 418
    return-void
.end method

.method public hide(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v0, v1, :cond_1

    .line 378
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->hide(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0
.end method

.method public isReOrderingEnabled()Z
    .locals 5

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    .line 423
    .local v1, "m":Lcom/android/launcher2/MenuView;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 424
    .local v0, "isCustomGrid":Z
    :goto_0
    const/4 v2, 0x0

    .line 426
    .local v2, "result":Z
    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->NORMAL:Lcom/android/launcher2/MenuAppsGrid$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 428
    const/4 v2, 0x1

    .line 431
    :cond_1
    return v2

    .line 423
    .end local v0    # "isCustomGrid":Z
    .end local v2    # "result":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->onAttachedToWindow()V

    .line 66
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v10, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 84
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v6

    sget-object v9, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v6, v9, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher2/DragState;

    if-nez v6, :cond_1

    :cond_0
    move v6, v8

    .line 175
    :goto_0
    return v6

    .line 88
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    .line 89
    .local v1, "dragState":Lcom/android/launcher2/DragState;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v6

    sget-object v9, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v6, v9, :cond_3

    move v2, v7

    .line 92
    .local v2, "isCustomGrid":Z
    :goto_1
    if-nez v2, :cond_6

    .line 93
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_2
    :pswitch_0
    move v6, v7

    .line 151
    goto :goto_0

    .end local v2    # "isCustomGrid":Z
    :cond_3
    move v2, v8

    .line 89
    goto :goto_1

    .line 97
    .restart local v2    # "isCustomGrid":Z
    :pswitch_1
    iget-object v6, v1, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v6, p0, :cond_4

    .line 98
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    .line 99
    .local v3, "item":Lcom/android/launcher2/BaseItem;
    instance-of v6, v3, Lcom/android/launcher2/AppItem;

    if-eqz v6, :cond_4

    move-object v0, v3

    .line 100
    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 102
    .local v0, "appItem":Lcom/android/launcher2/AppItem;
    iget-object v6, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v6, :cond_4

    .line 103
    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    .line 104
    iput v10, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 105
    iput v10, v0, Lcom/android/launcher2/AppItem;->mCell:I

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    .line 107
    .local v4, "mv":Lcom/android/launcher2/MenuView;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 108
    .local v5, "parent":Landroid/view/ViewParent;
    if-eqz v4, :cond_2

    .line 109
    new-instance v6, Lcom/android/launcher2/CellLayoutMenu$1;

    invoke-direct {v6, p0, v4, v5, v0}, Lcom/android/launcher2/CellLayoutMenu$1;-><init>(Lcom/android/launcher2/CellLayoutMenu;Lcom/android/launcher2/MenuView;Landroid/view/ViewParent;Lcom/android/launcher2/AppItem;)V

    invoke-virtual {v1, v6}, Lcom/android/launcher2/DragState;->onDropSetEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 140
    .end local v0    # "appItem":Lcom/android/launcher2/AppItem;
    .end local v3    # "item":Lcom/android/launcher2/BaseItem;
    .end local v4    # "mv":Lcom/android/launcher2/MenuView;
    .end local v5    # "parent":Landroid/view/ViewParent;
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f10007c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 146
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v6

    sget-object v8, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v6, v8, :cond_5

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 148
    :cond_5
    invoke-virtual {v1}, Lcom/android/launcher2/DragState;->onEnd()V

    goto :goto_2

    .line 154
    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 175
    :goto_3
    :pswitch_3
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 156
    :pswitch_4
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    goto :goto_3

    .line 159
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppsGrid;->disableRollNavigation()V

    .line 160
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    goto :goto_3

    .line 165
    :pswitch_6
    sget-object v6, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v6}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    .line 166
    iget-boolean v6, p0, Lcom/android/launcher2/CellLayoutMenu;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 167
    const/16 v6, 0x6457

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher2/CellLayoutMenu;->performHapticFeedback(II)Z

    .line 172
    :cond_7
    iput v8, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    goto :goto_3

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 154
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getBackgroundAlpha()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->setCrosshairsVisibility(F)V

    .line 218
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDraw(Landroid/graphics/Canvas;)V

    .line 219
    return-void
.end method

.method public onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;
    .param p2, "fiv"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/DragState;

    if-nez v1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 76
    .local v0, "isCustomGrid":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 79
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    goto :goto_0

    .line 74
    .end local v0    # "isCustomGrid":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v2}, Lcom/android/launcher2/MenuAppsGrid;->allowCustomOrdering()Z

    move-result v2

    if-nez v2, :cond_0

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 399
    .local v1, "params":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .line 400
    .local v0, "idx":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v2

    rem-int v2, v0, v2

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 401
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v2

    div-int v2, v0, v2

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 404
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v2, v3, :cond_0

    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 413
    .end local v0    # "idx":I
    .end local v1    # "params":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onViewAddedToLayout(Landroid/view/View;)V

    .line 414
    return-void
.end method

.method realTimeReorder()V
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCell()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->snake(Lcom/android/launcher2/AppItem;)V

    .line 211
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 212
    return-void
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 6
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 353
    const/4 v2, 0x0

    .line 354
    .local v2, "rc":Z
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v3

    .line 355
    .local v3, "state":Lcom/android/launcher2/MenuAppsGrid$State;
    if-eqz v3, :cond_0

    sget-object v4, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v3, v4, :cond_0

    .line 356
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    .line 357
    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v5, :cond_1

    const/4 v0, 0x1

    .line 360
    .local v0, "isAlphaGrid":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->cancelAllFolderAnimations()V

    .line 362
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 363
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutMenu;->fillFromPageRightSnake()V

    .line 364
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 365
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v4, v1, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v4, :cond_0

    .line 366
    check-cast v1, Lcom/android/launcher2/MenuAppsGrid;

    .end local v1    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->clampCurrentPage()V

    .line 371
    .end local v0    # "isAlphaGrid":Z
    :cond_0
    return v2

    .line 358
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method snake(Lcom/android/launcher2/AppItem;)V
    .locals 10
    .param p1, "pushIn"    # Lcom/android/launcher2/AppItem;

    .prologue
    const/4 v9, 0x0

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCellIgnoreHidden()Z

    move-result v6

    if-nez v6, :cond_2

    .line 241
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 242
    .local v2, "moveOut":Lcom/android/launcher2/AppItem;
    iget-object v6, p0, Lcom/android/launcher2/CellLayoutMenu;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v2, v6, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountX()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getCountY()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x2

    invoke-virtual {v6, v7}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    .end local v2    # "moveOut":Lcom/android/launcher2/AppItem;
    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 246
    .restart local v2    # "moveOut":Lcom/android/launcher2/AppItem;
    :cond_0
    if-eqz v2, :cond_2

    .line 247
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v5

    .line 248
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_1

    .line 249
    check-cast v5, Lcom/android/launcher2/FolderIconView;

    .end local v5    # "view":Landroid/view/View;
    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 251
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 253
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 255
    .local v4, "screen":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/MenuAppsGrid;

    .line 257
    .local v1, "menuAppsGrid":Lcom/android/launcher2/MenuAppsGrid;
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v1, v6}, Lcom/android/launcher2/MenuAppsGrid;->getOrCreatePageAt(I)Lcom/android/launcher2/CellLayoutMenu;

    move-result-object v3

    .line 258
    .local v3, "p":Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v3, :cond_2

    .line 259
    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutMenu;->snake(Lcom/android/launcher2/AppItem;)V

    .line 263
    .end local v1    # "menuAppsGrid":Lcom/android/launcher2/MenuAppsGrid;
    .end local v2    # "moveOut":Lcom/android/launcher2/AppItem;
    .end local v3    # "p":Lcom/android/launcher2/CellLayoutMenu;
    .end local v4    # "screen":I
    :cond_2
    if-eqz p1, :cond_3

    .line 264
    iget v6, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 266
    iput v9, p0, Lcom/android/launcher2/CellLayoutMenu;->mTargetCell:I

    .line 269
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 270
    .local v0, "_h":Lcom/android/launcher2/BaseItem;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/CellLayoutMenu;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->realTimeReorder()V

    .line 272
    iput-object v0, p0, Lcom/android/launcher2/CellLayoutMenu;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 273
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getScreen()I

    move-result v6

    invoke-virtual {p0, p1, v9, v6}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 276
    .end local v0    # "_h":Lcom/android/launcher2/BaseItem;
    :cond_3
    return-void
.end method

.method undoSnake(Z)Lcom/android/launcher2/AppItem;
    .locals 7
    .param p1, "first"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 315
    if-nez p1, :cond_1

    iget v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    if-nez v4, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-object v1

    .line 318
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->existsEmptyCellIgnoreHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    :cond_2
    const/4 v1, 0x0

    .line 321
    .local v1, "moveOut":Lcom/android/launcher2/AppItem;
    if-nez p1, :cond_4

    .line 324
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .end local v1    # "moveOut":Lcom/android/launcher2/AppItem;
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 325
    .restart local v1    # "moveOut":Lcom/android/launcher2/AppItem;
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v1, v4, :cond_3

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .end local v1    # "moveOut":Lcom/android/launcher2/AppItem;
    check-cast v1, Lcom/android/launcher2/AppItem;

    .line 328
    .restart local v1    # "moveOut":Lcom/android/launcher2/AppItem;
    :cond_3
    if-eqz v1, :cond_4

    .line 329
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutMenu;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 330
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 331
    iget v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/launcher2/CellLayoutMenu;->mNumItemsPushedIn:I

    .line 335
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 336
    .local v3, "screen":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/MenuAppsGrid;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayoutMenu;

    .line 337
    .local v2, "p":Lcom/android/launcher2/CellLayoutMenu;
    if-eqz v2, :cond_0

    .line 338
    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutMenu;->undoSnake(Z)Lcom/android/launcher2/AppItem;

    move-result-object v0

    .line 339
    .local v0, "fromRight":Lcom/android/launcher2/AppItem;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->cancelAllFolderAnimations()V

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->closeLayoutGap()V

    .line 344
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutMenu;->getPageItemCount()I

    move-result v4

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/launcher2/CellLayoutMenu;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutMenu;->addItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0
.end method
