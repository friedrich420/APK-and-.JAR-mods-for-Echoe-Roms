.class public Lcom/android/launcher2/CellLayoutHotseat;
.super Lcom/android/launcher2/CellLayoutNoGap;
.source "CellLayoutHotseat.java"


# static fields
.field private static final DEBUGGABLE:Z

.field static final TAG:Ljava/lang/String; = "CellLayoutHotseat"

.field private static cpuBooster:Landroid/os/DVFSHelper;

.field private static gpuBooster:Landroid/os/DVFSHelper;


# instance fields
.field private mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

.field private mBinding:Z

.field private mDragState:Lcom/android/launcher2/DragState;

.field private mHasEnded:Z

.field mIsLandscape:Z

.field mMaxCellCount:I

.field private mRemoveEmptySpacePosted:Z

.field private mReorderPosted:Z

.field private final mTmpDragXY:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    .line 40
    sput-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    .line 41
    sput-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayoutHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayoutHotseat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CellLayoutNoGap;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    .line 85
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    .line 241
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    .line 384
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    .line 493
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    .line 60
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getCpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    .line 61
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getGpuBoosterObject()Landroid/os/DVFSHelper;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/CellLayoutHotseat;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/CellLayoutHotseat;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/CellLayoutHotseat;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    return p1
.end method

.method private animateAllChildren()V
    .locals 6

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 230
    .local v1, "count":I
    sget-boolean v3, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v3, :cond_0

    const-string v3, "CellLayoutHotseat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "animateAllChildren "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 232
    iget-object v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 233
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-ne v3, v4, :cond_2

    .line 231
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 234
    :cond_2
    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_3

    move-object v3, v0

    .line 235
    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 237
    :cond_3
    const/16 v3, 0xe6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->animateIcon(Landroid/view/View;IZZ)Z

    goto :goto_1

    .line 239
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    return-void
.end method

.method private getAllappsPos()I
    .locals 3

    .prologue
    .line 489
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v1}, Lcom/android/launcher2/AllappsIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 490
    .local v0, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/CellLayoutHotseat;->cellToPosition(II)I

    move-result v1

    return v1
.end method

.method private setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Lcom/android/launcher2/AllappsIcon;
    .param p3, "showHotseatTitle"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 576
    if-nez p2, :cond_0

    .line 628
    :goto_0
    return-void

    .line 579
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    .line 580
    .local v4, "size":I
    int-to-float v5, v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {v7, v5, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v4, v5

    .line 582
    const/4 v0, 0x0

    .line 584
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-boolean v5, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v5, :cond_1

    .line 585
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v2

    .line 586
    .local v2, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v2}, Lcom/android/launcher2/ThemeLoader;->loadAppsIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 589
    .end local v2    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_1
    if-nez v0, :cond_2

    .line 590
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0200ba

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 591
    :cond_2
    invoke-static {v0, v4, v4, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 592
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 596
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v8, v1, v8, v8}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 599
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 600
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d000c

    invoke-virtual {v5, v6, v7, v7}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    .line 601
    .local v3, "scaleFactor":F
    invoke-virtual {p2, v3}, Lcom/android/launcher2/AllappsIcon;->setScaleX(F)V

    .line 602
    invoke-virtual {p2, v3}, Lcom/android/launcher2/AllappsIcon;->setScaleY(F)V

    .line 604
    .end local v3    # "scaleFactor":F
    :cond_3
    if-eqz p3, :cond_4

    .line 605
    const v5, 0x7f100021

    invoke-virtual {p2, v5}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 607
    :cond_4
    const v5, 0x7f1000d9

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/android/launcher2/AllappsIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 608
    sget-object v5, Lcom/android/launcher2/FocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {p2, v5}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 609
    new-instance v5, Lcom/android/launcher2/CellLayoutHotseat$4;

    invoke-direct {v5, p0}, Lcom/android/launcher2/CellLayoutHotseat$4;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    invoke-virtual {p2, v5}, Lcom/android/launcher2/AllappsIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateViewToLandscape()V
    .locals 6

    .prologue
    .line 638
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 639
    .local v3, "l":Lcom/android/launcher2/CellLayoutChildren;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 640
    invoke-virtual {v3, v1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 641
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/BaseItem;

    .line 642
    .local v2, "item":Lcom/android/launcher2/BaseItem;
    if-nez v2, :cond_0

    .line 639
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 644
    .local v4, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->setCellFromPosition(Lcom/android/launcher2/CellLayout$LayoutParams;I)V

    .line 645
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 647
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "item":Lcom/android/launcher2/BaseItem;
    .end local v4    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    return-void
.end method


# virtual methods
.method CLIP_BY_DEFAULT()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 10
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 204
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v1

    add-int/lit8 v7, v1, 0x1

    .line 205
    .local v7, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v7, :cond_1

    .line 206
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v9}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v1, :cond_0

    .line 208
    check-cast v0, Lcom/android/launcher2/FolderIconView;

    .end local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->cancelFolderAnims()V

    .line 205
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    move-result v8

    .line 213
    .local v8, "e":I
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-eq v8, v1, :cond_3

    .line 214
    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    .line 218
    :cond_3
    sget-boolean v1, Lcom/android/launcher2/HomeView;->sIsBindHotseat:Z

    if-nez v1, :cond_4

    .line 219
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 220
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    const-string v2, "HSAD"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 225
    :cond_4
    :goto_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->addItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    return v1

    .line 222
    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    const-string v2, "HSAD"

    const-string v3, "Folder"

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1
.end method

