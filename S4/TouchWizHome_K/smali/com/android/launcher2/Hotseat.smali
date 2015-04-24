.class public Lcom/android/launcher2/Hotseat;
.super Landroid/widget/FrameLayout;
.source "Hotseat.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/CellLayoutContainer;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Hotseat$3;
    }
.end annotation


# static fields
.field private static final HOTSEAT_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "Hotseat"


# instance fields
.field private isFromDND:Z

.field private isSecretItem:Z

.field private isWidgetItem:Z

.field private itemFromMenu:Z

.field private mBackground:Landroid/view/View;

.field mContent:Lcom/android/launcher2/CellLayoutHotseat;

.field private mDragInContentArea:Z

.field private mEntered:Z

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mIsLandscape:Z

.field private final mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

.field private mMaxCellCount:I

.field private mShowHotseatTitle:Z

.field private mWorkspace:Lcom/android/launcher2/Workspace;

.field private tmp:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 524
    new-instance v0, Lcom/android/launcher2/Hotseat$2;

    invoke-direct {v0}, Lcom/android/launcher2/Hotseat$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/Hotseat;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Hotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v0, Lcom/android/launcher2/Hotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Hotseat$1;-><init>(Lcom/android/launcher2/Hotseat;)V

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    .line 206
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    .line 208
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->isSecretItem:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    .line 442
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    .line 461
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    .line 466
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/Hotseat;)Lcom/android/launcher2/HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Hotseat;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/Hotseat;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/Hotseat;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    return v0
.end method

