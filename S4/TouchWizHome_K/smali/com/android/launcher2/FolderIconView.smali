.class public Lcom/android/launcher2/FolderIconView;
.super Lcom/android/launcher2/AppIconView;
.source "FolderIconView.java"

# interfaces
.implements Lcom/android/launcher2/DragReceivable;
.implements Lcom/android/launcher2/HomeFolderItem$FolderListener;


# static fields
.field public static final FOLDER_ICON_CNT:I = 0x6

.field public static final HOVER_FOLDER_ICON_CNT:I = 0x7

.field private static final HOVER_REMAIN:J = 0x7d0L

.field private static final HOVER_START_DURATION:J = 0x12cL

.field private static mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;


# instance fields
.field private Hover_Refresh_cnt:I

.field private USE_SET_INTEGRATOR_HAPTIC:Z

.field final mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

.field private mDimAmount:F

.field private mDraggedIconId:J

.field private mDraggingOver:Z

.field mDrawPlate:Z

.field private final mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

.field private mFolderHoveringStartTime:J

.field private mFolderItem:Lcom/android/launcher2/FolderItem;

.field private mFromThisFolder:Z

.field public mHasBounceItem:Z

.field final mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

.field mIgnoreSetAlphaOnDragExit:Z

.field private mLastAttachedFolder:Lcom/android/launcher2/Folder;

.field private mOnEnterDelayed:Ljava/lang/Runnable;

.field protected mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

.field protected mPlateBitmap:Landroid/graphics/Bitmap;

