.class Lcom/android/launcher2/FolderAnimator;
.super Ljava/lang/Object;
.source "FolderAnimator.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "FolderAnimator"


# instance fields
.field private mAnimatingOpen:Z

.field private final mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

.field private mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

.field private final mCloseAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private final mContent:Lcom/android/launcher2/CellLayoutNoGap;

.field private final mFolder:Lcom/android/launcher2/Folder;

.field private final mFolderHoverAnim:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderHoveringEndTime:J

.field private mFolderOpenOri:I

.field private mIcon:Lcom/android/launcher2/FolderIconView;

.field private mNumCloseAnimsRunning:I

.field mOnAnimationCancel:Ljava/lang/Runnable;

.field private final mOpenAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mPostDrawPlate:Ljava/lang/Runnable;

.field private mRenderIconOnPlate:Z

.field private mTempIconPos:[I

.field private mTmpCanvas:Landroid/graphics/Canvas;

.field private mTmpPaint:Landroid/graphics/Paint;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/Folder;Lcom/android/launcher2/FolderIconView;)V
    .locals 3
    .param p1, "folder"    # Lcom/android/launcher2/Folder;
    .param p2, "icon"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoveringEndTime:J

    .line 53
    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderOpenOri:I

    .line 66
    new-instance v0, Lcom/android/launcher2/FolderAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderAnimator$1;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    .line 385
    iput-boolean v2, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    .line 388
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    .line 537
    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    .line 874
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    .line 875
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    .line 917
    new-instance v0, Lcom/android/launcher2/FolderAnimator$9;

    invoke-direct {v0, p0}, Lcom/android/launcher2/FolderAnimator$9;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    .line 56
    iput-object p2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 57
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    :goto_0
    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    .line 58
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    .line 59
    invoke-virtual {p2}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    .line 60
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/FolderIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/AnimationLayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher2/FolderAnimator;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->drawPlate()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/FolderAnimator;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/FolderAnimator;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$420(Lcom/android/launcher2/FolderAnimator;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iget v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/FolderAnimator;IZ)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/FolderAnimator;->animHoverGroup(IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/FolderAnimator;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/FolderAnimator;)Lcom/android/launcher2/Folder;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/FolderAnimator;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/FolderAnimator;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    return-object v0
.end method