.method public static normalizeContents(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    sget-object v3, Lcom/android/launcher2/Hotseat;->HOTSEAT_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 553
    .local v0, "changes":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 554
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeItem;

    .line 555
    .local v2, "item":Lcom/android/launcher2/HomeItem;
    iget v3, v2, Lcom/android/launcher2/HomeItem;->mScreen:I

    if-eq v3, v1, :cond_0

    .line 556
    iput v1, v2, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 557
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 560
    .end local v2    # "item":Lcom/android/launcher2/HomeItem;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 561
    invoke-static {p0, v0}, Lcom/android/launcher2/LauncherModel;->moveItemsInDatabase(Landroid/content/Context;Ljava/util/List;)V

    .line 563
    :cond_2
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/HomeItem;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutHotseat;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    return v0
.end method

.method checkHotSeatInteraction(Lcom/android/launcher2/DragState;ILandroid/view/View;)Z
    .locals 9
    .param p1, "dragState"    # Lcom/android/launcher2/DragState;
    .param p2, "action"    # I
    .param p3, "dragOverView"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 374
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v4

    .line 375
    .local v4, "view":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 376
    .local v0, "dragItem":Lcom/android/launcher2/BaseItem;
    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    .line 377
    .local v3, "isWidget":Z
    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_0

    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v8, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v7, v8, :cond_0

    iget-object v7, v0, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-eqz v7, :cond_3

    :cond_0
    move v2, v5

    .line 380
    .local v2, "fromApps":Z
    :goto_0
    packed-switch p2, :pswitch_data_0

    .end local p3    # "dragOverView":Landroid/view/View;
    :cond_1
    :goto_1
    move v5, v6

    .line 436
    :cond_2
    :goto_2
    return v5

    .end local v2    # "fromApps":Z
    .restart local p3    # "dragOverView":Landroid/view/View;
    :cond_3
    move v2, v6

    .line 377
    goto :goto_0

    .line 382
    .restart local v2    # "fromApps":Z
    :pswitch_0
    iget-object v7, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v7

    if-eqz v7, :cond_4

    instance-of v7, p3, Lcom/android/launcher2/AllappsIcon;

    if-nez v7, :cond_2

    .line 384
    :cond_4
    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 387
    :cond_5
    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_REPLACEHOTSEATAREAINEDITMODE:Z

    if-nez v7, :cond_6

    .line 388
    if-nez v2, :cond_6

    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 393
    :cond_6
    if-nez v3, :cond_8

    if-nez v2, :cond_8

    if-eq p3, v4, :cond_8

    if-eqz p3, :cond_8

    iget-object v7, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v7}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 394
    instance-of v6, p3, Lcom/android/launcher2/FolderIconView;

    if-eqz v6, :cond_7

    .line 397
    invoke-static {v4}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v1

    .line 398
    .local v1, "dragOrigin":Lcom/android/launcher2/DragOrigin;
    instance-of v6, v1, Lcom/android/launcher2/CellLayoutNoGap;

    if-nez v6, :cond_2

    .line 402
    .end local v1    # "dragOrigin":Lcom/android/launcher2/DragOrigin;
    :cond_7
    invoke-virtual {p1, p3}, Lcom/android/launcher2/DragState;->initiateSwap(Landroid/view/View;)V

    goto :goto_2

    .line 406
    :cond_8
    if-eqz v3, :cond_1

    goto :goto_2

    .line 413
    :pswitch_1
    iget-boolean v7, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v7, :cond_1

    .line 414
    if-nez v3, :cond_2

    if-eqz p3, :cond_1

    if-eq p3, v4, :cond_1

    goto :goto_2

    .line 422
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    goto :goto_1

    .line 425
    :pswitch_3
    iget-boolean v5, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    if-eqz v5, :cond_1

    .line 426
    iput-boolean v6, p0, Lcom/android/launcher2/Hotseat;->mEntered:Z

    .line 427
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    goto :goto_1

    .line 430
    :pswitch_4
    if-eqz p3, :cond_1

    instance-of v5, p3, Lcom/android/launcher2/FolderIconView;

    if-eqz v5, :cond_1

    .line 431
    check-cast p3, Lcom/android/launcher2/FolderIconView;

    .end local p3    # "dragOverView":Landroid/view/View;
    invoke-virtual {p3}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    goto :goto_1

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 12
    .param p1, "workspace"    # Lcom/android/launcher2/Workspace;
    .param p2, "oldState"    # Lcom/android/launcher2/Workspace$State;
    .param p3, "newState"    # Lcom/android/launcher2/Workspace$State;
    .param p4, "item"    # Lcom/android/launcher2/BaseItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/Workspace;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/Workspace$State;",
            "Lcom/android/launcher2/BaseItem;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p5, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 229
    .local v3, "context":Landroid/content/Context;
    const/4 v4, 0x0

    .line 230
    .local v4, "drag":Z
    const/4 v7, 0x0

    .line 231
    .local v7, "shrink":Z
    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v8, :cond_9

    .line 232
    const/4 v7, 0x1

    .line 233
    sget-object v8, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-ne p2, v8, :cond_0

    .line 234
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    .line 239
    :cond_0
    :goto_0
    if-eqz p4, :cond_2

    .line 240
    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v8, v9, :cond_1

    move-object/from16 v0, p4

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v9, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v8, v9, :cond_1

    move-object/from16 v0, p4

    instance-of v8, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v8, :cond_b

    :cond_1
    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    .line 242
    invoke-static/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    .line 244
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher2/BaseItem;->getFromDND()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    .line 252
    :cond_2
    if-nez v7, :cond_3

    if-eqz v4, :cond_c

    .line 253
    :cond_3
    const v8, 0x7f050001

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 254
    .local v2, "animator":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 255
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    const v8, 0x7f05000c

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 258
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 259
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher2/CellLayoutHotseat;->setAllAppsIconDimState(ZZZ)V

    .line 263
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v8

    if-nez v8, :cond_5

    :cond_4
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    if-nez v8, :cond_5

    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    if-eqz v8, :cond_6

    .line 264
    :cond_5
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V

    .line 290
    :cond_6
    :goto_2
    sget-object v8, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-eq p3, v8, :cond_7

    sget-object v8, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v8, :cond_f

    .line 291
    :cond_7
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v6

    .line 292
    .local v6, "itemCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v6, :cond_f

    .line 293
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8, v5}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 294
    .local v1, "Childview":Landroid/view/View;
    instance-of v8, v1, Lcom/android/launcher2/FolderIconView;

    if-eqz v8, :cond_8

    check-cast v1, Lcom/android/launcher2/FolderIconView;

    .end local v1    # "Childview":Landroid/view/View;
    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 292
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 235
    .end local v2    # "animator":Landroid/animation/Animator;
    .end local v5    # "i":I
    .end local v6    # "itemCount":I
    :cond_9
    sget-object v8, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v8, :cond_0

    .line 236
    if-eqz p4, :cond_a

    const/4 v4, 0x1

    :goto_4
    goto/16 :goto_0

    :cond_a
    const/4 v4, 0x0

    goto :goto_4

    .line 240
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 270
    :cond_c
    const/high16 v8, 0x7f050000

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 271
    .restart local v2    # "animator":Landroid/animation/Animator;
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 272
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    const v8, 0x7f05000d

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 275
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v2, v8}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 276
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/launcher2/CellLayoutHotseat;->setAllAppsIconDimState(ZZZ)V

    .line 279
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v8}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v8

    if-nez v8, :cond_e

    :cond_d
    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    if-nez v8, :cond_e

    iget-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    if-eqz v8, :cond_6

    .line 280
    :cond_e
    iget-object v8, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {p0, v8, v9, v10}, Lcom/android/launcher2/Hotseat;->setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V

    .line 281
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->itemFromMenu:Z

    .line 282
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isWidgetItem:Z

    .line 283
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Hotseat;->isFromDND:Z

    goto :goto_2

    .line 298
    :cond_f
    const v8, 0x7f050001

    invoke-static {v3, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 299
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 300
    invoke-virtual {v2, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 301
    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "aCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 137
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 138
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 139
    return-void
.end method

.method getCellXFromOrder(I)I
    .locals 1
    .param p1, "rank"    # I

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "rank":I
    :cond_0
    return p1
.end method

.method getCellYFromOrder(II)I
    .locals 1
    .param p1, "rank"    # I
    .param p2, "size"    # I

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    sub-int v0, p2, p1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->getDragOutline(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getLayout()Lcom/android/launcher2/CellLayout;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    return-object v0
.end method

.method getOrderInHotseat(II)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    sub-int/2addr v0, p2

    add-int/lit8 p1, v0, -0x1

    .end local p1    # "x":I
    :cond_0
    return p1
.end method

.method public getWorkspace()Lcom/android/launcher2/Workspace;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    return-object v0
.end method

.method isLandscape()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 311
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    const/4 v8, 0x0

    .line 320
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 329
    :cond_0
    return-void

    .line 322
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 324
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 325
    .local v2, "l":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 326
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 327
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 338
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 9
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    const/4 v8, 0x2

    .line 347
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 356
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 350
    .local v2, "l":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v0

    .line 351
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 352
    invoke-virtual {v2, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 351
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    sget-object v4, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragEndedWithItem(Lcom/android/launcher2/BaseItem;)V

    .line 365
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    const/4 v7, 0x0

    .line 473
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 517
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v3

    return v3

    .line 477
    :pswitch_1
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 479
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/DragState;

    move-object v0, v3

    .line 482
    .local v0, "dragState":Lcom/android/launcher2/DragState;
    :goto_1
    iget-object v3, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eq v3, p0, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Lcom/android/launcher2/CellLayout;

    if-eqz v3, :cond_0

    .line 483
    iget-object v1, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 484
    .local v1, "l":Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    goto :goto_0

    .line 479
    .end local v0    # "dragState":Lcom/android/launcher2/DragState;
    .end local v1    # "l":Lcom/android/launcher2/CellLayout;
    :cond_1
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    .line 493
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v3

    if-nez v3, :cond_0

    .line 495
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher2/CellLayoutHotseat;->pointToCellExact(II[I)V

    .line 496
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v4, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/launcher2/Hotseat;->tmp:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    .line 498
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    if-eqz v2, :cond_0

    .line 499
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayoutHotseat;->onDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_0

    .line 510
    .end local v2    # "v":Landroid/view/View;
    :pswitch_3
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iput-boolean v7, v3, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    .line 511
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 512
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->cancelRealTimeReorder()V

    .line 513
    iget-object v3, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutHotseat;->clearDragOutlines()V

    goto/16 :goto_0

    .line 473
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onDragStartedWithItem(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onDragStartedWithItem(Landroid/view/View;)V

    .line 361
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 159
    const v0, 0x7f0f0057

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayoutHotseat;

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    .line 160
    const v0, 0x7f0f008d

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Hotseat;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Hotseat;->mBackground:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-static {p0, v0}, Lcom/android/launcher2/HotseatSwapAnimator;->create(Lcom/android/launcher2/Hotseat;Lcom/android/launcher2/CellLayout;)Lcom/android/launcher2/HotseatSwapAnimator;

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->resetLayout()V

    .line 164
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 571
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 572
    .local v0, "action":I
    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    if-nez v2, :cond_1

    .line 583
    :cond_0
    :goto_0
    return v1

    .line 574
    :cond_1
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 576
    :pswitch_0
    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->isHoveringAreaX(F)I

    move-result v2

    if-eqz v2, :cond_0

    .line 577
    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/Workspace;->setHoveringSpenIcon(I)V

    .line 578
    const/4 v1, 0x1

    goto :goto_0

    .line 574
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    .line 600
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->isTouchResizeFrame(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 602
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne v0, v1, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 591
    iget-object v0, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 592
    const/4 v0, 0x1

    .line 594
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reapplyIconViewStyles()V
    .locals 12

    .prologue
    const v11, 0x7f11001a

    const v10, 0x7f110019

    .line 179
    const v2, 0x7f110019

    .line 180
    .local v2, "appIconStyle":I
    const v8, 0x7f11001a

    .line 182
    .local v8, "folderIconStyle":I
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 183
    .local v4, "context":Landroid/content/Context;
    invoke-static {v4, v10}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 184
    .local v0, "aivTextView":Landroid/content/res/TypedArray;
    invoke-static {v4, v10}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 186
    .local v1, "aivView":Landroid/content/res/TypedArray;
    invoke-static {v4, v11}, Lcom/android/launcher2/AppIconView;->getTextViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 187
    .local v5, "fivTextView":Landroid/content/res/TypedArray;
    invoke-static {v4, v11}, Lcom/android/launcher2/AppIconView;->getViewStyle(Landroid/content/Context;I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 189
    .local v6, "fivView":Landroid/content/res/TypedArray;
    iget-object v10, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    .local v9, "j":I
    :goto_0
    if-ltz v9, :cond_2

    .line 190
    iget-object v10, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v10, v9}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v3

    .line 191
    .local v3, "childView":Landroid/view/View;
    instance-of v10, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v10, :cond_1

    move-object v7, v3

    .line 192
    check-cast v7, Lcom/android/launcher2/FolderIconView;

    .line 193
    .local v7, "folderIcon":Lcom/android/launcher2/FolderIconView;
    invoke-virtual {v7, v6, v5}, Lcom/android/launcher2/FolderIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 196
    invoke-virtual {v7}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 189
    .end local v3    # "childView":Landroid/view/View;
    .end local v7    # "folderIcon":Lcom/android/launcher2/FolderIconView;
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 197
    .restart local v3    # "childView":Landroid/view/View;
    :cond_1
    instance-of v10, v3, Lcom/android/launcher2/AppIconView;

    if-eqz v10, :cond_0

    .line 198
    check-cast v3, Lcom/android/launcher2/AppIconView;

    .end local v3    # "childView":Landroid/view/View;
    invoke-virtual {v3, v1, v0}, Lcom/android/launcher2/AppIconView;->applyStyle(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    goto :goto_1

    .line 202
    :cond_2
    invoke-static {v1, v0}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 203
    invoke-static {v6, v5}, Lcom/android/launcher2/AppIconView;->recycleViewStyles(Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;)V

    .line 204
    return-void
.end method

.method resetLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 167
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutHotseat;->removeAllViewsInLayout()V

    .line 168
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 170
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher2/Utilities;->isCamera()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f0b0013

    :goto_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    .line 173
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-boolean v2, p0, Lcom/android/launcher2/Hotseat;->mShowHotseatTitle:Z

    invoke-virtual {v1, p0, v2}, Lcom/android/launcher2/CellLayoutHotseat;->inflateAllAppsIcon(Lcom/android/launcher2/Hotseat;Z)Lcom/android/launcher2/AllappsIcon;

    .line 174
    return-void

    .line 170
    :cond_0
    const v1, 0x7f0b0012

    goto :goto_0
.end method

.method public setDimHotseatItems(Lcom/android/launcher2/CellLayoutHotseat;ZZ)V
    .locals 4
    .param p1, "content"    # Lcom/android/launcher2/CellLayoutHotseat;
    .param p2, "isDim"    # Z
    .param p3, "isEnable"    # Z

    .prologue
    .line 451
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayoutHotseat;->getPageChildCount()I

    move-result v2

    .line 452
    .local v2, "itemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 453
    invoke-virtual {p1, v1}, Lcom/android/launcher2/CellLayoutHotseat;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppIconView;

    .line 454
    .local v0, "app":Lcom/android/launcher2/AppIconView;
    if-eqz v0, :cond_0

    .line 455
    const/4 v3, 0x1

    invoke-virtual {v0, p2, v3}, Lcom/android/launcher2/AppIconView;->setDimmed(ZZ)V

    .line 456
    invoke-virtual {v0, p3}, Lcom/android/launcher2/AppIconView;->setEnabled(Z)V

    .line 452
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 459
    .end local v0    # "app":Lcom/android/launcher2/AppIconView;
    :cond_1
    return-void
.end method

.method setDragInContentArea(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 463
    iput-boolean p1, p0, Lcom/android/launcher2/Hotseat;->mDragInContentArea:Z

    .line 464
    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeView;)V
    .locals 4
    .param p1, "homeView"    # Lcom/android/launcher2/HomeView;

    .prologue
    const/4 v1, 0x0

    .line 112
    iput-object p1, p0, Lcom/android/launcher2/Hotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 113
    invoke-virtual {p1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Hotseat;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 115
    sget-object v2, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Hotseat;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher2/Hotseat;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 118
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x320

    if-lt v2, v3, :cond_0

    .line 119
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    .line 123
    :goto_0
    const v1, 0x7f0c0025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0c0026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    .line 126
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    invoke-virtual {v1, p1}, Lcom/android/launcher2/CellLayoutHotseat;->setHomeView(Lcom/android/launcher2/HomeView;)V

    .line 127
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-object v2, p0, Lcom/android/launcher2/Hotseat;->mItemViewBuilder:Lcom/android/launcher2/ItemViewBuilder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->setItemViewBuilder(Lcom/android/launcher2/ItemViewBuilder;)V

    .line 128
    iget-object v1, p0, Lcom/android/launcher2/Hotseat;->mContent:Lcom/android/launcher2/CellLayoutHotseat;

    iget-boolean v2, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    iget v3, p0, Lcom/android/launcher2/Hotseat;->mMaxCellCount:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->setup(ZI)V

    .line 129
    return-void

    .line 121
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher2/Hotseat;->mIsLandscape:Z

    goto :goto_0
.end method