.field private mTmpPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/FolderIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/AppIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mIgnoreSetAlphaOnDragExit:Z

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    .line 67
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    .line 69
    iput v4, p0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    .line 71
    const v0, 0x3f0ccccd    # 0.55f

    iput v0, p0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    .line 73
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_FRAMEWORK_ENABLE_INTEGRATOR_HAPTIC"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->USE_SET_INTEGRATOR_HAPTIC:Z

    .line 82
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v2, 0xc8

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 93
    new-instance v0, Lcom/android/launcher2/ScalarAnimator;

    const-wide/16 v2, 0x1f4

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher2/ScalarAnimator;-><init>(JF)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    .line 236
    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    .line 466
    new-instance v0, Lcom/android/launcher2/FolderIconView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderIconView$2;-><init>(Lcom/android/launcher2/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mOnEnterDelayed:Ljava/lang/Runnable;

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 749
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mTmpPaint:Landroid/graphics/Paint;

    .line 983
    iput-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mHasBounceItem:Z

    .line 105
    new-instance v0, Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/launcher2/FolderAnimator;-><init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    .line 106
    return-void
.end method

.method private acceptDrop(Lcom/android/launcher2/DragState;)Z
    .locals 2
    .param p1, "dragState"    # Lcom/android/launcher2/DragState;

    .prologue
    .line 197
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    if-eq v1, p0, :cond_0

    .line 198
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v0

    .line 199
    .local v0, "item":Lcom/android/launcher2/BaseItem;
    if-eqz v0, :cond_0

    .line 200
    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const/4 v1, 0x1

    .line 204
    .end local v0    # "item":Lcom/android/launcher2/BaseItem;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderIconView;)Lcom/android/launcher2/FolderAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderIconView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderIconView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragEnter()V

    return-void
.end method

.method private drawPlate(Landroid/graphics/Canvas;)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v13

    .line 777
    .local v13, "h":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v10

    .line 778
    .local v10, "c":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mTmpPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    .line 779
    .local v19, "tmpPaint":Landroid/graphics/Paint;
    const/4 v11, 0x0

    .line 781
    .local v11, "filter":Landroid/graphics/ColorFilter;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v20

    if-nez v20, :cond_4

    .line 782
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v11

    .line 783
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 789
    :goto_0
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 790
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/FolderItem;

    .line 793
    .local v12, "folderItem":Lcom/android/launcher2/FolderItem;
    invoke-interface {v12}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 795
    .local v15, "openFolderBitmap":Landroid/graphics/Bitmap;
    invoke-interface {v12}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v20

    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderHighlightBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 798
    .local v14, "highlightFolderBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v9, v0

    .line 799
    .local v9, "bitmapWidth":F
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v8, v0

    .line 801
    .local v8, "bitmapHeight":F
    const/high16 v20, 0x40000000    # 2.0f

    div-float v6, v9, v20

    .line 802
    .local v6, "anchor_x":F
    const/high16 v20, 0x40000000    # 2.0f

    div-float v7, v8, v20

    .line 804
    .local v7, "anchor_y":F
    sget-boolean v20, Lcom/android/launcher2/FolderIconHelper;->DEBUG:Z

    if-eqz v20, :cond_0

    .line 805
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 806
    .local v16, "p":Landroid/graphics/Paint;
    const/high16 v20, 0x44ff0000    # 2040.0f

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 808
    new-instance v17, Landroid/graphics/Rect;

    const/16 v20, 0x0

    const/16 v21, 0x0

    float-to-int v0, v9

    move/from16 v22, v0

    float-to-int v0, v8

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 809
    .local v17, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 812
    .end local v16    # "p":Landroid/graphics/Paint;
    .end local v17    # "r":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 814
    move v5, v10

    .line 815
    .local v5, "alpha":F
    const/high16 v20, 0x437f0000    # 255.0f

    mul-float v20, v20, v5

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setTextAlpha(I)V

    .line 817
    const/high16 v20, 0x3f800000    # 1.0f

    const v21, 0x3dcccccd    # 0.1f

    mul-float v21, v21, v13

    add-float v18, v20, v21

    .line 819
    .local v18, "scale":F
    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 821
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 822
    const/16 v20, 0x0

    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getFolderPlateOffsetY()F

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 824
    :cond_1
    const/16 v20, 0x0

    cmpl-float v20, v13, v20

    if-lez v20, :cond_2

    .line 825
    mul-float v20, v5, v13

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 826
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 828
    :cond_2
    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v20, v13, v20

    if-gez v20, :cond_3

    .line 829
    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v13

    mul-float v20, v20, v5

    const/high16 v21, 0x437f0000    # 255.0f

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 830
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 833
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 834
    return-void

    .line 785
    .end local v5    # "alpha":F
    .end local v6    # "anchor_x":F
    .end local v7    # "anchor_y":F
    .end local v8    # "bitmapHeight":F
    .end local v9    # "bitmapWidth":F
    .end local v12    # "folderItem":Lcom/android/launcher2/FolderItem;
    .end local v14    # "highlightFolderBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "openFolderBitmap":Landroid/graphics/Bitmap;
    .end local v18    # "scale":F
    :cond_4
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v11

    .line 786
    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_0
.end method

.method private draw_(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 728
    iget-boolean v5, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    if-eqz v5, :cond_0

    .line 729
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    .line 730
    .local v0, "folderItem":Lcom/android/launcher2/FolderItem;
    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v5

    invoke-static {v5}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 732
    .local v2, "openFolderBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getHotseatScaleFactor()F

    move-result v1

    .line 734
    .local v1, "hotseatScale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 735
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollX()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v1

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 736
    .local v3, "x":F
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    add-float v4, v5, v6

    .line 737
    .local v4, "y":F
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 738
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 740
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawPlate(Landroid/graphics/Canvas;)V

    .line 741
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 746
    .end local v0    # "folderItem":Lcom/android/launcher2/FolderItem;
    .end local v1    # "hotseatScale":F
    .end local v2    # "openFolderBitmap":Landroid/graphics/Bitmap;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawIconOrText(Landroid/graphics/Canvas;)V

    .line 747
    return-void
.end method

.method private droppedInOurFolder(Lcom/android/launcher2/DragState;)Z
    .locals 5
    .param p1, "dragState"    # Lcom/android/launcher2/DragState;

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-virtual {p1}, Lcom/android/launcher2/DragState;->getReceiver()Lcom/android/launcher2/DragReceivable;

    move-result-object v1

    .line 347
    .local v1, "rec":Lcom/android/launcher2/DragReceivable;
    if-nez v1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v2

    .line 349
    :cond_1
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 351
    check-cast v0, Lcom/android/launcher2/CellLayoutNoGap;

    .line 352
    .local v0, "l":Lcom/android/launcher2/CellLayoutNoGap;
    iget-object v3, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_0

    .line 354
    iget-object v3, v0, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mInfo:Lcom/android/launcher2/FolderItem;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;
    .locals 6
    .param p1, "info"    # Lcom/android/launcher2/FolderItem;

    .prologue
    .line 852
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 853
    invoke-interface {p1, v0}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v1

    .line 854
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    iget-wide v2, v1, Lcom/android/launcher2/BaseItem;->mId:J

    iget-wide v4, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 858
    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    :goto_1
    return-object v1

    .line 852
    .restart local v1    # "item":Lcom/android/launcher2/BaseItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 858
    .end local v1    # "item":Lcom/android/launcher2/BaseItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getMenuAppsGridFragment()Lcom/android/launcher2/MenuAppsGridFragment;
    .locals 1

    .prologue
    .line 593
    sget-object v0, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    return-object v0
.end method

.method static mix(FFF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F
    .param p2, "mix"    # F

    .prologue
    .line 837
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    mul-float/2addr v0, p0

    mul-float v1, p1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private onDragEnter()V
    .locals 4

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isTransitioningRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mOnEnterDelayed:Ljava/lang/Runnable;

    const-wide/16 v2, 0x14

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 492
    :goto_0
    return-void

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 480
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto :goto_0
.end method

.method private resetPlateIfNeeded()V
    .locals 2

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 505
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 510
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->to(F)V

    .line 512
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 515
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto :goto_0
.end method

.method private resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V
    .locals 2
    .param p1, "dragState"    # Lcom/android/launcher2/DragState;

    .prologue
    const/4 v1, 0x0

    .line 520
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded()V

    .line 521
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 524
    if-eqz p1, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    .line 529
    :cond_0
    return-void
.end method

.method private setFolderItem(Lcom/android/launcher2/FolderItem;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/FolderItem;

    .prologue
    .line 888
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 891
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    .line 892
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v0, :cond_1

    .line 893
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->addListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 895
    :cond_1
    return-void
.end method

.method public static setMenuAppsGridFragment(Lcom/android/launcher2/MenuAppsGridFragment;)V
    .locals 0
    .param p0, "fragment"    # Lcom/android/launcher2/MenuAppsGridFragment;

    .prologue
    .line 589
    sput-object p0, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    .line 590
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/launcher2/BaseItem;)Z
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p1}, Lcom/android/launcher2/FolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    .line 210
    sget-object v0, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v1, 0x7f1000c6

    invoke-virtual {v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    .line 215
    const/4 v0, 0x1

    return v0
.end method

.method public applyBaseItem(Lcom/android/launcher2/BaseItem;)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 141
    iget-object v2, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 142
    .local v2, "icon":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 143
    .local v3, "iconBitmapSize":I
    const/4 v1, 0x0

    .line 147
    .local v1, "hasDefaultFolderIcon":Z
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e00c6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    .line 148
    .local v0, "appIconSize":I
    if-ne v3, v0, :cond_0

    .line 149
    const/4 v1, 0x1

    .line 151
    :cond_0
    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v4, v5, :cond_1

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_3

    :cond_1
    move-object v4, p1

    .line 153
    check-cast v4, Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v4}, Lcom/android/launcher2/FolderIconView;->setFolderItem(Lcom/android/launcher2/FolderItem;)V

    .line 155
    if-nez v1, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v4}, Lcom/android/launcher2/FolderItem;->isRequiredToRedraw()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 157
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v5, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v5}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 159
    iput-object v2, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 161
    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/launcher2/FolderItem;->setToRedrawIcons(Z)V

    .line 165
    :cond_3
    iget v4, p1, Lcom/android/launcher2/BaseItem;->mColor:I

    invoke-static {v4}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    .line 167
    invoke-virtual {p0, p1, v2}, Lcom/android/launcher2/FolderIconView;->applyBaseItem(Lcom/android/launcher2/BaseItem;Landroid/graphics/Bitmap;)V

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p1, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    if-nez v4, :cond_4

    .line 170
    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 171
    new-instance v4, Lcom/android/launcher2/FolderIconView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/FolderIconView$1;-><init>(Lcom/android/launcher2/FolderIconView;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/launcher2/FolderIconView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    :cond_4
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/launcher2/BaseItem;->viewForThisHasSeenLightOfDayBefore:Z

    .line 179
    return-void
.end method

.method public cancelFolderAnims()V
    .locals 1

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->cleanupFolderAnims()V

    .line 128
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    iget-object v0, v0, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    .line 131
    :cond_0
    return-void
.end method

.method public cleanupFolderAnims()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->destroyDrawingCache()V

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderAnimator;->cancel()V

    .line 111
    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 112
    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDrawShadow:Z

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ScalarAnimator;->abort(F)Z

    .line 124
    return-void

    .line 121
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    goto :goto_0
.end method

.method public createViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 458
    instance-of v0, p1, Lcom/android/launcher2/HomeShortcutItem;

    if-nez v0, :cond_0

    .line 459
    const/4 v0, 0x0

    .line 460
    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    :goto_0
    return-object v0

    .restart local p1    # "item":Lcom/android/launcher2/BaseItem;
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    check-cast p1, Lcom/android/launcher2/HomeShortcutItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    const v1, 0x7f03001f

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/HomeView;->createShortcut(Lcom/android/launcher2/HomeShortcutItem;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 714
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 716
    .local v0, "tag":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawShadow(Landroid/graphics/Canvas;)V

    .line 720
    instance-of v1, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v1

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->isEnabled()Z

    move-result v3

    if-ne v1, v3, :cond_0

    .line 722
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/FolderIconView;->setDimmed(ZZ)V

    .line 724
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconView;->draw_(Landroid/graphics/Canvas;)V

    .line 725
    return-void

    :cond_1
    move v1, v2

    .line 722
    goto :goto_0
.end method

.method public drawPlateWithFolderScale(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 752
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    .line 753
    .local v0, "folderItem":Lcom/android/launcher2/FolderItem;
    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v9

    invoke-static {v9}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 756
    .local v4, "openFolderBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getHotseatScaleFactor()F

    move-result v2

    .line 758
    .local v2, "hotseatScale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 760
    cmpg-float v9, v2, v11

    if-gez v9, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getPaddingTop()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v2

    add-float v8, v9, v10

    .line 762
    .local v8, "y":F
    iget-object v9, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v9}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    .line 763
    .local v1, "h":F
    const v9, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v1

    add-float v7, v11, v9

    .line 764
    .local v7, "scale":F
    sub-float v9, v2, v11

    mul-float/2addr v9, v8

    mul-float v3, v9, v7

    .line 765
    .local v3, "offsetY":F
    const/4 v9, 0x0

    invoke-virtual {p1, v9, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 767
    .end local v1    # "h":F
    .end local v3    # "offsetY":F
    .end local v7    # "scale":F
    .end local v8    # "y":F
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v5, v9, v12

    .line 768
    .local v5, "pivotX":F
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float v6, v9, v12

    .line 769
    .local v6, "pivotY":F
    invoke-virtual {p1, v2, v2, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 771
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderIconView;->drawPlate(Landroid/graphics/Canvas;)V

    .line 772
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 773
    return-void
.end method

.method protected drawShadow(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 938
    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/launcher2/FolderIconView;->mDrawShadow:Z

    if-eqz v4, :cond_0

    .line 939
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 940
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int v2, v4, v5

    .line 941
    .local v2, "dw":I
    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    sub-int v1, v4, v5

    .line 943
    .local v1, "dh":I
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getHotseatScaleFactor()F

    move-result v3

    .line 944
    .local v3, "hotseatScale":F
    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getPaddingTop()I

    move-result v5

    div-int/lit8 v6, v1, 0x2

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float/2addr v5, v3

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 955
    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mShadowAlpha:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v4}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 956
    .local v0, "alpha":I
    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 957
    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 958
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 960
    .end local v0    # "alpha":I
    .end local v1    # "dh":I
    .end local v2    # "dw":I
    .end local v3    # "hotseatScale":F
    :cond_0
    return-void
.end method

.method public fromThisFolder()Z
    .locals 1

    .prologue
    .line 497
    iget-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    return v0
.end method

.method protected generateShadowIfNeeded()V
    .locals 7

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->shouldHaveIconShadow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 910
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/BaseItem;

    .line 911
    .local v6, "item":Lcom/android/launcher2/BaseItem;
    if-eqz v6, :cond_0

    .line 912
    iget-object v0, v6, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, v6, Lcom/android/launcher2/BaseItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setIconShadow(Landroid/graphics/Bitmap;)V

    .line 934
    .end local v6    # "item":Lcom/android/launcher2/BaseItem;
    :cond_0
    :goto_0
    return-void

    .line 915
    .restart local v6    # "item":Lcom/android/launcher2/BaseItem;
    :cond_1
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->getInstance()Lcom/android/launcher2/ShadowGen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;

    invoke-direct {v2, p0, v6}, Lcom/android/launcher2/AppIconView$ShadowReadyCallback;-><init>(Lcom/android/launcher2/AppIconView;Lcom/android/launcher2/BaseItem;)V

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/ShadowGen;->queueBitmap(Landroid/graphics/Bitmap;Lcom/android/launcher2/ShadowGen$GeneratedCallback;Landroid/os/Handler;Landroid/content/res/Resources;Z)V

    goto :goto_0

    .line 920
    .end local v6    # "item":Lcom/android/launcher2/BaseItem;
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->shouldHaveIconShadow()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDragIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 842
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getFolderIconWithPlate()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFolderIconWithPlate()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderItem;

    .local v0, "item":Lcom/android/launcher2/FolderItem;
    move-object v1, v0

    .line 847
    check-cast v1, Lcom/android/launcher2/BaseItem;

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v0}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconWithPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public getFolderItem()Lcom/android/launcher2/FolderItem;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    return-object v0
.end method

.method public isAnimating()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 532
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 539
    :cond_0
    :goto_0
    return v0

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    iget-object v1, v1, Lcom/android/launcher2/Folder;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderAnimator;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    .line 539
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentDragging()Z
    .locals 4

    .prologue
    .line 904
    iget-wide v0, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    const-wide/32 v2, -0x80000000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 184
    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    .line 185
    .local v0, "count":I
    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v0

    return v0
.end method

.method public onAdd(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 868
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    .line 869
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 899
    invoke-super {p0}, Lcom/android/launcher2/AppIconView;->onDetachedFromWindow()V

    .line 900
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0, p0}, Lcom/android/launcher2/FolderItem;->removeListener(Lcom/android/launcher2/HomeFolderItem$FolderListener;)V

    .line 901
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 240
    invoke-static {p1}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const/4 v7, 0x0

    .line 342
    :cond_0
    :goto_0
    return v7

    .line 246
    :cond_1
    sget-boolean v1, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v1, :cond_5

    .line 247
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    move-object v0, v1

    .line 249
    .local v0, "dragState":Lcom/android/launcher2/DragState;
    :goto_1
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    .line 250
    .local v11, "item":Lcom/android/launcher2/BaseItem;
    if-eqz v11, :cond_4

    iget-object v1, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_2

    iget-object v1, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v1, v2, :cond_2

    instance-of v1, v11, Lcom/android/launcher2/HomePendingItem;

    if-eqz v1, :cond_4

    :cond_2
    const/4 v8, 0x1

    .line 253
    .local v8, "dragFromMenu":Z
    :goto_2
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v1

    if-nez v1, :cond_5

    if-nez v8, :cond_5

    .line 254
    const/4 v7, 0x0

    goto :goto_0

    .line 247
    .end local v0    # "dragState":Lcom/android/launcher2/DragState;
    .end local v8    # "dragFromMenu":Z
    .end local v11    # "item":Lcom/android/launcher2/BaseItem;
    :cond_3
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_1

    .line 250
    .restart local v0    # "dragState":Lcom/android/launcher2/DragState;
    .restart local v11    # "item":Lcom/android/launcher2/BaseItem;
    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    .line 263
    .end local v0    # "dragState":Lcom/android/launcher2/DragState;
    .end local v11    # "item":Lcom/android/launcher2/BaseItem;
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    .line 264
    .local v12, "myParent":Landroid/view/ViewParent;
    instance-of v1, v12, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v1, :cond_6

    .line 265
    invoke-interface {v12}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 266
    .local v10, "grandParent":Landroid/view/ViewParent;
    instance-of v1, v10, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v1, :cond_6

    .line 267
    check-cast v10, Lcom/android/launcher2/CellLayoutNoGap;

    .end local v10    # "grandParent":Landroid/view/ViewParent;
    invoke-virtual {v10, p1, p0}, Lcom/android/launcher2/CellLayoutNoGap;->onFolderIconViewDragEvent(Landroid/view/DragEvent;Lcom/android/launcher2/FolderIconView;)V

    .line 271
    :cond_6
    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    move-object v0, v1

    .line 274
    .restart local v0    # "dragState":Lcom/android/launcher2/DragState;
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->acceptDrop(Lcom/android/launcher2/DragState;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/BaseItem;->mIconMovie:Landroid/graphics/Movie;

    if-nez v1, :cond_8

    const/4 v7, 0x1

    .line 276
    .local v7, "accept":Z
    :goto_4
    if-eqz v7, :cond_0

    .line 277
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 279
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/BaseItem;->getContainingFolderId(Lcom/android/launcher2/BaseItem;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getId()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_9

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    goto/16 :goto_0

    .line 271
    .end local v0    # "dragState":Lcom/android/launcher2/DragState;
    .end local v7    # "accept":Z
    :cond_7
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_3

    .line 274
    .restart local v0    # "dragState":Lcom/android/launcher2/DragState;
    :cond_8
    const/4 v7, 0x0

    goto :goto_4

    .line 279
    .restart local v7    # "accept":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    .line 283
    :pswitch_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 285
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v1, :cond_a

    .line 286
    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 291
    :cond_a
    :goto_6
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    .line 289
    :cond_b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    goto :goto_6

    .line 295
    :pswitch_3
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v1, :cond_c

    .line 296
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 297
    :cond_c
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v9

    .line 298
    .local v9, "dragItem":Lcom/android/launcher2/BaseItem;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v4

    invoke-virtual {v9}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v5

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v6

    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z

    .line 300
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    .line 301
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 302
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    .line 305
    .end local v9    # "dragItem":Lcom/android/launcher2/BaseItem;
    :pswitch_4
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    .line 306
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->droppedInOurFolder(Lcom/android/launcher2/DragState;)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 307
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 308
    :cond_e
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 309
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 311
    :cond_f
    invoke-direct {p0, v0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded(Lcom/android/launcher2/DragState;)V

    .line 312
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    .line 313
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 315
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isExitingAllApps()Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    if-eqz v1, :cond_11

    .line 316
    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 318
    :cond_11
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v13

    .line 319
    .local v13, "p":Lcom/android/launcher2/Folder;
    if-eqz v13, :cond_12

    invoke-virtual {v13}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 322
    :cond_12
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mFromThisFolder:Z

    if-eqz v1, :cond_13

    .line 323
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 324
    :cond_13
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->clearDragOutlines()V

    .line 326
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->onDragEnter()V

    .line 328
    sget-object v1, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v3

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1000c9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/dtl/launcher/Talk;->say(Ljava/lang/String;)V

    .line 332
    iget-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->USE_SET_INTEGRATOR_HAPTIC:Z

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isHapticFeedbackExtraOn()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 334
    const/16 v1, 0x565f

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher2/FolderIconView;->performHapticFeedback(II)Z

    .line 338
    :cond_14
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/FolderIconView;->mDraggingOver:Z

    goto/16 :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 360
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/AppIconView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 361
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "pen_hovering"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 363
    .local v11, "isSpenHovringOn":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "finger_air_view"

    const/16 v22, 0x0

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 366
    .local v10, "isFingerHoveringOn":I
    if-nez v11, :cond_0

    if-nez v10, :cond_0

    .line 367
    const/16 v20, 0x0

    .line 453
    :goto_0
    return v20

    .line 369
    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v17

    .line 370
    .local v17, "toolType":I
    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 371
    const/16 v20, 0x0

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    .line 374
    .local v16, "res":Landroid/content/res/Resources;
    const v20, 0x7f0b0005

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    .line 375
    .local v13, "onFolderHovering":Z
    if-nez v13, :cond_2

    .line 376
    const/16 v20, 0x0

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/MenuView;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/MenuView;->mMenuViewDarken:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-nez v20, :cond_3

    .line 380
    const/16 v20, 0x0

    goto :goto_0

    .line 381
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v20

    check-cast v20, Lcom/android/launcher2/Launcher;

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/HomeView;->getHomeDarkenLayer()Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v20

    if-nez v20, :cond_4

    .line 384
    const/16 v20, 0x0

    goto :goto_0

    .line 387
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 388
    .local v4, "action":I
    const-wide/16 v8, 0x0

    .line 389
    .local v8, "inFolderHoverInitTime":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v5

    .line 391
    .local v5, "count":I
    const/4 v12, 0x0

    .line 392
    .local v12, "need_refresh":I
    and-int/lit16 v0, v4, 0xff

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 453
    :cond_5
    :goto_1
    :pswitch_0
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 394
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v20

    if-nez v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/FolderAnimator;->isCloseAnimating()Z

    move-result v20

    if-eqz v20, :cond_7

    .line 396
    :cond_6
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 398
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    goto :goto_1

    .line 403
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/FolderAnimator;->getFolderHoveringEndTime()J

    move-result-wide v8

    .line 404
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 405
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderHoveringStartTime:J

    move-wide/from16 v20, v0

    sub-long v18, v6, v20

    .line 406
    .local v18, "startHoverduration":J
    sub-long v14, v6, v8

    .line 408
    .local v14, "refreshHoverduration":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v20

    if-nez v20, :cond_9

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-nez v20, :cond_9

    const-wide/16 v20, 0x12c

    cmp-long v20, v18, v20

    if-lez v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/FolderAnimator;->isCloseAnimating()Z

    move-result v20

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/FolderAnimator;->isHoverAnimating()Z

    move-result v20

    if-nez v20, :cond_9

    .line 413
    if-lez v5, :cond_8

    .line 415
    const/16 v20, 0xa

    const/16 v21, -0x1

    :try_start_0
    invoke-static/range {v20 .. v21}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_8
    :goto_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/FolderAnimator;->animateHoverExpand()V

    .line 423
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 426
    :cond_9
    div-int/lit8 v12, v5, 0x7

    .line 428
    rem-int/lit8 v20, v5, 0x7

    if-nez v20, :cond_a

    if-lez v12, :cond_a

    .line 429
    add-int/lit8 v12, v12, -0x1

    .line 431
    :cond_a
    const/16 v20, 0x7

    move/from16 v0, v20

    if-le v5, v0, :cond_5

    const-wide/16 v20, 0x7d0

    cmp-long v20, v14, v20

    if-lez v20, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v12, v0, :cond_5

    const-wide/16 v20, 0x0

    cmp-long v20, v8, v20

    if-lez v20, :cond_5

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/FolderAnimator;->FadeInHoverIcon(I)V

    goto/16 :goto_1

    .line 442
    .end local v6    # "currentTime":J
    .end local v14    # "refreshHoverduration":J
    .end local v18    # "startHoverduration":J
    :pswitch_3
    const/16 v20, 0x1

    const/16 v21, -0x1

    :try_start_1
    invoke-static/range {v20 .. v21}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    invoke-virtual/range {v20 .. v23}, Lcom/android/launcher2/FolderAnimator;->animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V

    .line 448
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/FolderIconView;->Hover_Refresh_cnt:I

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mFolderAnimator:Lcom/android/launcher2/FolderAnimator;

    move-object/from16 v20, v0

    const-wide/16 v22, 0x0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    goto/16 :goto_1

    .line 417
    .restart local v6    # "currentTime":J
    .restart local v14    # "refreshHoverduration":J
    .restart local v18    # "startHoverduration":J
    :catch_0
    move-exception v20

    goto/16 :goto_2

    .line 444
    .end local v6    # "currentTime":J
    .end local v14    # "refreshHoverduration":J
    .end local v18    # "startHoverduration":J
    :catch_1
    move-exception v20

    goto :goto_3

    .line 392
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onItemsChanged()V
    .locals 0

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 884
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    .line 885
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 968
    .local v2, "myParent":Landroid/view/ViewParent;
    instance-of v3, v2, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_2

    .line 969
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 970
    .local v0, "grandParent":Landroid/view/ViewParent;
    const/4 v1, 0x0

    .line 971
    .local v1, "isPageMoving":Z
    instance-of v3, v0, Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    if-eqz v3, :cond_1

    .line 972
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/Workspace;->isPageMoving()Z

    move-result v1

    .line 976
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 977
    const/4 v3, 0x1

    .line 980
    .end local v0    # "grandParent":Landroid/view/ViewParent;
    .end local v1    # "isPageMoving":Z
    :goto_1
    return v3

    .line 973
    .restart local v0    # "grandParent":Landroid/view/ViewParent;
    .restart local v1    # "isPageMoving":Z
    :cond_1
    instance-of v3, v0, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v3, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->isPageMoving()Z

    move-result v1

    goto :goto_0

    .line 980
    .end local v0    # "grandParent":Landroid/view/ViewParent;
    .end local v1    # "isPageMoving":Z
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/AppIconView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_1
.end method

.method public onRemove(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 873
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->showBadge()V

    .line 874
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->refresh()V

    .line 875
    return-void
.end method

.method public onTitleChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 879
    return-void
.end method

.method public redrawFolderIcon()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 552
    .local v1, "itemInfo":Lcom/android/launcher2/BaseItem;
    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    move v2, v3

    .line 574
    :goto_0
    return v2

    .line 555
    :cond_1
    iget-object v2, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    iget-object v5, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-direct {p0, v5}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/android/launcher2/FolderIconHelper;->createFolderIconNoPlate(Landroid/graphics/Bitmap;Lcom/android/launcher2/FolderItem;Lcom/android/launcher2/BaseItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 558
    .local v0, "folderIcon":Landroid/graphics/Bitmap;
    iput-object v0, v1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 560
    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2, v3}, Lcom/android/launcher2/FolderItem;->setToRedrawIcons(Z)V

    .line 562
    iget-object v2, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_2

    .line 563
    invoke-direct {p0}, Lcom/android/launcher2/FolderIconView;->resetPlateIfNeeded()V

    .line 566
    :cond_2
    sget-object v2, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/MenuView;->getViewType()Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v2

    sget-object v4, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_LIST:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v2, v4, :cond_4

    .line 572
    :cond_3
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher2/FolderIconView;->setIcon(Landroid/graphics/Bitmap;Z)V

    .line 574
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 578
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->initBadgeValue()V

    .line 579
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    .line 580
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 581
    return-void
.end method

.method public restoreStateForOpenVisualize()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 708
    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 709
    iput-boolean v0, p0, Lcom/android/launcher2/FolderIconView;->mDrawShadow:Z

    .line 710
    return-void
.end method

.method public setBounceItem(Z)V
    .locals 1
    .param p1, "hasBounceItem"    # Z

    .prologue
    .line 986
    iput-boolean p1, p0, Lcom/android/launcher2/FolderIconView;->mHasBounceItem:Z

    .line 987
    if-eqz p1, :cond_0

    .line 988
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setAlpha(F)V

    .line 992
    :goto_0
    return-void

    .line 990
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher2/FolderIconView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setDraggedIconId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 862
    iput-wide p1, p0, Lcom/android/launcher2/FolderIconView;->mDraggedIconId:J

    .line 863
    return-void
.end method

.method public setFolder(Lcom/android/launcher2/Folder;)V
    .locals 0
    .param p1, "folder"    # Lcom/android/launcher2/Folder;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/launcher2/FolderIconView;->mLastAttachedFolder:Lcom/android/launcher2/Folder;

    .line 137
    return-void
.end method

.method public setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V
    .locals 9
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .param p6, "screen"    # I
    .param p7, "container"    # J

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/launcher2/FolderIconView;->mFolderItem:Lcom/android/launcher2/FolderItem;

    invoke-interface {v0}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 229
    instance-of v0, p1, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher2/HomeItem;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide/from16 v2, p7

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIII)V

    .line 234
    :cond_0
    return-void
.end method

.method protected shouldHaveIconShadow()Z
    .locals 1

    .prologue
    .line 585
    const/4 v0, 0x0

    return v0
.end method

.method public show(Lcom/android/launcher2/BaseItem;)V
    .locals 0
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    .line 599
    return-void
.end method

.method public showBadge()V
    .locals 24

    .prologue
    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v18

    .line 604
    .local v18, "tag":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 605
    .local v2, "badge":Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 606
    .local v17, "sum":I
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/AppFolderItem;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    .line 608
    sget-object v19, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    if-eqz v19, :cond_1

    sget-object v19, Lcom/android/launcher2/FolderIconView;->mMenuAppsGridFragment:Lcom/android/launcher2/MenuAppsGridFragment;

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/MenuAppsGridFragment;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v19

    sget-object v20, Lcom/android/launcher2/MenuAppsGrid$State;->EDIT:Lcom/android/launcher2/MenuAppsGrid$State;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 702
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v13, v18

    .line 612
    check-cast v13, Lcom/android/launcher2/AppFolderItem;

    .line 613
    .local v13, "item":Lcom/android/launcher2/AppFolderItem;
    const/16 v17, 0x0

    .line 614
    invoke-virtual {v13}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v14

    .line 615
    .local v14, "itemCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v14, :cond_2

    .line 616
    invoke-virtual {v13, v11}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AppItem;

    .line 617
    .local v3, "childItem":Lcom/android/launcher2/AppItem;
    iget v0, v3, Lcom/android/launcher2/AppItem;->mBadgeCount:I

    move/from16 v19, v0

    add-int v17, v17, v19

    .line 615
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 619
    .end local v3    # "childItem":Lcom/android/launcher2/AppItem;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 656
    .end local v11    # "i":I
    .end local v13    # "item":Lcom/android/launcher2/AppFolderItem;
    .end local v14    # "itemCount":I
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->isDimmed()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-static {}, Lcom/android/launcher2/CellLayout;->isItemApp()Z

    move-result v19

    if-eqz v19, :cond_4

    sget-boolean v19, Lcom/android/launcher2/FolderIconView;->sIsDragState:Z

    if-nez v19, :cond_5

    .line 657
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/FolderIconView;->mDimAmount:F

    move/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/launcher2/FolderIconView;->createDarkenColorFilter(F)Landroid/graphics/ColorFilter;

    move-result-object v7

    .line 658
    .local v7, "filter":Landroid/graphics/ColorFilter;
    if-eqz v2, :cond_5

    .line 659
    invoke-virtual {v2, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 661
    .end local v7    # "filter":Landroid/graphics/ColorFilter;
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderIconView;->setOverlay(Landroid/graphics/drawable/Drawable;)V

    .line 664
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/BaseItem;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v13, v18

    .line 665
    check-cast v13, Lcom/android/launcher2/BaseItem;

    .line 666
    .local v13, "item":Lcom/android/launcher2/BaseItem;
    const/4 v6, 0x0

    .line 667
    .local v6, "description":Ljava/lang/String;
    iget-object v15, v13, Lcom/android/launcher2/BaseItem;->mTitle:Ljava/lang/String;

    .line 668
    .local v15, "newTitle":Ljava/lang/String;
    if-eqz v15, :cond_6

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_f

    .line 669
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f100069

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 685
    :cond_7
    :goto_3
    iget-object v0, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_8

    iget-object v0, v13, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 686
    :cond_8
    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-le v0, v1, :cond_12

    .line 687
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f1000d1

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 694
    :goto_4
    invoke-static {v13}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 695
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f1000c9

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 698
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/launcher2/FolderIconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 620
    .end local v6    # "description":Ljava/lang/String;
    .end local v13    # "item":Lcom/android/launcher2/BaseItem;
    .end local v15    # "newTitle":Ljava/lang/String;
    :cond_a
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher2/HomeFolderItem;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v13, v18

    .line 621
    check-cast v13, Lcom/android/launcher2/HomeFolderItem;

    .line 623
    .local v13, "item":Lcom/android/launcher2/HomeFolderItem;
    const/4 v12, 0x0

    .line 624
    .local v12, "intent":Landroid/content/Intent;
    const/4 v4, 0x0

    .line 625
    .local v4, "compName":Landroid/content/ComponentName;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 626
    .local v5, "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 627
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher2/FolderIconView;->getHiddenIconItem(Lcom/android/launcher2/FolderItem;)Lcom/android/launcher2/BaseItem;

    move-result-object v10

    .line 629
    .local v10, "hiddenIconItem":Lcom/android/launcher2/BaseItem;
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_5
    invoke-virtual {v13}, Lcom/android/launcher2/HomeFolderItem;->getItemCount()I

    move-result v19

    move/from16 v0, v19

    if-ge v11, v0, :cond_e

    .line 633
    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_b

    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v19, v0

    sget-object v20, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 636
    :cond_b
    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    check-cast v19, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 637
    if-eqz v12, :cond_c

    .line 638
    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 641
    :cond_c
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_d

    .line 644
    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    if-eq v0, v10, :cond_d

    .line 645
    invoke-virtual {v13, v11}, Lcom/android/launcher2/HomeFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    move/from16 v19, v0

    add-int v17, v17, v19

    .line 646
    invoke-virtual {v4}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_d
    const/4 v12, 0x0

    .line 651
    const/4 v4, 0x0

    .line 629
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 654
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->createBadgeDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_2

    .line 673
    .end local v4    # "compName":Landroid/content/ComponentName;
    .end local v5    # "componentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "hiddenIconItem":Lcom/android/launcher2/BaseItem;
    .end local v11    # "i":I
    .end local v12    # "intent":Landroid/content/Intent;
    .restart local v6    # "description":Ljava/lang/String;
    .local v13, "item":Lcom/android/launcher2/BaseItem;
    .restart local v15    # "newTitle":Ljava/lang/String;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f10006a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 674
    .local v8, "folderString":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 675
    .local v9, "folderStringLen":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v16

    .line 676
    .local v16, "newTitleLen":I
    move/from16 v0, v16

    if-lt v0, v9, :cond_10

    sub-int v19, v16, v9

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 678
    :cond_10
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v19

    const-string v20, "fr"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 679
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 682
    :cond_11
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 688
    .end local v8    # "folderString":Ljava/lang/String;
    .end local v9    # "folderStringLen":I
    .end local v16    # "newTitleLen":I
    :cond_12
    iget v0, v13, Lcom/android/launcher2/BaseItem;->mBadgeCount:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_13

    .line 689
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f1000d2

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_4

    .line 691
    :cond_13
    move-object v6, v15

    goto/16 :goto_4
.end method
