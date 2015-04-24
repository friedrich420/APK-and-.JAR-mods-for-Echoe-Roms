.class public Lcom/android/launcher2/WidgetFolder;
.super Landroid/widget/LinearLayout;
.source "WidgetFolder.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;,
        Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;,
        Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

.field folderLocation:[I

.field iconLocation:[I

.field private isOpened:Z

.field private mCellCountX:I

.field private mCellCountY:I

.field mExpandDuration:I

.field private mFolderViewIndex:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

.field mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

.field private mOpenWidgetGrid:Landroid/widget/GridLayout;

.field mOtherParent:Landroid/view/ViewGroup;

.field private mPageRequested:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mRunningTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/widget/TextView;

.field private mUninstallOverlay:Landroid/graphics/drawable/Drawable;

.field private mWidgetFolderAvailableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetFolderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/PagedViewWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetFolderView:Lcom/android/launcher2/WidgetFolderView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/android/launcher2/WidgetFolder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    .line 110
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    .line 111
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    .line 717
    new-instance v0, Lcom/android/launcher2/WidgetFolder$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetFolder$4;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x2

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    .line 110
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    .line 111
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    .line 717
    new-instance v0, Lcom/android/launcher2/WidgetFolder$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetFolder$4;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x2

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    .line 110
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    .line 111
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    .line 717
    new-instance v0, Lcom/android/launcher2/WidgetFolder$4;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetFolder$4;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

    .line 67
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/WidgetFolder;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/WidgetFolder;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mPageRequested:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/WidgetFolder;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/WidgetFolder;

    .prologue
    .line 34
    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/WidgetFolder;Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/WidgetFolder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;
    .param p3, "x3"    # Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/WidgetFolder;->loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/WidgetFolder;Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/WidgetFolder;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/WidgetFolder;->onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/WidgetFolder;Landroid/widget/GridLayout;ILjava/util/List;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/WidgetFolder;
    .param p1, "x1"    # Landroid/widget/GridLayout;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 34
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/WidgetFolder;->prepareLoadWidgetPreviewsTask(Landroid/widget/GridLayout;ILjava/util/List;III)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/WidgetFolder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/WidgetFolder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/WidgetFolder;)Landroid/widget/GridLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/WidgetFolder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/WidgetFolder;)Lcom/android/launcher2/MenuWidgets;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/WidgetFolder;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/WidgetFolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/WidgetFolder;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->layoutChildren()V

    return-void
.end method

.method private calculateFolderViewIndex()V
    .locals 6

    .prologue
    .line 755
    iget v4, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountY:I

    mul-int v2, v4, v5

    .line 756
    .local v2, "numOfItemsPerPageBefore":I
    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v4, v4, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iget-object v5, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v5, v5, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    mul-int v1, v4, v5

    .line 757
    .local v1, "numOfItemsPerPageAfter":I
    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v4}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v0

    .line 759
    .local v0, "currentPage":I
    mul-int v4, v0, v2

    iget v5, p0, Lcom/android/launcher2/WidgetFolder;->mFolderViewIndex:I

    add-int v3, v4, v5

    .line 761
    .local v3, "totalIndex":I
    div-int v4, v3, v1

    iput v4, p0, Lcom/android/launcher2/WidgetFolder;->mPageRequested:I

    .line 762
    rem-int v4, v3, v1

    iput v4, p0, Lcom/android/launcher2/WidgetFolder;->mFolderViewIndex:I

    .line 763
    return-void
.end method