.method public beginBind(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    const/4 v1, 0x1

    .line 495
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    .line 497
    iput-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAnimateChildInstantly:Z

    .line 500
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 501
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 505
    :goto_0
    return-void

    .line 503
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_0
.end method

.method cellToPosition(II)I
    .locals 2
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 446
    .local v0, "c":I
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_0

    sub-int p1, v0, p2

    .end local p1    # "cellX":I
    :cond_0
    return p1
.end method

.method public endBind()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 508
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    .line 509
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    .line 510
    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAnimateChildInstantly:Z

    .line 511
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 512
    return-void
.end method

.method existsEmptyCell()Z
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    return v0
.end method

.method public getAllAppsIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    .prologue
    .line 650
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method getCellCount()I
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v0

    goto :goto_0
.end method

.method getCellXFromPos(I)I
    .locals 1
    .param p1, "idx"    # I

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .end local p1    # "idx":I
    :cond_0
    return p1
.end method

.method getCellYFromPos(I)I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 440
    .local v0, "c":I
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_0

    sub-int v1, v0, p1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 462
    const-wide/16 v0, -0x65

    return-wide v0
.end method

.method public getDragState()Lcom/android/launcher2/DragState;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    return-object v0
.end method

.method public inflateAllAppsIcon(Lcom/android/launcher2/Hotseat;Z)Lcom/android/launcher2/AllappsIcon;
    .locals 8
    .param p1, "hs"    # Lcom/android/launcher2/Hotseat;
    .param p2, "showTitle"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 558
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v0

    .line 559
    .local v0, "cl":Lcom/android/launcher2/CellLayoutChildren;
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 560
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 562
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f030002

    invoke-virtual {v3, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/AllappsIcon;

    iput-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    .line 563
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-direct {p0, v1, v4, p2}, Lcom/android/launcher2/CellLayoutHotseat;->setupAllAppsIcon(Landroid/content/Context;Lcom/android/launcher2/AllappsIcon;Z)V

    .line 564
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v5, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v5, v6, v6, v7, v7}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 568
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 569
    .local v2, "firstItem":Landroid/view/View;
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 570
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 572
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v4
.end method

.method public isFull()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_1

    .line 82
    :cond_0
    :goto_0
    return v1

    .line 81
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 82
    .local v0, "count":I
    iget v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method makeEmptySpace()I
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 329
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v2

    add-int/lit8 v0, v2, 0x2

    .line 330
    .local v0, "count":I
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 333
    :cond_0
    sget-boolean v2, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v2, :cond_1

    const-string v2, "CellLayoutHotseat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeEmptySpace check:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " < "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v2

    if-ge v2, v0, :cond_6

    .line 335
    sget-boolean v2, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v2, :cond_2

    const-string v2, "CellLayoutHotseat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeEmptySpace count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v2, :cond_4

    .line 338
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-ge v2, v3, :cond_3

    .line 339
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 344
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    .line 345
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v2

    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v3, :cond_5

    :goto_1
    sub-int v1, v2, v1

    .line 347
    :goto_2
    return v1

    .line 341
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-ge v2, v3, :cond_3

    .line 342
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_0

    .line 345
    :cond_5
    const/4 v1, 0x2

    goto :goto_1

    .line 347
    :cond_6
    const/4 v1, -0x1

    goto :goto_2
.end method

.method public moveAppIcon()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 312
    iget-object v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHomeView:Lcom/android/launcher2/HomeView;

    if-nez v3, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    .line 314
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 315
    .local v1, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v0, 0x0

    .line 316
    .local v0, "changed":Z
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 317
    iput v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 318
    const/4 v0, 0x1

    .line 323
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 324
    const/16 v3, 0xe6

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher2/CellLayoutHotseat;->animateIcon(Landroid/view/View;IZZ)Z

    goto :goto_0

    .line 319
    :cond_3
    iget-boolean v3, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 321
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 92
    invoke-static/range {p1 .. p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 93
    const/4 v13, 0x0

    .line 199
    :goto_0
    return v13

    .line 95
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    .line 96
    .local v2, "action":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->getContainer()Lcom/android/launcher2/CellLayoutContainer;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/Hotseat;

    .line 98
    .local v10, "parent":Lcom/android/launcher2/Hotseat;
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/DragState;

    move-object v5, v13

    .line 101
    .local v5, "dragState":Lcom/android/launcher2/DragState;
    :goto_1
    if-nez v10, :cond_2

    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto :goto_0

    .line 98
    .end local v5    # "dragState":Lcom/android/launcher2/DragState;
    :cond_1
    sget-object v5, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    .line 104
    .restart local v5    # "dragState":Lcom/android/launcher2/DragState;
    :cond_2
    iget-object v13, v5, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v13, v13, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-nez v13, :cond_3

    iget-object v13, v5, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v13, v13, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v13, :cond_4

    .line 105
    :cond_3
    const/4 v13, 0x5

    if-ne v2, v13, :cond_7

    .line 106
    invoke-virtual {v10}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->disableRollNavigation()V

    .line 111
    :cond_4
    :goto_2
    iget-object v3, v5, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    .line 112
    .local v3, "dragItem":Lcom/android/launcher2/BaseItem;
    iget-object v13, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v14, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v13, v14, :cond_5

    iget-object v13, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v14, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v13, v14, :cond_5

    iget-object v13, v5, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v13, :cond_8

    instance-of v13, v3, Lcom/android/launcher2/HomePendingItem;

    if-eqz v13, :cond_8

    :cond_5
    const/4 v6, 0x1

    .line 116
    .local v6, "fromApps":Z
    :goto_3
    const/4 v13, 0x1

    if-ne v2, v13, :cond_6

    .line 117
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    .line 118
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    .line 120
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    goto :goto_0

    .line 107
    .end local v3    # "dragItem":Lcom/android/launcher2/BaseItem;
    .end local v6    # "fromApps":Z
    :cond_7
    const/4 v13, 0x6

    if-ne v2, v13, :cond_4

    .line 108
    invoke-virtual {v10}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->enableRollNavigation()V

    goto :goto_2

    .line 112
    .restart local v3    # "dragItem":Lcom/android/launcher2/BaseItem;
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 122
    .restart local v6    # "fromApps":Z
    :cond_9
    if-nez v6, :cond_a

    iget-object v13, v5, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v13, v13, Lcom/android/launcher2/HomeItem;

    if-eqz v13, :cond_a

    .line 123
    iget-object v9, v5, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v9, Lcom/android/launcher2/HomeItem;

    .line 127
    .local v9, "item":Lcom/android/launcher2/HomeItem;
    iget-wide v14, v9, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_a

    .line 128
    const/4 v13, 0x2

    if-ne v2, v13, :cond_a

    invoke-virtual {v10}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v13

    if-eqz v13, :cond_a

    .line 129
    invoke-virtual {v10}, Lcom/android/launcher2/Hotseat;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/Workspace;->closeFolder()V

    .line 130
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 135
    .end local v9    # "item":Lcom/android/launcher2/HomeItem;
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    .line 136
    .local v11, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    .line 137
    .local v12, "y":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/android/launcher2/CellLayoutHotseat;->pointToCellExact(II[I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/CellLayoutHotseat;->mTmpDragXY:[I

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/android/launcher2/CellLayoutHotseat;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 143
    .local v4, "dragOverView":Landroid/view/View;
    if-eqz v6, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v13

    if-nez v13, :cond_c

    :cond_b
    invoke-virtual {v10, v5, v2, v4}, Lcom/android/launcher2/Hotseat;->checkHotSeatInteraction(Lcom/android/launcher2/DragState;ILandroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 144
    :cond_c
    const/4 v13, 0x3

    if-ne v2, v13, :cond_e

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 146
    :cond_d
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    .line 149
    :cond_e
    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v13

    invoke-static {v13}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v8

    .line 150
    .local v8, "isWidget":Z
    if-eqz v8, :cond_f

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 152
    :cond_f
    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/BaseItem;->getFromDND()Z

    move-result v7

    .line 153
    .local v7, "isFromDND":Z
    if-eqz v7, :cond_10

    const/4 v13, 0x1

    goto/16 :goto_0

    .line 154
    :cond_10
    const/4 v13, 0x4

    if-eq v2, v13, :cond_11

    .line 155
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    .line 158
    :cond_11
    const/4 v13, 0x5

    if-ne v2, v13, :cond_12

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->isFull()Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    .line 161
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    if-eqz v13, :cond_13

    .line 162
    const/4 v13, 0x4

    if-ne v2, v13, :cond_14

    .line 166
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    .line 176
    :cond_13
    packed-switch v2, :pswitch_data_0

    .line 199
    :goto_4
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 168
    :cond_14
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/CellLayoutNoGap;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v13

    goto/16 :goto_0

    .line 178
    :pswitch_0
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Lcom/android/launcher2/Hotseat;->setDragInContentArea(Z)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->cancelRealTimeReorder()V

    .line 181
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 183
    :pswitch_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    .line 184
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    .line 186
    invoke-virtual {v5}, Lcom/android/launcher2/DragState;->onEnd()V

    .line 187
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    .line 188
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    goto :goto_4

    .line 192
    :pswitch_2
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderImmediately:Z

    .line 193
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher2/CellLayoutHotseat;->mDrawDragOutlines:Z

    .line 194
    const/4 v13, 0x1

    invoke-virtual {v10, v13}, Lcom/android/launcher2/Hotseat;->setDragInContentArea(Z)V

    goto :goto_4

    .line 176
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onFailedDrop(Lcom/android/launcher2/BaseItem;)V
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 286
    const/4 v0, 0x0

    .line 287
    .local v0, "pos":I
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    iget v0, v1, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    .line 290
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 291
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    .line 293
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->realTimeReorder(I)V

    .line 295
    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 296
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    .line 297
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 655
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 656
    .local v0, "action":I
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v2, "Launcher_touch"

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 657
    if-nez v0, :cond_0

    .line 659
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    const-string v2, "Launcher_touch"

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(Ljava/lang/String;)V

    .line 662
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 663
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->acquire()V

    .line 666
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 667
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->cpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    .line 670
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 671
    sget-object v1, Lcom/android/launcher2/CellLayoutHotseat;->gpuBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->release()V

    .line 674
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 520
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 521
    .local v10, "widthSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 523
    .local v11, "widthSpecSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 524
    .local v4, "heightSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 526
    .local v5, "heightSpecSize":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountX()I

    move-result v0

    .line 527
    .local v0, "cellCountX":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCountY()I

    move-result v1

    .line 528
    .local v1, "cellCountY":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingLeft()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingRight()I

    move-result v13

    add-int v8, v12, v13

    .line 529
    .local v8, "paddingX":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPaddingBottom()I

    move-result v13

    add-int v9, v12, v13

    .line 530
    .local v9, "paddingY":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellWidth()I

    move-result v12

    mul-int v6, v12, v0

    .line 531
    .local v6, "minSizeX":I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellHeight()I

    move-result v12

    mul-int v7, v12, v1

    .line 533
    .local v7, "minSizeY":I
    if-nez v10, :cond_0

    .line 534
    add-int v11, v6, v8

    .line 536
    :cond_0
    if-nez v4, :cond_1

    .line 537
    add-int v5, v7, v9

    .line 539
    :cond_1
    const/4 v2, 0x0

    .line 540
    .local v2, "gapX":I
    const/4 v3, 0x0

    .line 541
    .local v3, "gapY":I
    const/4 v12, 0x1

    if-le v0, v12, :cond_2

    .line 542
    sub-int v12, v11, v6

    sub-int/2addr v12, v8

    add-int/lit8 v13, v0, 0x1

    div-int v2, v12, v13

    .line 543
    if-gez v2, :cond_2

    .line 544
    const/4 v2, 0x0

    .line 546
    :cond_2
    const/4 v12, 0x1

    if-le v1, v12, :cond_3

    .line 547
    sub-int v12, v5, v7

    sub-int/2addr v12, v9

    add-int/lit8 v13, v1, 0x1

    div-int v3, v12, v13

    .line 548
    if-gez v3, :cond_3

    .line 549
    const/4 v3, 0x0

    .line 551
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->setGaps(II)V

    .line 552
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->refreshCellDimension()V

    .line 553
    sget-boolean v12, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v12, :cond_4

    const-string v12, "CellLayoutHotseat"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setGaps("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_4
    invoke-super/range {p0 .. p2}, Lcom/android/launcher2/CellLayoutNoGap;->onMeasure(II)V

    .line 555
    return-void
.end method

.method public onViewAddedToLayout(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 451
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->onViewAddedToLayout(Landroid/view/View;)V

    .line 452
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mBinding:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 454
    .local v0, "item":Lcom/android/launcher2/HomeItem;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 455
    .local v1, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 456
    iget v2, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iput v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 458
    .end local v0    # "item":Lcom/android/launcher2/HomeItem;
    .end local v1    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method realTimeReorder()V
    .locals 4

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHasEnded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->findFirstEmptySpace()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsPos()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    .line 249
    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CellLayoutHotseat$1;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->findFirstEmptySpace()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getAllappsPos()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->makeEmptySpace()I

    .line 262
    :cond_3
    invoke-super {p0}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder()V

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderImmediately:Z

    goto :goto_0
.end method

.method public realTimeReorder(I)V
    .locals 4
    .param p1, "pos"    # I

    .prologue
    .line 268
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    if-eqz v0, :cond_0

    .line 281
    :goto_0
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mReorderPosted:Z

    .line 271
    new-instance v0, Lcom/android/launcher2/CellLayoutHotseat$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher2/CellLayoutHotseat$2;-><init>(Lcom/android/launcher2/CellLayoutHotseat;I)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 280
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    goto :goto_0
.end method

.method public removeAllItems()V
    .locals 3

    .prologue
    .line 376
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 377
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    iget-object v2, v2, Lcom/android/launcher2/CellLayoutChildren;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 378
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    if-eqz v1, :cond_0

    .line 379
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayoutHotseat;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 376
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    :cond_1
    return-void
.end method

.method public removeEmptySpace()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 386
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->hasAnimatingChild()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 387
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    if-eqz v1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    iput-boolean v4, p0, Lcom/android/launcher2/CellLayoutHotseat;->mRemoveEmptySpacePosted:Z

    .line 389
    new-instance v1, Lcom/android/launcher2/CellLayoutHotseat$3;

    invoke-direct {v1, p0}, Lcom/android/launcher2/CellLayoutHotseat$3;-><init>(Lcom/android/launcher2/CellLayoutHotseat;)V

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher2/CellLayoutHotseat;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getPageItemCount()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 399
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mHiddenItem:Lcom/android/launcher2/BaseItem;

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 402
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->getCellCount()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 404
    sget-boolean v1, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v1, :cond_4

    const-string v1, "CellLayoutHotseat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeEmptySpace count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_4
    iget v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    if-ge v1, v0, :cond_5

    .line 407
    iget v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    .line 409
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->closeLayoutGap()V

    .line 410
    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v1, :cond_6

    .line 411
    invoke-virtual {p0, v4, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 415
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->moveAppIcon()V

    goto :goto_0

    .line 413
    :cond_6
    invoke-virtual {p0, v0, v4}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    goto :goto_1
.end method

.method public removeItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 7
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    .line 360
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    .line 362
    .local v0, "rc":Z
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    if-nez v1, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 366
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 367
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    const-string v2, "HSDT"

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 371
    :goto_0
    return v0

    .line 369
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    const-string v2, "HSDT"

    const-string v3, "Folder"

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/android/launcher2/CellLayoutNoGap;->removeView(Landroid/view/View;)V

    .line 306
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayoutHotseat;->removeEmptySpace()V

    .line 308
    :cond_0
    return-void
.end method

.method public setAllAppsIconDimState(ZZZ)V
    .locals 1
    .param p1, "dimmed"    # Z
    .param p2, "invalidate"    # Z
    .param p3, "enabled"    # Z

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/AllappsIcon;->setDimmed(ZZ)V

    .line 633
    iget-object v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, p3}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    .line 635
    :cond_0
    return-void
.end method

.method public setGridSize(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 420
    sget-boolean v0, Lcom/android/launcher2/CellLayoutHotseat;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "CellLayoutHotseat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGridSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/CellLayoutNoGap;->setGridSize(II)V

    .line 423
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    if-eqz v0, :cond_1

    .line 426
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->updateViewToLandscape()V

    .line 429
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/CellLayoutHotseat;->animateAllChildren()V

    .line 430
    return-void
.end method

.method public setup(ZI)V
    .locals 1
    .param p1, "isLandscape"    # Z
    .param p2, "maxCellCount"    # I

    .prologue
    const/4 v0, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayoutHotseat;->mIsLandscape:Z

    .line 72
    iput p2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mMaxCellCount:I

    .line 76
    invoke-virtual {p0, v0, v0}, Lcom/android/launcher2/CellLayoutHotseat;->setGridSize(II)V

    .line 77
    return-void
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "dragOutline"    # Landroid/graphics/Bitmap;
    .param p3, "nearest"    # [I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I

    .prologue
    .line 472
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    if-eqz v2, :cond_2

    .line 473
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 474
    .local v0, "item":Lcom/android/launcher2/BaseItem;
    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    .line 486
    .end local v0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    return-void

    .line 475
    .restart local v0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    iget-object v2, v2, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDragState:Lcom/android/launcher2/DragState;

    invoke-virtual {v2}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher2/HomePendingItem;

    if-nez v2, :cond_0

    .line 478
    .end local v0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mDisabled:Z

    if-eqz v2, :cond_3

    .line 479
    iget-object v2, p0, Lcom/android/launcher2/CellLayoutHotseat;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v2}, Lcom/android/launcher2/AllappsIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 480
    .local v1, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v2, 0x0

    aget v2, p3, v2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    aget v2, p3, v2

    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v3, :cond_0

    .line 485
    .end local v1    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/CellLayoutNoGap;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;[III)V

    goto :goto_0
.end method