.method private animHoverGroup(IZ)I
    .locals 3
    .param p1, "pos"    # I
    .param p2, "isForward"    # Z

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x3

    .line 351
    const/4 v0, 0x1

    .line 353
    .local v0, "group":I
    if-eqz p2, :cond_3

    .line 355
    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    .line 356
    :cond_0
    const/4 v0, 0x2

    .line 372
    :goto_0
    return v0

    .line 357
    :cond_1
    if-le p1, v1, :cond_2

    .line 358
    const/4 v0, 0x3

    goto :goto_0

    .line 360
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 364
    :cond_3
    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_5

    .line 365
    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    .line 366
    :cond_5
    if-le p1, v2, :cond_6

    .line 367
    const/4 v0, 0x3

    goto :goto_0

    .line 369
    :cond_6
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private animationNeeded(Landroid/view/View;I)Z
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "pos"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 390
    iget-object v11, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    const/4 v12, 0x0

    invoke-virtual {p1, v11, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    .line 392
    .local v7, "visible":Z
    iget-object v11, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 393
    .local v4, "tmpHeight":I
    iget-object v11, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 394
    .local v5, "tmpWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 395
    .local v0, "actualHeight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 397
    .local v1, "actualWidth":I
    if-ne v4, v0, :cond_2

    if-ne v5, v1, :cond_2

    move v3, v9

    .line 399
    .local v3, "isWholeItemVisible":Z
    :goto_0
    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    move v2, v6

    .line 400
    .local v2, "fromAlpha":F
    :goto_1
    const/4 v11, 0x6

    if-ge p2, v11, :cond_4

    .line 401
    .local v6, "toAlpha":F
    :goto_2
    cmpl-float v11, v2, v10

    if-gtz v11, :cond_0

    cmpl-float v10, v6, v10

    if-lez v10, :cond_1

    :cond_0
    move v8, v9

    :cond_1
    return v8

    .end local v2    # "fromAlpha":F
    .end local v3    # "isWholeItemVisible":Z
    .end local v6    # "toAlpha":F
    :cond_2
    move v3, v8

    .line 397
    goto :goto_0

    .restart local v3    # "isWholeItemVisible":Z
    :cond_3
    move v2, v10

    .line 399
    goto :goto_1

    .restart local v2    # "fromAlpha":F
    :cond_4
    move v6, v10

    .line 400
    goto :goto_2
.end method

.method private buildAnimForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 9
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const/4 v8, 0x1

    .line 177
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DragReceivable;

    invoke-interface {v0}, Lcom/android/launcher2/DragReceivable;->getContainerType()J

    move-result-wide v2

    const-wide/16 v4, -0x65

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    move v1, v8

    .line 179
    .local v1, "group":I
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v5, -0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v6

    .line 180
    .local v6, "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    iput-object p1, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 181
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 182
    .local v7, "paint":Landroid/graphics/Paint;
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 183
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 184
    iget-object v0, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v8, v7}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 185
    iput-object v7, v6, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 187
    return-object v6

    .line 177
    .end local v1    # "group":I
    .end local v6    # "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v7    # "paint":Landroid/graphics/Paint;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private buildAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 6
    .param p1, "from_"    # [I
    .param p2, "anim"    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p3, "pos"    # I
    .param p4, "offset"    # [I

    .prologue
    .line 495
    move-object v3, p1

    .line 497
    .local v3, "from":[I
    new-instance v0, Lcom/android/launcher2/FolderAnimator$4;

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/FolderAnimator$4;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[II)V

    return-object v0
.end method

.method private buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 15
    .param p1, "from_"    # [I
    .param p2, "anim"    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p3, "pos"    # I
    .param p4, "offset"    # [I
    .param p5, "fromPlate"    # Z
    .param p6, "isHover"    # Z

    .prologue
    .line 416
    if-eqz p1, :cond_2

    const/4 v7, 0x1

    .line 417
    .local v7, "animateScale":Z
    :goto_0
    if-nez p1, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v13

    .line 419
    .local v13, "loc":[I
    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 p1, v0

    .end local p1    # "from_":[I
    const/4 v1, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationX()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x0

    aget v3, v13, v3

    sub-int/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x1

    aget v3, v13, v3

    sub-int/2addr v2, v3

    aput v2, p1, v1

    .line 422
    .end local v13    # "loc":[I
    .restart local p1    # "from_":[I
    :cond_0
    move-object/from16 v6, p1

    .line 423
    .local v6, "from":[I
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getScaleX()F

    move-result v9

    .line 426
    .local v9, "scale":F
    const/4 v12, 0x6

    .line 427
    .local v12, "alphaLimit":I
    if-eqz p6, :cond_1

    .line 428
    const/4 v12, 0x7

    .line 430
    :cond_1
    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-eqz v1, :cond_3

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mTmpRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v14

    .line 431
    .local v14, "visible":Z
    :goto_1
    if-eqz v14, :cond_4

    const/high16 v10, 0x3f800000    # 1.0f

    .line 432
    .local v10, "fromAlpha":F
    :goto_2
    move/from16 v0, p3

    if-ge v0, v12, :cond_5

    const/high16 v11, 0x3f800000    # 1.0f

    .line 434
    .local v11, "toAlpha":F
    :goto_3
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher2/FolderIconHelper;->getIconScaleFactor(Lcom/android/launcher2/FolderItem;)F

    move-result v8

    .line 436
    .local v8, "iconScale":F
    new-instance v1, Lcom/android/launcher2/FolderAnimator$3;

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p2

    move/from16 v5, p5

    invoke-direct/range {v1 .. v11}, Lcom/android/launcher2/FolderAnimator$3;-><init>(Lcom/android/launcher2/FolderAnimator;[ILcom/android/launcher2/AnimationLayer$Anim;Z[IZFFFF)V

    return-object v1

    .line 416
    .end local v6    # "from":[I
    .end local v7    # "animateScale":Z
    .end local v8    # "iconScale":F
    .end local v9    # "scale":F
    .end local v10    # "fromAlpha":F
    .end local v11    # "toAlpha":F
    .end local v12    # "alphaLimit":I
    .end local v14    # "visible":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 430
    .restart local v6    # "from":[I
    .restart local v7    # "animateScale":Z
    .restart local v9    # "scale":F
    .restart local v12    # "alphaLimit":I
    :cond_3
    const/4 v14, 0x1

    goto :goto_1

    .line 431
    .restart local v14    # "visible":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_2

    .line 432
    .restart local v10    # "fromAlpha":F
    :cond_5
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private drawPlate()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 877
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 880
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/FolderAnimator;->destroyPlate()V

    .line 915
    :goto_0
    return-void

    .line 883
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 886
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 887
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 888
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v3}, Lcom/android/launcher2/FolderAnimator;->drawPlate_(Landroid/graphics/Canvas;)V

    .line 889
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 890
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 894
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v2

    .line 895
    .local v2, "xy":[I
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v4, v2, v6

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 896
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    aget v4, v2, v5

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 898
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v1

    .line 900
    .local v1, "s":F
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 901
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 903
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getHomeContainer()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 904
    .local v0, "baseAlpha":F
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 905
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_4

    .line 906
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 907
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 908
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mTmpPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v5, v4}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 911
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    iget-object v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->invalidate()V

    .line 912
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v3}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 914
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mPostDrawPlate:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/FolderIconView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private drawPlate_(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 934
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/FolderIconView;->drawPlateWithFolderScale(Landroid/graphics/Canvas;)V

    .line 936
    iget-boolean v3, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    if-eqz v3, :cond_1

    .line 937
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v3, v3, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v3}, Lcom/android/launcher2/ScalarAnimator;->get()F

    move-result v0

    .line 938
    .local v0, "h":F
    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3dcccccd    # 0.1f

    mul-float/2addr v4, v0

    add-float v2, v3, v4

    .line 939
    .local v2, "scale":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 940
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 941
    .local v1, "icons":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-virtual {p1, v2, v2, v3, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 943
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 945
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 947
    .end local v0    # "h":F
    .end local v1    # "icons":Landroid/graphics/Bitmap;
    .end local v2    # "scale":F
    :cond_1
    return-void
.end method

.method private getAppIconOffset(I)[I
    .locals 12
    .param p1, "i"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    .local v7, "scale":F
    const/16 v4, 0x8

    .line 83
    .local v4, "offsetX":I
    const/16 v5, 0xa

    .line 84
    .local v5, "offsetY":I
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 85
    .local v6, "res":Landroid/content/res/Resources;
    if-eqz v6, :cond_0

    .line 86
    const v8, 0x7f0c0031

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 87
    const v8, 0x7f0c0032

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    .line 90
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 95
    :goto_0
    invoke-static {p1}, Lcom/android/launcher2/FolderIconHelper;->getAppIconXYCord(I)[F

    move-result-object v0

    .line 97
    .local v0, "appIconCord":[F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 98
    .local v2, "hotseatScale":F
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v8, :cond_1

    .line 99
    iget-object v8, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v8}, Lcom/android/launcher2/FolderIconView;->getHotseatScaleFactor()F

    move-result v2

    .line 102
    :cond_1
    aget v8, v0, v10

    mul-float v9, v2, v7

    mul-float/2addr v8, v9

    aput v8, v0, v10

    .line 103
    aget v8, v0, v10

    int-to-float v9, v4

    mul-float/2addr v9, v2

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    aput v8, v0, v10

    .line 104
    aget v8, v0, v11

    mul-float v9, v2, v7

    mul-float/2addr v8, v9

    aput v8, v0, v11

    .line 105
    aget v8, v0, v11

    int-to-float v9, v5

    mul-float/2addr v9, v2

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    aput v8, v0, v11

    .line 107
    const/4 v8, 0x2

    new-array v3, v8, [I

    aget v8, v0, v10

    float-to-int v8, v8

    aput v8, v3, v10

    aget v8, v0, v11

    float-to-int v8, v8

    aput v8, v3, v11

    .line 112
    .local v3, "loc":[I
    return-object v3

    .line 91
    .end local v0    # "appIconCord":[F
    .end local v2    # "hotseatScale":F
    .end local v3    # "loc":[I
    :catch_0
    move-exception v1

    .line 92
    .local v1, "ex":Ljava/lang/NullPointerException;
    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I
    .locals 8
    .param p1, "iconView"    # Lcom/android/launcher2/AppIconView;
    .param p2, "closing"    # Z

    .prologue
    const/4 v7, 0x1

    .line 158
    if-eqz p2, :cond_0

    .line 159
    iget-object v6, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/BaseItem;

    iget-object v5, v5, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v5, v7}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v5

    .line 172
    :goto_0
    return-object v5

    .line 161
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->getCustomLayoutParams()Lcom/android/launcher2/HomeView$LayoutParams;

    move-result-object v0

    .line 162
    .local v0, "lp":Lcom/android/launcher2/HomeView$LayoutParams;
    iget v3, v0, Lcom/android/launcher2/HomeView$LayoutParams;->x:I

    .local v3, "x":I
    iget v4, v0, Lcom/android/launcher2/HomeView$LayoutParams;->y:I

    .line 163
    .local v4, "y":I
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    aget-object v1, v5, v7

    .line 164
    .local v1, "topDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 165
    invoke-virtual {p1}, Lcom/android/launcher2/AppIconView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 166
    move-object v2, p1

    .line 167
    .local v2, "view":Landroid/view/View;
    :goto_1
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eq v2, v5, :cond_1

    .line 168
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v3, v5

    .line 169
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .end local v2    # "view":Landroid/view/View;
    check-cast v2, Landroid/view/View;

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 172
    :cond_1
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v3, v5, v6

    aput v4, v5, v7

    goto :goto_0
.end method

.method private final getLocationOfFolderIcon()[I
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    const/4 v12, 0x1

    .line 117
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 118
    .local v9, "view":Landroid/view/View;
    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v10}, Lcom/android/launcher2/FolderIconView;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 120
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 121
    .local v7, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v10, 0x2

    new-array v6, v10, [I

    .line 123
    .local v6, "loc":[I
    invoke-virtual {v9, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 127
    aget v10, v6, v12

    sget-object v11, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    aget v11, v11, v12

    sub-int/2addr v10, v11

    aput v10, v6, v12

    .line 130
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v3, v10, v13

    .line 131
    .local v3, "dx":F
    invoke-virtual {v9}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v4, v10

    .line 133
    .local v4, "dy":F
    const/4 v8, 0x0

    .line 135
    .local v8, "scale":F
    :try_start_0
    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 140
    :goto_0
    aget v10, v6, v14

    int-to-float v10, v10

    mul-float v11, v3, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v14

    .line 141
    aget v10, v6, v12

    int-to-float v10, v10

    mul-float v11, v4, v8

    add-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v12

    .line 143
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_0

    .line 144
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v2, v10

    .line 145
    .local v2, "bw":F
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v1, v10

    .line 146
    .local v1, "bh":F
    aget v10, v6, v14

    int-to-float v10, v10

    mul-float v11, v2, v8

    sub-float v11, v2, v11

    div-float/2addr v11, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v14

    .line 147
    aget v10, v6, v12

    int-to-float v10, v10

    mul-float v11, v1, v8

    sub-float v11, v1, v11

    div-float/2addr v11, v13

    sub-float/2addr v10, v11

    float-to-int v10, v10

    aput v10, v6, v12

    .line 153
    .end local v1    # "bh":F
    .end local v2    # "bw":F
    :cond_0
    return-object v6

    .line 136
    :catch_0
    move-exception v5

    .line 137
    .local v5, "ex":Ljava/lang/NullPointerException;
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method private getNewImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 404
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 405
    .local v0, "v":Landroid/widget/ImageView;
    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 406
    return-object v0
.end method

.method private startHoveringLocation(I)Lcom/android/launcher2/FolderIconHelper$LocFolder;
    .locals 7
    .param p1, "count"    # I

    .prologue
    .line 320
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->NOMAL:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    .line 322
    .local v2, "location":Lcom/android/launcher2/FolderIconHelper$LocFolder;
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 323
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 324
    .local v4, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v5}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 325
    .local v1, "item":Lcom/android/launcher2/BaseItem;
    const v5, 0x7f0b000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 326
    .local v0, "changeFolderHoveringLocation":Z
    const/4 v5, 0x1

    if-ne p1, v5, :cond_0

    .line 327
    sget-object v5, Lcom/android/launcher2/FolderIconHelper$LocFolder;->NOMAL:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    .line 347
    :goto_0
    return-object v5

    .line 329
    :cond_0
    if-eqz v0, :cond_1

    .line 331
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_2

    .line 333
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->LEFT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    :cond_1
    :goto_1
    move-object v5, v2

    .line 347
    goto :goto_0

    .line 335
    :cond_2
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    const v6, 0x7f0c0027

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_3

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_3

    .line 338
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->RIGHT_FOLDER_INMENU:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    goto :goto_1

    .line 340
    :cond_3
    iget v5, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-nez v5, :cond_1

    iget-object v5, v1, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v5, v6, :cond_1

    .line 342
    const/4 v5, 0x4

    if-le p1, v5, :cond_1

    .line 343
    sget-object v2, Lcom/android/launcher2/FolderIconHelper$LocFolder;->TOP_FOLDER_INHOME:Lcom/android/launcher2/FolderIconHelper$LocFolder;

    goto :goto_1
.end method


# virtual methods
.method FadeInHoverIcon(I)V
    .locals 23
    .param p1, "refresh_cnt"    # I

    .prologue
    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v18

    .line 605
    .local v18, "item":Lcom/android/launcher2/FolderItem;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v14

    .line 606
    .local v14, "count":I
    const/16 v21, 0x0

    .line 607
    .local v21, "remainder_cnt":I
    const/16 v16, 0x0

    .line 608
    .local v16, "for_cnt":I
    const/4 v15, 0x7

    .line 609
    .local v15, "folderHoverIconCnt":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher2/FolderAnimator;->setFolderHoveringEndTime(J)V

    .line 611
    const/16 v2, 0x8

    if-ge v14, v2, :cond_1

    .line 688
    :cond_0
    return-void

    .line 614
    :cond_1
    div-int v2, v14, v15

    move/from16 v0, p1

    if-ne v2, v0, :cond_2

    .line 615
    mul-int v2, v15, p1

    rem-int v21, v14, v2

    .line 617
    :cond_2
    if-nez v21, :cond_3

    .line 618
    add-int/lit8 v16, v15, -0x1

    .line 622
    :goto_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->clearFolderHoverAnims()V

    .line 625
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v19

    .line 626
    .local v19, "loc":[I
    move/from16 v17, v16

    .local v17, "i":I
    :goto_1
    if-ltz v17, :cond_0

    .line 627
    mul-int v2, p1, v15

    add-int v2, v2, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-object v6, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 629
    .local v6, "b":Landroid/graphics/Bitmap;
    if-nez v6, :cond_4

    .line 626
    :goto_2
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 620
    .end local v6    # "b":Landroid/graphics/Bitmap;
    .end local v17    # "i":I
    .end local v19    # "loc":[I
    :cond_3
    add-int/lit8 v16, v21, -0x1

    goto :goto_0

    .line 630
    .restart local v6    # "b":Landroid/graphics/Bitmap;
    .restart local v17    # "i":I
    .restart local v19    # "loc":[I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getAnimGroup()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v9

    .line 632
    .local v9, "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->invalidate()V

    .line 633
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 634
    mul-int v2, p1, v15

    add-int v2, v2, v17

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iput-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    .line 640
    .local v20, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 641
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 642
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v2, v3, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 643
    move-object/from16 v0, v20

    iput-object v0, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v22

    .line 646
    .local v22, "scale":F
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor()F

    move-result v2

    mul-float v22, v22, v2

    .line 647
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 648
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 650
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v10

    .line 651
    .local v10, "from":[I
    const/4 v2, 0x0

    aget v3, v10, v2

    const/4 v4, 0x0

    aget v4, v19, v4

    add-int/2addr v3, v4

    aput v3, v10, v2

    .line 652
    const/4 v2, 0x1

    aget v3, v10, v2

    const/4 v4, 0x1

    aget v4, v19, v4

    add-int/2addr v3, v4

    aput v3, v10, v2

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    add-int/lit8 v3, v16, 0x1

    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher2/FolderAnimator;->startHoveringLocation(I)Lcom/android/launcher2/FolderIconHelper$LocFolder;

    move-result-object v4

    move/from16 v0, v17

    invoke-static {v2, v0, v3, v4}, Lcom/android/launcher2/FolderIconHelper;->getHoverOffset(Landroid/content/res/Resources;IILcom/android/launcher2/FolderIconHelper$LocFolder;)[I

    move-result-object v11

    .line 656
    .local v11, "to":[I
    move/from16 v12, v17

    .line 657
    .local v12, "pos":I
    move/from16 v13, v16

    .line 658
    .local v13, "pos_equal":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v10, v9, v1, v11}, Lcom/android/launcher2/FolderAnimator;->buildAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[I)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 659
    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    new-instance v7, Lcom/android/launcher2/FolderAnimator$7;

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/FolderAnimator$7;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[III)V

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 685
    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3}, Lcom/android/launcher2/FolderAnimator;->animHoverGroup(IZ)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 686
    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto/16 :goto_2
.end method

.method animateCloseAnimsEnd(Lcom/android/launcher2/DragState;ZZ)V
    .locals 18
    .param p1, "dragState"    # Lcom/android/launcher2/DragState;
    .param p2, "forceDropAnim"    # Z
    .param p3, "isHover"    # Z

    .prologue
    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->hasDeleted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    goto :goto_0

    .line 700
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v2}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 703
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->cancelBouncingItem()V

    .line 704
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v14

    .line 706
    .local v14, "count":I
    const/4 v13, 0x0

    .line 707
    .local v13, "animateDrop":Z
    if-eqz p1, :cond_5

    .line 708
    if-nez p2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->foundValidDrop()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    iget-object v3, v3, Lcom/android/launcher2/Folder;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    if-ne v2, v3, :cond_a

    :cond_4
    const/4 v13, 0x1

    .line 710
    :goto_1
    if-nez p2, :cond_5

    if-eqz v13, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->hasEnded()Z

    move-result v2

    if-nez v2, :cond_5

    .line 711
    const/4 v13, 0x0

    .line 714
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getAnimGroup()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v5, 0x0

    if-eqz v13, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v6

    iget-object v6, v6, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    :goto_2
    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v4

    .line 716
    .local v4, "dropAnim":Lcom/android/launcher2/AnimationLayer$Anim;
    if-eqz p1, :cond_6

    .line 717
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iput-object v2, v4, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 719
    :cond_6
    if-eqz v13, :cond_c

    .line 721
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v5

    .line 722
    .local v5, "pos_":I
    invoke-virtual {v4}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/DragState;->getShadow()Lcom/android/launcher2/ShadowBuilder;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 725
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 726
    .local v17, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 727
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 728
    iget-object v2, v4, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 729
    move-object/from16 v0, v17

    iput-object v0, v4, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 742
    .end local v5    # "pos_":I
    .end local v17    # "paint":Landroid/graphics/Paint;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 743
    .local v8, "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v8}, Lcom/android/launcher2/AnimationLayer$Anim;->cancelAnimation()V

    .line 744
    iget-object v0, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    move-object/from16 v16, v0

    .line 745
    .local v16, "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v9

    .line 746
    .local v9, "pos":I
    iget-object v2, v8, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    .line 750
    if-eqz p3, :cond_d

    .line 752
    const/4 v2, 0x7

    if-le v14, v2, :cond_9

    .line 753
    const/4 v14, 0x7

    .line 754
    :cond_9
    invoke-virtual {v4}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3

    .line 708
    .end local v4    # "dropAnim":Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v8    # "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v9    # "pos":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v16    # "item":Lcom/android/launcher2/BaseItem;
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 714
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 735
    .restart local v4    # "dropAnim":Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 736
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto/16 :goto_0

    .line 759
    .restart local v8    # "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    .restart local v9    # "pos":I
    .restart local v15    # "i$":Ljava/util/Iterator;
    .restart local v16    # "item":Lcom/android/launcher2/BaseItem;
    :cond_d
    invoke-virtual {v4}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_3

    .line 765
    .end local v8    # "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v9    # "pos":I
    .end local v16    # "item":Lcom/android/launcher2/BaseItem;
    :cond_e
    invoke-virtual {v4}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/FolderAnimator$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/launcher2/FolderAnimator$8;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 776
    invoke-virtual {v4}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    sget v3, Lcom/android/launcher2/Workspace;->STATE_CHANGE_DURATION:I

    int-to-long v6, v3

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 777
    invoke-virtual {v4}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 779
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderAnimator;->animatePlate(Z)Z

    goto/16 :goto_0
.end method

.method animateHoverExpand()V
    .locals 19

    .prologue
    .line 548
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->removeOpenAnimations()V

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 553
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher2/FolderAnimator;->cleanupCloseAnims(Z)V

    .line 555
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getFolderItem()Lcom/android/launcher2/FolderItem;

    move-result-object v15

    .line 556
    .local v15, "item":Lcom/android/launcher2/FolderItem;
    invoke-interface {v15}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v2

    const/4 v3, 0x7

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 558
    .local v14, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 561
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v16

    .line 563
    .local v16, "loc":[I
    add-int/lit8 v10, v14, -0x1

    .local v10, "i":I
    :goto_0
    if-ltz v10, :cond_2

    .line 564
    invoke-interface {v15, v10}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iget-object v6, v2, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 565
    .local v6, "b":Landroid/graphics/Bitmap;
    if-nez v6, :cond_1

    .line 563
    :goto_1
    add-int/lit8 v10, v10, -0x1

    goto :goto_0

    .line 566
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getAnimGroup()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v5, 0x0

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v9

    .line 567
    .local v9, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-interface {v15, v10}, Lcom/android/launcher2/FolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v2

    iput-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 572
    .local v17, "paint":Landroid/graphics/Paint;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 573
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 574
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    const/4 v3, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v2, v3, v0}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 575
    move-object/from16 v0, v17

    iput-object v0, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v18

    .line 578
    .local v18, "scale":F
    invoke-static {}, Lcom/android/launcher2/FolderIconHelper;->getAppIconScaleFactor()F

    move-result v2

    mul-float v18, v18, v2

    .line 579
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 580
    iget-object v2, v9, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 582
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v8

    .line 583
    .local v8, "from":[I
    const/4 v2, 0x0

    aget v3, v8, v2

    const/4 v4, 0x0

    aget v4, v16, v4

    add-int/2addr v3, v4

    aput v3, v8, v2

    .line 584
    const/4 v2, 0x1

    aget v3, v8, v2

    const/4 v4, 0x1

    aget v4, v16, v4

    add-int/2addr v3, v4

    aput v3, v8, v2

    .line 586
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/FolderAnimator;->startHoveringLocation(I)Lcom/android/launcher2/FolderIconHelper$LocFolder;

    move-result-object v3

    invoke-static {v2, v10, v14, v3}, Lcom/android/launcher2/FolderIconHelper;->getHoverOffset(Landroid/content/res/Resources;IILcom/android/launcher2/FolderIconHelper$LocFolder;)[I

    move-result-object v11

    .line 587
    .local v11, "to":[I
    const/4 v12, 0x1

    const/4 v13, 0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher2/FolderAnimator;->buildCloseAnimation([ILcom/android/launcher2/AnimationLayer$Anim;I[IZZ)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 588
    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    new-instance v3, Lcom/android/launcher2/FolderAnimator$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher2/FolderAnimator$6;-><init>(Lcom/android/launcher2/FolderAnimator;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 596
    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    const-wide/16 v4, 0x190

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 597
    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 598
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    goto/16 :goto_1

    .line 600
    .end local v6    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "from":[I
    .end local v9    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v11    # "to":[I
    .end local v17    # "paint":Landroid/graphics/Paint;
    .end local v18    # "scale":F
    :cond_2
    return-void
.end method

.method animatePlate(Z)Z
    .locals 11
    .param p1, "isDragging"    # Z

    .prologue
    const/4 v0, 0x0

    .line 820
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mHighlightFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v9

    .line 821
    .local v9, "h":Z
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mCreateFactor:Lcom/android/launcher2/ScalarAnimator;

    invoke-virtual {v1}, Lcom/android/launcher2/ScalarAnimator;->isAnimating()Z

    move-result v7

    .line 822
    .local v7, "c":Z
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-nez v9, :cond_2

    if-nez v7, :cond_2

    .line 854
    :cond_1
    :goto_0
    return v0

    .line 826
    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->fromThisFolder()Z

    move-result v1

    if-nez v1, :cond_4

    .line 827
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v0, v1, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 828
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v0, v1, Lcom/android/launcher2/FolderIconView;->mDrawShadow:Z

    .line 829
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v0, v1, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 830
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 833
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v1, v1, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v1, :cond_1

    .line 835
    iget-boolean v1, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-nez v1, :cond_7

    if-nez p1, :cond_7

    .line 836
    :cond_5
    iput-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    .line 842
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/FolderItem;

    .line 843
    .local v8, "folderItem":Lcom/android/launcher2/FolderItem;
    invoke-interface {v8}, Lcom/android/launcher2/FolderItem;->getFolderColor()I

    move-result v0

    invoke-static {v0}, Lcom/android/launcher2/FolderIconHelper;->getOpenFolderHighlightBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 844
    .local v6, "b":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    .line 845
    const/4 v5, -0x1

    .line 846
    .local v5, "index":I
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v0, :cond_6

    .line 847
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mFolder:Lcom/android/launcher2/Folder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AnimationLayer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 850
    :cond_6
    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/FolderIconView;->getAnimGroup()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v4, v4, Lcom/android/launcher2/FolderIconView;->mPlateBitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer;->buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    iput-object v0, v10, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 853
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->drawPlate()V

    .line 854
    const/4 v0, 0x1

    goto :goto_0

    .line 839
    .end local v5    # "index":I
    .end local v6    # "b":Landroid/graphics/Bitmap;
    .end local v8    # "folderItem":Lcom/android/launcher2/FolderItem;
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mRenderIconOnPlate:Z

    goto :goto_1
.end method

.method bounceItemInIconAt(Lcom/android/launcher2/BaseItem;I)V
    .locals 13
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "pos"    # I

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/android/launcher2/FolderAnimator;->buildAnimForItem(Lcom/android/launcher2/BaseItem;)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 203
    .local v0, "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    iput-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 204
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    new-instance v10, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v10}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v9, v10}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 207
    if-eqz p2, :cond_0

    .line 208
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v10, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/AnimationLayer;->removeView(Landroid/view/View;)V

    .line 211
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    iget-object v10, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v10}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;)V

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v3

    .line 215
    .local v3, "loc":[I
    const/4 v9, 0x4

    invoke-direct {p0, v9}, Lcom/android/launcher2/FolderAnimator;->getAppIconOffset(I)[I

    move-result-object v4

    .line 217
    .local v4, "offset":[I
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getHotseatScaleFactor()F

    move-result v2

    .line 220
    .local v2, "hotseatScale":F
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 221
    .local v6, "res":Landroid/content/res/Resources;
    const v9, 0x7f0e0199

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 222
    .local v5, "offsetDestY":I
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v2, v9

    if-gez v9, :cond_1

    .line 223
    const v9, 0x7f0e019a

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 225
    :cond_1
    const/4 v9, 0x2

    new-array v1, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    const/4 v11, 0x0

    aget v11, v4, v11

    add-int/2addr v10, v11

    aput v10, v1, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    const/4 v11, 0x1

    aget v11, v4, v11

    sub-int/2addr v11, v5

    add-int/2addr v10, v11

    aput v10, v1, v9

    .line 230
    .local v1, "dest":[I
    const/4 v9, 0x2

    new-array v8, v9, [I

    const/4 v9, 0x0

    const/4 v10, 0x0

    aget v10, v3, v10

    const/4 v11, 0x0

    aget v11, v4, v11

    add-int/2addr v10, v11

    aput v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x1

    aget v10, v3, v10

    const/4 v11, 0x1

    aget v11, v4, v11

    sub-int/2addr v11, v5

    iget-object v12, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x4

    sub-int/2addr v11, v12

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 235
    .local v8, "up":[I
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v9}, Lcom/android/launcher2/FolderIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getScaleX()F

    move-result v7

    .line 237
    .local v7, "scale":F
    const/high16 v9, 0x3f400000    # 0.75f

    mul-float/2addr v7, v9

    .line 238
    iget-object v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 239
    iget-object v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 241
    const/4 v9, 0x0

    iput v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    .line 242
    iget v9, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mDarken:F

    iget-object v10, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mPaint:Landroid/graphics/Paint;

    invoke-static {v9, v10}, Lcom/android/launcher2/FolderIconView;->setDarkenPaintMultiplier(FLandroid/graphics/Paint;)V

    .line 244
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher2/FolderIconView;->setBounceItem(Z)V

    .line 245
    const/high16 v9, 0x3f000000    # 0.5f

    iget-object v10, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {p0, v9, v10}, Lcom/android/launcher2/FolderAnimator;->setCloseAnimsAlpha(FLcom/android/launcher2/AnimationLayer$Anim;)V

    .line 247
    iget-object v9, p0, Lcom/android/launcher2/FolderAnimator;->mAnimationLayer:Lcom/android/launcher2/AnimationLayer;

    invoke-virtual {v9}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 249
    new-instance v9, Lcom/android/launcher2/FolderAnimator$2;

    invoke-direct {v9, p0, v0, v1, v8}, Lcom/android/launcher2/FolderAnimator$2;-><init>(Lcom/android/launcher2/FolderAnimator;Lcom/android/launcher2/AnimationLayer$Anim;[I[I)V

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Lcom/android/launcher2/AnimationLayer$Anim;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)V

    .line 268
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    const-wide/16 v10, 0x4b0

    invoke-virtual {v9, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 269
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v9

    invoke-virtual {v9}, Landroid/animation/Animator;->start()V

    .line 270
    return-void
.end method

.method cancel()V
    .locals 1

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/android/launcher2/FolderAnimator;->destroyPlate()V

    .line 815
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mOnAnimationCancel:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 816
    return-void
.end method

.method cancelBouncingItem()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v1, :cond_1

    .line 303
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 288
    .local v0, "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    iput-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 291
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/FolderIconView;->setBounceItem(Z)V

    .line 292
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/FolderAnimator;->setCloseAnimsAlpha(FLcom/android/launcher2/AnimationLayer$Anim;)V

    .line 294
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 295
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->removeAllListeners()V

    .line 296
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 297
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 299
    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->addAlphaAnimator(FFZ)V

    .line 302
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method cleanupCloseAnims(Z)V
    .locals 4
    .param p1, "isRefreshHover"    # Z

    .prologue
    .line 783
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 784
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 785
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 786
    if-nez p1, :cond_0

    .line 787
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 803
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 792
    .local v0, "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    goto :goto_1

    .line 795
    .end local v0    # "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 796
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    .line 798
    if-nez p1, :cond_0

    .line 801
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    goto :goto_0
.end method

.method clearFolderHoverAnims()V
    .locals 3

    .prologue
    .line 806
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 811
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 808
    .local v0, "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    goto :goto_1

    .line 810
    .end local v0    # "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method destroyPlate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 858
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->resetShadow()V

    .line 859
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 860
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v0, :cond_0

    .line 861
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-object v0, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 862
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/launcher2/FolderIconView;->mPlate:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 865
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/FolderIconView;->mDrawPlate:Z

    .line 866
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/FolderIconView;->mDrawShadow:Z

    .line 868
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_1

    .line 869
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iput-boolean v2, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 872
    :cond_1
    return-void
.end method

.method finishBouncingItem(Lcom/android/launcher2/BaseItem;)V
    .locals 3
    .param p1, "swapWith"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const/4 v2, 0x0

    .line 274
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 276
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 277
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 278
    iput-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mBouncingAnim:Lcom/android/launcher2/AnimationLayer$Anim;

    .line 280
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/FolderIconView;->setBounceItem(Z)V

    .line 281
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher2/FolderAnimator;->setCloseAnimsAlpha(FLcom/android/launcher2/AnimationLayer$Anim;)V

    goto :goto_0
.end method

.method public getFolderHoveringEndTime()J
    .locals 2

    .prologue
    .line 544
    iget-wide v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoveringEndTime:J

    return-wide v0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 306
    iget-boolean v0, p0, Lcom/android/launcher2/FolderAnimator;->mAnimatingOpen:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCloseAnimating()Z
    .locals 2

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    iget-boolean v1, v1, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    if-nez v1, :cond_1

    .line 315
    :cond_0
    const/4 v0, 0x1

    .line 317
    :cond_1
    return v0
.end method

.method public isHoverAnimating()Z
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoverAnim:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method open()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/FolderIconView;->mDrawIcon:Z

    .line 382
    iget-object v0, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/FolderIconView;->invalidate()V

    .line 383
    return-void
.end method

.method public removeOpenAnimations()V
    .locals 4

    .prologue
    .line 524
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 525
    .local v1, "img":Landroid/widget/ImageView;
    new-instance v2, Lcom/android/launcher2/FolderAnimator$5;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher2/FolderAnimator$5;-><init>(Lcom/android/launcher2/FolderAnimator;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 531
    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 533
    .end local v1    # "img":Landroid/widget/ImageView;
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mOpenAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 534
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher2/FolderAnimator;->mNumCloseAnimsRunning:I

    .line 535
    return-void
.end method

.method setCloseAnimsAlpha(FLcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 4
    .param p1, "alpha"    # F
    .param p2, "exceptAnim"    # Lcom/android/launcher2/AnimationLayer$Anim;

    .prologue
    .line 191
    iget-object v2, p0, Lcom/android/launcher2/FolderAnimator;->mCloseAnims:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 192
    .local v1, "iter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/android/launcher2/AnimationLayer$Anim;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 194
    .local v0, "iconAni":Lcom/android/launcher2/AnimationLayer$Anim;
    if-eqz p2, :cond_1

    if-eq v0, p2, :cond_0

    .line 195
    :cond_1
    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mLinkedItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->getPosition()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 198
    .end local v0    # "iconAni":Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_2
    return-void
.end method

.method public setFolderHoveringEndTime(J)V
    .locals 1
    .param p1, "endtime"    # J

    .prologue
    .line 540
    iput-wide p1, p0, Lcom/android/launcher2/FolderAnimator;->mFolderHoveringEndTime:J

    .line 541
    return-void
.end method

.method public updateTempIconPosition()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 950
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mContent:Lcom/android/launcher2/CellLayoutNoGap;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutNoGap;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/launcher2/CellLayoutChildren;->getChildFromPosition(I)Landroid/view/View;

    move-result-object v2

    .line 951
    .local v2, "v":Landroid/view/View;
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 952
    .local v1, "mitem":Lcom/android/launcher2/BaseItem;
    if-eqz v2, :cond_0

    .line 953
    check-cast v2, Lcom/android/launcher2/AppIconView;

    .end local v2    # "v":Landroid/view/View;
    invoke-direct {p0, v2, v4}, Lcom/android/launcher2/FolderAnimator;->getIconRelativeToAnimationLayer(Lcom/android/launcher2/AppIconView;Z)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    .line 954
    invoke-virtual {v1}, Lcom/android/launcher2/BaseItem;->getItemType()Lcom/android/launcher2/BaseItem$Type;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v4, :cond_0

    .line 955
    iget-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomeItem;

    .line 956
    .local v0, "item":Lcom/android/launcher2/HomeItem;
    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/FolderAnimator;->mFolderOpenOri:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v4, :cond_0

    .line 959
    invoke-direct {p0}, Lcom/android/launcher2/FolderAnimator;->getLocationOfFolderIcon()[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/FolderAnimator;->mTempIconPos:[I

    .line 963
    .end local v0    # "item":Lcom/android/launcher2/HomeItem;
    :cond_0
    return-void
.end method

.method updateToNewIcon(Lcom/android/launcher2/FolderIconView;)V
    .locals 0
    .param p1, "icon"    # Lcom/android/launcher2/FolderIconView;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/launcher2/FolderAnimator;->mIcon:Lcom/android/launcher2/FolderIconView;

    .line 64
    return-void
.end method