.method private createFolderItems()V
    .locals 14

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 165
    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    .line 166
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    const-string v2, " Creating Widget View"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v8, v1, :cond_4

    .line 168
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/AvailableWidget;

    .line 170
    .local v6, "availableWidget":Lcom/android/launcher2/AvailableWidget;
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030003

    iget-object v13, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    invoke-virtual {v1, v2, v13, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/PagedViewWidget;

    .line 173
    .local v12, "widget":Lcom/android/launcher2/PagedViewWidget;
    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New PagedViewWidget "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, " for "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ")"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    .line 176
    const/4 v1, 0x2

    new-array v7, v1, [I

    .line 177
    .local v7, "cellSpan":[I
    invoke-interface {v6, v7}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 178
    aget v1, v7, v3

    aget v2, v7, v5

    invoke-virtual {v12, v1, v2}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    .line 179
    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    sget-object v1, Lcom/android/launcher2/FocusHelper;->WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v12, v1}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 187
    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    rem-int v9, v8, v1

    .line 188
    .local v9, "ix":I
    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    div-int v10, v8, v1

    .line 189
    .local v10, "iy":I
    new-instance v11, Landroid/widget/GridLayout$LayoutParams;

    sget-object v1, Landroid/widget/GridLayout;->START:Landroid/widget/GridLayout$Alignment;

    invoke-static {v10, v1}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    sget-object v2, Landroid/widget/GridLayout;->TOP:Landroid/widget/GridLayout$Alignment;

    invoke-static {v9, v2}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v2

    invoke-direct {v11, v1, v2}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 192
    .local v11, "lp":Landroid/widget/GridLayout$LayoutParams;
    const v1, 0x800033

    invoke-virtual {v11, v1}, Landroid/widget/GridLayout$LayoutParams;->setGravity(I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 194
    if-lez v9, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v1, v1, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_1
    iput v1, v11, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 197
    :goto_2
    if-lez v10, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v1, v1, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    :goto_3
    iput v1, v11, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 198
    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v6}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "; row: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", col: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", lm: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v13, v11, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, ", tm: "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v13, v11, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    invoke-virtual {v1, v12, v11}, Landroid/widget/GridLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_0
    move v1, v3

    .line 194
    goto :goto_1

    .line 196
    :cond_1
    if-lez v9, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v1, v1, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_4
    iput v1, v11, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_4

    :cond_3
    move v1, v3

    .line 197
    goto :goto_3

    .line 202
    .end local v6    # "availableWidget":Lcom/android/launcher2/AvailableWidget;
    .end local v7    # "cellSpan":[I
    .end local v9    # "ix":I
    .end local v10    # "iy":I
    .end local v11    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v12    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    iget v2, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 204
    new-instance v0, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;

    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;-><init>(Lcom/android/launcher2/WidgetFolder;Landroid/widget/GridLayout;ILjava/util/ArrayList;Z)V

    .line 205
    .local v0, "blr":Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;
    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Running runnable instantly "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " page "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " items "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {v0}, Lcom/android/launcher2/WidgetFolder$BitmapLoaderRunnable;->run()V

    .line 207
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v1, v2, :cond_5

    .line 208
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->refreshModel()V

    .line 209
    :cond_5
    return-void
.end method

.method private createPagedViewWidgetList()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 396
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 398
    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 399
    .local v0, "availableWidget":Lcom/android/launcher2/AvailableWidget;
    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f030003

    iget-object v6, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/PagedViewWidget;

    .line 402
    .local v3, "widget":Lcom/android/launcher2/PagedViewWidget;
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    .line 403
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 404
    .local v1, "cellSpan":[I
    invoke-interface {v0, v1}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 405
    aget v4, v1, v7

    const/4 v5, 0x1

    aget v5, v1, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    .line 406
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 408
    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "availableWidget":Lcom/android/launcher2/AvailableWidget;
    .end local v1    # "cellSpan":[I
    .end local v3    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_0
    return-void
.end method

.method private getFolderWidth()I
    .locals 5

    .prologue
    .line 317
    const/4 v1, 0x0

    .line 318
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    if-le v2, v3, :cond_0

    iget v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    .line 320
    .local v0, "itemCount":I
    :goto_0
    iget v2, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    mul-int/2addr v2, v0

    add-int/lit8 v3, v0, -0x1

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v4, v4, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e006f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0070

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v1, v2, v3

    .line 324
    return v1

    .line 318
    .end local v0    # "itemCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private getNumberOfRows()I
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getThreadPriorityForPage(I)I
    .locals 3
    .param p1, "page"    # I

    .prologue
    const/4 v1, 0x0

    .line 446
    add-int/lit8 v2, p1, 0x0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 447
    .local v0, "pageDiff":I
    if-gtz v0, :cond_1

    .line 449
    const/4 v1, -0x1

    .line 455
    :cond_0
    :goto_0
    return v1

    .line 450
    :cond_1
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    goto :goto_0
.end method

.method private layoutChildren()V
    .locals 14

    .prologue
    .line 792
    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    .line 796
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v2

    .line 797
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 799
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 800
    .local v0, "availableWidget":Lcom/android/launcher2/AvailableWidget;
    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    invoke-virtual {v12, v3}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/PagedViewWidget;

    .line 802
    .local v11, "widget":Lcom/android/launcher2/PagedViewWidget;
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    .line 803
    const/4 v12, 0x2

    new-array v1, v12, [I

    .line 804
    .local v1, "cellSpan":[I
    invoke-interface {v0, v1}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 805
    const/4 v12, 0x0

    aget v12, v1, v12

    const/4 v13, 0x1

    aget v13, v1, v13

    invoke-virtual {v11, v12, v13}, Lcom/android/launcher2/PagedViewWidget;->applyCellSpan(II)V

    .line 806
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 808
    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 809
    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PagedViewWidget;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 810
    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PagedViewWidget;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 811
    sget-object v12, Lcom/android/launcher2/FocusHelper;->WIDGET_FOLDER_WIDGET_ITEM_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PagedViewWidget;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 813
    const v12, 0x7f0f0017

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PagedViewWidget;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 814
    .local v9, "preview":Landroid/widget/ImageView;
    invoke-virtual {v9}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 815
    .local v7, "linear":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    .line 816
    .local v10, "previewParam":Landroid/view/ViewGroup$LayoutParams;
    iget v12, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 817
    iget v12, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    iput v12, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 818
    invoke-virtual {v7, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 821
    iget v12, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    rem-int v5, v3, v12

    .line 822
    .local v5, "ix":I
    iget v12, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    div-int v6, v3, v12

    .line 823
    .local v6, "iy":I
    invoke-virtual {v11}, Lcom/android/launcher2/PagedViewWidget;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/GridLayout$LayoutParams;

    .line 824
    .local v8, "lp":Landroid/widget/GridLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 825
    if-lez v5, :cond_0

    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v12, v12, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_1
    iput v12, v8, Landroid/widget/GridLayout$LayoutParams;->rightMargin:I

    .line 828
    :goto_2
    if-lez v6, :cond_3

    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v12, v12, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    :goto_3
    iput v12, v8, Landroid/widget/GridLayout$LayoutParams;->topMargin:I

    .line 829
    const/high16 v12, -0x80000000

    invoke-static {v12}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 830
    const/high16 v12, -0x80000000

    invoke-static {v12}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v12

    iput-object v12, v8, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 831
    invoke-virtual {v11, v8}, Lcom/android/launcher2/PagedViewWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 797
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 825
    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    .line 827
    :cond_1
    if-lez v5, :cond_2

    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v12, v12, Lcom/android/launcher2/MenuWidgets;->mCellGapX:I

    :goto_4
    iput v12, v8, Landroid/widget/GridLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    :cond_2
    const/4 v12, 0x0

    goto :goto_4

    .line 828
    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    .line 833
    .end local v0    # "availableWidget":Lcom/android/launcher2/AvailableWidget;
    .end local v1    # "cellSpan":[I
    .end local v5    # "ix":I
    .end local v6    # "iy":I
    .end local v7    # "linear":Landroid/view/View;
    .end local v8    # "lp":Landroid/widget/GridLayout$LayoutParams;
    .end local v9    # "preview":Landroid/widget/ImageView;
    .end local v10    # "previewParam":Landroid/view/ViewGroup$LayoutParams;
    .end local v11    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_4
    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    iget v13, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    invoke-virtual {v12, v13}, Landroid/widget/GridLayout;->setColumnCount(I)V

    .line 835
    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v12

    sget-object v13, Lcom/android/launcher2/MenuWidgets$WidgetState;->UNINSTALL:Lcom/android/launcher2/MenuWidgets$WidgetState;

    if-ne v12, v13, :cond_5

    .line 836
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->refreshModel()V

    .line 837
    :cond_5
    return-void
.end method

.method private loadWidgetPreviewsInBackground(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 10
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "task"    # Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;
    .param p3, "data"    # Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    .prologue
    .line 633
    if-nez p3, :cond_1

    .line 665
    :cond_0
    return-void

    .line 636
    :cond_1
    sget-object v6, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadWidgetPreviewsInBackground who: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " page: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->page:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " thread: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " data: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " items: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    if-eqz p2, :cond_2

    .line 640
    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->syncThreadPriority()V

    .line 644
    :cond_2
    iget-object v4, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    .line 645
    .local v4, "images":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Bitmap;>;"
    iget v2, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cellWidth:I

    .line 646
    .local v2, "cellWidth":I
    iget v1, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cellHeight:I

    .line 647
    .local v1, "cellHeight":I
    iget-object v6, p3, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 648
    .local v0, "availableWidget":Ljava/lang/Object;
    instance-of v6, v0, Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 649
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    :cond_4
    instance-of v6, v0, Lcom/android/launcher2/AvailableWidget;

    if-eqz v6, :cond_3

    .line 652
    if-eqz p2, :cond_5

    .line 654
    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->wasCancelRequested()Z

    move-result v6

    if-nez v6, :cond_0

    .line 657
    invoke-virtual {p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->syncThreadPriority()V

    :cond_5
    move-object v6, v0

    .line 659
    check-cast v6, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v6, v2, v1}, Lcom/android/launcher2/AvailableWidget;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 660
    .local v5, "preview":Landroid/graphics/Bitmap;
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    sget-object v6, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Got widget preview "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from widget "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .end local v0    # "availableWidget":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onSyncWidgetPageItems(Ljava/lang/String;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;)V
    .locals 12
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "data"    # Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    .prologue
    .line 676
    if-eqz p2, :cond_4

    .line 678
    iget v4, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->page:I

    .line 679
    .local v4, "page":I
    sget-object v8, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSyncWidgetPageItems who: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " page: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " items: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " thread: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v3, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->layout:Landroid/widget/GridLayout;

    .line 683
    .local v3, "layout":Landroid/widget/GridLayout;
    if-eqz v3, :cond_4

    .line 685
    iget-object v8, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 686
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 687
    invoke-virtual {v3, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PagedViewWidget;

    .line 688
    .local v7, "widget":Lcom/android/launcher2/PagedViewWidget;
    if-eqz v7, :cond_1

    .line 689
    iget-object v8, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 691
    .local v0, "availableWidget":Lcom/android/launcher2/AvailableWidget;
    iget-object v8, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v8, v8, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 692
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/launcher2/PagedViewWidget;->applyLabel(Ljava/lang/String;)V

    .line 696
    :goto_1
    iget-object v8, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->generatedImages:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 697
    .local v5, "preview":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_1

    .line 698
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget v9, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cellWidth:I

    if-ge v8, v9, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget v9, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->cellHeight:I

    if-lt v8, v9, :cond_3

    :cond_0
    const/4 v6, 0x1

    .line 700
    .local v6, "scale":Z
    :goto_2
    sget-object v9, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "About to apply preview "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " on widget "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p2, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;->items:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AvailableWidget;

    invoke-interface {v8}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v8, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v8, v5}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v2, v6, v9}, Lcom/android/launcher2/PagedViewWidget;->applyPreview(Lcom/android/launcher2/FastBitmapDrawable;IZZ)V

    .line 686
    .end local v0    # "availableWidget":Lcom/android/launcher2/AvailableWidget;
    .end local v5    # "preview":Landroid/graphics/Bitmap;
    .end local v6    # "scale":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 694
    .restart local v0    # "availableWidget":Lcom/android/launcher2/AvailableWidget;
    :cond_2
    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->getLabel()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v9, v9, Lcom/android/launcher2/MenuWidgets;->mSearchString:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher2/PagedViewWidget;->applyHighLightLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 698
    .restart local v5    # "preview":Landroid/graphics/Bitmap;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 708
    .end local v0    # "availableWidget":Lcom/android/launcher2/AvailableWidget;
    .end local v1    # "count":I
    .end local v2    # "i":I
    .end local v3    # "layout":Landroid/widget/GridLayout;
    .end local v4    # "page":I
    .end local v5    # "preview":Landroid/graphics/Bitmap;
    .end local v7    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_4
    return-void
.end method

.method private prepareForOpenAnimate()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    .line 113
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getFolderView()Lcom/android/launcher2/WidgetFolderView;

    move-result-object v0

    .line 114
    .local v0, "iconView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 115
    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    invoke-virtual {v0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 117
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v1

    .line 119
    .local v1, "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    invoke-virtual {v3, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 120
    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    aget v4, v3, v8

    iget v5, v1, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    add-int/2addr v4, v5

    aput v4, v3, v8

    .line 121
    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    aget v4, v3, v6

    iget v5, v1, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    add-int/2addr v4, v5

    aput v4, v3, v6

    .line 124
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/MenuView;

    if-eqz v3, :cond_0

    .line 126
    const/4 v3, 0x2

    new-array v2, v3, [I

    .line 127
    .local v2, "otherParentLoc":[I
    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mOtherParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 128
    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    aget v4, v2, v6

    aput v4, v3, v6

    .line 130
    .end local v2    # "otherParentLoc":[I
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    aget v3, v3, v8

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    aget v4, v4, v8

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/WidgetFolder;->setPivotX(F)V

    .line 131
    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->iconLocation:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/android/launcher2/WidgetFolder;->folderLocation:[I

    aget v4, v4, v6

    sub-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0, v3}, Lcom/android/launcher2/WidgetFolder;->setPivotY(F)V

    .line 133
    invoke-virtual {p0, v7}, Lcom/android/launcher2/WidgetFolder;->setScaleX(F)V

    .line 134
    invoke-virtual {p0, v7}, Lcom/android/launcher2/WidgetFolder;->setScaleY(F)V

    .line 135
    invoke-virtual {p0, v7}, Lcom/android/launcher2/WidgetFolder;->setAlpha(F)V

    .line 137
    .end local v1    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    :cond_1
    return-void
.end method

.method private prepareLoadWidgetPreviewsTask(Landroid/widget/GridLayout;ILjava/util/List;III)V
    .locals 12
    .param p1, "layout"    # Landroid/widget/GridLayout;
    .param p2, "page"    # I
    .param p4, "cellWidth"    # I
    .param p5, "cellHeight"    # I
    .param p6, "cellCountX"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/GridLayout;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;III)V"
        }
    .end annotation

    .prologue
    .line 467
    .local p3, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 469
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 470
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;

    .line 471
    .local v10, "task":Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;
    iget v11, v10, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->page:I

    .line 472
    .local v11, "taskPage":I
    if-ne v11, p2, :cond_0

    .line 475
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->requestCancel(Z)Z

    .line 476
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 478
    :cond_0
    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not pruned"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-direct {p0, v11}, Lcom/android/launcher2/WidgetFolder;->getThreadPriorityForPage(I)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->setThreadPriority(I)V

    goto :goto_0

    .line 484
    .end local v10    # "task":Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;
    .end local v11    # "taskPage":I
    :cond_1
    new-instance v0, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    new-instance v6, Lcom/android/launcher2/WidgetFolder$2;

    invoke-direct {v6, p0}, Lcom/android/launcher2/WidgetFolder$2;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    new-instance v7, Lcom/android/launcher2/WidgetFolder$3;

    invoke-direct {v7, p0}, Lcom/android/launcher2/WidgetFolder$3;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;-><init>(Landroid/widget/GridLayout;ILjava/util/List;IILcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData$AsyncTaskCallback;)V

    .line 521
    .local v0, "pageData":Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;
    new-instance v9, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;

    invoke-direct {v9, p2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;-><init>(I)V

    .line 522
    .local v9, "t":Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/launcher2/WidgetFolder$AsyncTaskPageData;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v9, v1, v2}, Lcom/android/launcher2/WidgetFolder$AppsCustomizeAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 523
    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New AppsCustomizeAsyncTask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pageData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    return-void
.end method


# virtual methods
.method public animateOpen()V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->centerAboutIcon()V

    .line 283
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->prepareForOpenAnimate()V

    .line 285
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->onFolderOpen()V

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/WidgetFolder$1;

    invoke-direct {v1, p0}, Lcom/android/launcher2/WidgetFolder$1;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 296
    return-void
.end method

.method public centerAboutIcon()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    .line 329
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 330
    .local v8, "realParent":Landroid/view/ViewGroup;
    iget-object v11, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget-object v12, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v12}, Lcom/android/launcher2/MenuWidgets;->getCurrentPage()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/android/launcher2/MenuWidgets;->getPageAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher2/PagedViewGridLayout;

    iget v12, p0, Lcom/android/launcher2/WidgetFolder;->mFolderViewIndex:I

    invoke-virtual {v11, v12}, Lcom/android/launcher2/PagedViewGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 331
    .local v2, "icon":Landroid/view/View;
    if-nez v2, :cond_0

    .line 369
    :goto_0
    return-void

    .line 334
    :cond_0
    const/4 v11, 0x2

    new-array v3, v11, [I

    .line 335
    .local v3, "iconLocation":[I
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    invoke-static {v3, v11, v2}, Lcom/android/launcher2/Utilities;->getLocationWithRespectTo([ILandroid/view/ViewParent;Landroid/view/View;)V

    .line 337
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v5

    .line 338
    .local v5, "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getFolderWidth()I

    move-result v10

    .line 339
    .local v10, "width":I
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->getNumberOfRows()I

    move-result v7

    .line 340
    .local v7, "numRows":I
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c001e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 342
    .local v6, "maxRows":I
    if-le v6, v7, :cond_2

    .line 344
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v11

    mul-int/2addr v11, v7

    add-int/lit8 v12, v7, -0x1

    iget-object v13, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v13, v13, Lcom/android/launcher2/MenuWidgets;->mCellGapY:I

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e006d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e006c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e006b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0e0067

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    add-int v0, v11, v12

    .line 350
    .local v0, "contentHt":I
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    add-int v1, v11, v0

    .line 352
    .local v1, "height":I
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v11

    sub-int/2addr v11, v10

    div-int/lit8 v4, v11, 0x2

    .line 354
    .local v4, "left":I
    aget v11, v3, v14

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    add-int v9, v11, v12

    .line 356
    .local v9, "top":I
    add-int v11, v9, v1

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getBottom()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTop()I

    move-result v13

    sub-int/2addr v12, v13

    if-le v11, v12, :cond_1

    .line 357
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getBottom()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTop()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int v9, v11, v1

    .line 359
    :cond_1
    iput v10, v5, Lcom/android/launcher2/HomeView$LayoutParams;->width:I

    .line 360
    iput v1, v5, Lcom/android/launcher2/HomeView$LayoutParams;->height:I

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v11

    if-ne v11, v14, :cond_3

    .line 362
    iput v4, v5, Lcom/android/launcher2/HomeView$LayoutParams;->rightMargin:I

    .line 365
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0c001c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    add-int/2addr v11, v9

    iput v11, v5, Lcom/android/launcher2/HomeView$LayoutParams;->topMargin:I

    .line 366
    iput v4, v5, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    .line 367
    iput v9, v5, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    .line 368
    invoke-virtual {p0, v5}, Lcom/android/launcher2/WidgetFolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .end local v0    # "contentHt":I
    .end local v1    # "height":I
    .end local v4    # "left":I
    .end local v9    # "top":I
    :cond_2
    move v7, v6

    .line 342
    goto/16 :goto_1

    .line 364
    .restart local v0    # "contentHt":I
    .restart local v1    # "height":I
    .restart local v4    # "left":I
    .restart local v9    # "top":I
    :cond_3
    iput v4, v5, Lcom/android/launcher2/HomeView$LayoutParams;->leftMargin:I

    goto :goto_2
.end method

.method public close(Landroid/view/ViewGroup;)Z
    .locals 1
    .param p1, "realParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 271
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolder;->setOpened(Z)V

    .line 272
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 273
    const/4 v0, 0x1

    return v0
.end method

.method public closeFolder()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;->onFolderClose()V

    .line 393
    return-void
.end method

.method getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/HomeView$LayoutParams;

    if-eqz v1, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .end local v0    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    check-cast v0, Lcom/android/launcher2/HomeView$LayoutParams;

    .line 307
    .restart local v0    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    :goto_0
    return-object v0

    .line 303
    :cond_0
    new-instance v0, Lcom/android/launcher2/HomeView$LayoutParams;

    .end local v0    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    invoke-direct {v0, v2, v2}, Lcom/android/launcher2/HomeView$LayoutParams;-><init>(II)V

    .line 304
    .restart local v0    # "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/HomeView$LayoutParams;->customPosition:Z

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public getFolderView()Lcom/android/launcher2/WidgetFolderView;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderView:Lcom/android/launcher2/WidgetFolderView;

    return-object v0
.end method

.method public getGridLayout()Landroid/widget/GridLayout;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    return-object v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 246
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v1, :cond_0

    .line 247
    sget-boolean v1, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WidgetFolder::onAttachedToWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 250
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 251
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 745
    sget-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->calculateFolderViewIndex()V

    .line 747
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    .line 748
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    .line 749
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    .line 750
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    iget v0, v0, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountY:I

    .line 751
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 255
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    if-eqz v1, :cond_0

    .line 256
    sget-boolean v1, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WidgetFolder::onDetachedFromWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuWidgets;->getWidgetState()Lcom/android/launcher2/MenuWidgets$WidgetState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 259
    .local v0, "treeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 260
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderItems:Ljava/util/ArrayList;

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 75
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mExpandDuration:I

    .line 76
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    .line 81
    :cond_0
    const v0, 0x7f0f00e2

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->MENU_WIDGET_FOLDER_TITLE_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mRunningTasks:Ljava/util/List;

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewWidth:I

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mPreviewHeight:I

    .line 88
    const v0, 0x7f0f00e3

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    .line 90
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "arg0"    # Landroid/view/MotionEvent;

    .prologue
    .line 241
    const/4 v0, 0x1

    return v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 3
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 264
    sget-boolean v0, Lcom/android/launcher2/WidgetFolder;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WidgetFolder::onTouchModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    if-nez p1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 268
    :cond_1
    return-void
.end method

.method public open(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Z)V
    .locals 3
    .param p1, "realParent"    # Landroid/view/ViewGroup;
    .param p2, "pseudoParent"    # Landroid/view/ViewGroup;
    .param p3, "animate"    # Z

    .prologue
    .line 142
    iget-boolean v1, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/WidgetFolder;->setOpened(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 150
    :cond_2
    iput-object p2, p0, Lcom/android/launcher2/WidgetFolder;->mOtherParent:Landroid/view/ViewGroup;

    .line 151
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 152
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->createFolderItems()V

    .line 153
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/launcher2/WidgetFolder;->mOpenWidgetGrid:Landroid/widget/GridLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewWidget;

    .line 155
    .local v0, "firstChild":Lcom/android/launcher2/PagedViewWidget;
    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewWidget;->requestFocus()Z

    .line 159
    .end local v0    # "firstChild":Lcom/android/launcher2/PagedViewWidget;
    :cond_3
    if-eqz p3, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->animateOpen()V

    goto :goto_0
.end method

.method public refreshModel()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 216
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/android/launcher2/WidgetFolder;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 217
    .local v3, "scrollView":Landroid/view/ViewGroup;
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 218
    .local v4, "scrollViewChild":Landroid/view/ViewGroup;
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/GridLayout;

    .line 220
    .local v2, "page":Landroid/widget/GridLayout;
    invoke-virtual {v2}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 221
    invoke-virtual {v2, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/PagedViewWidget;

    .line 222
    .local v6, "widget":Lcom/android/launcher2/PagedViewWidget;
    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewWidget;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 223
    .local v5, "tag":Ljava/lang/Object;
    instance-of v7, v5, Lcom/android/launcher2/HomePendingItem;

    if-eqz v7, :cond_0

    move-object v1, v5

    .line 224
    check-cast v1, Lcom/android/launcher2/HomePendingItem;

    .line 225
    .local v1, "item":Lcom/android/launcher2/HomePendingItem;
    iget-object v7, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    invoke-virtual {v7, v1}, Lcom/android/launcher2/MenuWidgets;->isUninstallable(Lcom/android/launcher2/HomePendingItem;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 227
    sget-object v7, Lcom/android/launcher2/WidgetFolder;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/android/launcher2/HomePendingItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is Uninstallable"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v7, p0, Lcom/android/launcher2/WidgetFolder;->mUninstallOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 220
    .end local v1    # "item":Lcom/android/launcher2/HomePendingItem;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 232
    .restart local v1    # "item":Lcom/android/launcher2/HomePendingItem;
    :cond_1
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher2/PagedViewWidget;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 236
    .end local v1    # "item":Lcom/android/launcher2/HomePendingItem;
    .end local v5    # "tag":Ljava/lang/Object;
    .end local v6    # "widget":Lcom/android/launcher2/PagedViewWidget;
    :cond_2
    return-void
.end method

.method public repositionOpenFolder()V
    .locals 1

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/android/launcher2/WidgetFolder;->centerAboutIcon()V

    .line 767
    new-instance v0, Lcom/android/launcher2/WidgetFolder$5;

    invoke-direct {v0, p0}, Lcom/android/launcher2/WidgetFolder$5;-><init>(Lcom/android/launcher2/WidgetFolder;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WidgetFolder;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 789
    return-void
.end method

.method public setOpenWidgetFolderTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher2/WidgetFolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method public setOpened(Z)V
    .locals 0
    .param p1, "open"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, Lcom/android/launcher2/WidgetFolder;->isOpened:Z

    .line 389
    return-void
.end method

.method public setWidgetFolderItems(Ljava/util/ArrayList;Lcom/android/launcher2/MenuWidgets;)V
    .locals 1
    .param p2, "menuWidgets"    # Lcom/android/launcher2/MenuWidgets;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;",
            "Lcom/android/launcher2/MenuWidgets;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    iput-object p2, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgets:Lcom/android/launcher2/MenuWidgets;

    .line 94
    iget v0, p2, Lcom/android/launcher2/MenuWidgets;->mCellCountX:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountX:I

    .line 95
    iget v0, p2, Lcom/android/launcher2/MenuWidgets;->mCellCountY:I

    iput v0, p0, Lcom/android/launcher2/WidgetFolder;->mCellCountY:I

    .line 97
    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderAvailableItems:Ljava/util/ArrayList;

    .line 98
    invoke-direct {p0}, Lcom/android/launcher2/WidgetFolder;->createPagedViewWidgetList()V

    .line 100
    return-void
.end method

.method public setWidgetFolderManager(Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;)V
    .locals 0
    .param p1, "menuWidgetsFolderMgr"    # Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder;->mMenuWidgetsFolderMgr:Lcom/android/launcher2/MenuWidgets$MenuWidgetsFolderMgr;

    .line 279
    return-void
.end method

.method public setWidgetFolderView(Lcom/android/launcher2/WidgetFolderView;)V
    .locals 0
    .param p1, "folderView"    # Lcom/android/launcher2/WidgetFolderView;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/launcher2/WidgetFolder;->mWidgetFolderView:Lcom/android/launcher2/WidgetFolderView;

    .line 373
    return-void
.end method

.method public setWidgetFolderViewIndex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 376
    iput p1, p0, Lcom/android/launcher2/WidgetFolder;->mFolderViewIndex:I

    .line 377
    return-void
.end method
