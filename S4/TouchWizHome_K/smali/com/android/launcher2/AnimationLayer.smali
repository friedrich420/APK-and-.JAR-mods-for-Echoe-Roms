.class public Lcom/android/launcher2/AnimationLayer;
.super Landroid/widget/FrameLayout;
.source "AnimationLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AnimationLayer$Anim;
    }
.end annotation


# static fields
.field static final sRootLocationOnScreen:[I


# instance fields
.field private final BLOCK_EVENTS_TIMEOUT:J

.field private mAnimPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AnimationLayer$Anim;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockEvents:Z

.field final mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

.field private mCurrentOrientation:I

.field private mDragLastX:I

.field private mDragLastY:I

.field private mDragLocalState:Ljava/lang/Object;

.field private mDragStateDropped:Z

.field private mFirstDrawAfterConfigChange:Z

.field private mLastBlockTime:J

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mNeedToInvalidate:Z

.field private final mResources:Landroid/content/res/Resources;

.field private final mTmpFPos:[F

.field private final mTmpPos:[I

.field private mViewPool:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    .line 65
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 66
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 71
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mNeedToInvalidate:Z

    .line 465
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 467
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer;->BLOCK_EVENTS_TIMEOUT:J

    .line 513
    new-instance v0, Lcom/android/launcher2/AnimationLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$1;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 678
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    .line 681
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    .line 754
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 755
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    .line 76
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 78
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    .line 65
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 66
    iput v1, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 71
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mNeedToInvalidate:Z

    .line 465
    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 467
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/launcher2/AnimationLayer;->BLOCK_EVENTS_TIMEOUT:J

    .line 513
    new-instance v0, Lcom/android/launcher2/AnimationLayer$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$1;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    .line 678
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    .line 681
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    .line 754
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 755
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    .line 88
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 90
    check-cast p1, Lcom/android/launcher2/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 91
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/AnimationLayer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/AnimationLayer;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/launcher2/AnimationLayer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/AnimationLayer;
    .param p1, "x1"    # J

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    return-wide p1
.end method

.method private cleanupFinishedAnimations()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 683
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 684
    .local v2, "toRemove":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AnimationLayer$Anim;>;"
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 685
    .local v0, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 686
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 689
    .end local v0    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 690
    .restart local v0    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 691
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimIcon:Landroid/widget/ImageView;

    .line 692
    .local v3, "v":Landroid/widget/ImageView;
    if-eqz v3, :cond_2

    .line 693
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 694
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 695
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 696
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v4, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->recycle()V

    .line 700
    iget-object v4, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 702
    .end local v0    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v3    # "v":Landroid/widget/ImageView;
    :cond_3
    return-void
.end method

.method public static createAnimatorSequentialSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 3
    .param p0, "animator1"    # Landroid/animation/Animator;
    .param p1, "animator2"    # Landroid/animation/Animator;

    .prologue
    .line 1235
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1236
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 1237
    return-object v0
.end method

.method public static createAnimatorTogetherSet(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/AnimatorSet;
    .locals 3
    .param p0, "animator1"    # Landroid/animation/Animator;
    .param p1, "animator2"    # Landroid/animation/Animator;

    .prologue
    .line 1229
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1230
    .local v0, "set":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1231
    return-object v0
.end method

.method private dispatchOrientationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 331
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    .line 333
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 334
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/android/launcher2/FolderIconHelper;->initFolderResources(Landroid/content/res/Resources;)V

    .line 335
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 336
    return-void
.end method

.method private getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 711
    new-instance v0, Lcom/android/launcher2/AnimationLayer$Anim;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AnimationLayer$Anim;-><init>(Lcom/android/launcher2/AnimationLayer;)V

    .line 713
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method private getNewImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 705
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 706
    .local v0, "v":Landroid/widget/ImageView;
    :goto_0
    const/4 v1, 0x0

    sget-object v2, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 707
    return-object v0

    .line 705
    .end local v0    # "v":Landroid/widget/ImageView;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public animateDrop(ILjava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 11
    .param p1, "group"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "shadow"    # Lcom/android/launcher2/ShadowBuilder;

    .prologue
    const/4 v6, 0x0

    .line 734
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 751
    :cond_0
    :goto_0
    return-object v6

    .line 738
    :cond_1
    instance-of v0, p3, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 740
    const/4 v4, 0x0

    .line 741
    .local v4, "b":Landroid/graphics/Bitmap;
    instance-of v0, p3, Lcom/android/launcher2/AppIconView;

    if-eqz v0, :cond_2

    move-object v0, p3

    .line 742
    check-cast v0, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v0}, Lcom/android/launcher2/AppIconView;->getDragIcon()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 745
    :cond_2
    if-nez v4, :cond_3

    .line 746
    invoke-virtual {p4}, Lcom/android/launcher2/ShadowBuilder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 749
    :cond_3
    invoke-virtual {p0, p4}, Lcom/android/launcher2/AnimationLayer;->getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I

    move-result-object v5

    const/4 v7, 0x0

    const/16 v8, 0x140

    const/4 v9, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher2/AnimationLayer;->animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v10

    .local v10, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    move-object v6, v10

    .line 751
    goto :goto_0
.end method

.method public animateIcon(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;[I[IZIZ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 8
    .param p1, "group"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "b"    # Landroid/graphics/Bitmap;
    .param p5, "from"    # [I
    .param p6, "to"    # [I
    .param p7, "fadeMove"    # Z
    .param p8, "duration"    # I
    .param p9, "fadeInShadow"    # Z

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 587
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 588
    .local v3, "a":Landroid/widget/ImageView;
    invoke-virtual {v3, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 589
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p0, v3, v1, v2}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;II)V

    .line 591
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 592
    .local v0, "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    iput p1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    .line 593
    if-eqz p2, :cond_0

    .line 594
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    .line 596
    :cond_0
    if-eqz p7, :cond_1

    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    .line 597
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveFadeAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[I)V

    .line 601
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 603
    return-object v0

    :cond_1
    move-object v1, p3

    move-object v2, p4

    move-object v4, p5

    move-object v5, p6

    move/from16 v6, p8

    move/from16 v7, p9

    .line 599
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/AnimationLayer$Anim;->setupMoveAnimation(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;[I[IIZ)V

    goto :goto_0
.end method

.method public areTouchEventsBlocked()Z
    .locals 4

    .prologue
    .line 500
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher2/AnimationLayer;->mLastBlockTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 502
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    .line 505
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mBlockEvents:Z

    return v0
.end method

.method public buildBasicAnim(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;I)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 7
    .param p1, "group"    # I
    .param p2, "callback"    # Ljava/lang/Runnable;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "b"    # Landroid/graphics/Bitmap;
    .param p5, "index"    # I

    .prologue
    .line 607
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 609
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewAnim()Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 611
    .local v0, "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    if-nez p4, :cond_0

    .line 612
    const/4 v5, 0x0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    .line 624
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    return-object v0

    .line 614
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->getNewImageView()Landroid/widget/ImageView;

    move-result-object v5

    .line 615
    .local v5, "a":Landroid/widget/ImageView;
    invoke-virtual {v5, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 616
    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 618
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v6

    .line 619
    .local v6, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 620
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 621
    invoke-virtual {p0, v5, p5, v6}, Lcom/android/launcher2/AnimationLayer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 622
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/AnimationLayer$Anim;->setupBasicAnimation(ILjava/lang/Runnable;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public cancelAnimationFor(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 659
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 660
    .local v0, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 661
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 665
    .end local v0    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    return-void
.end method

.method public cancelAnimations()V
    .locals 4

    .prologue
    .line 645
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 646
    .local v0, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 647
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 648
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 649
    .local v2, "r":Ljava/lang/Runnable;
    if-eqz v2, :cond_0

    .line 650
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 655
    .end local v0    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 656
    return-void
.end method

.method public cancelAnimationsByGroup(I)V
    .locals 4
    .param p1, "group"    # I

    .prologue
    .line 629
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 630
    .local v0, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    iget v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mAnimGroup:I

    if-ne v3, p1, :cond_0

    .line 631
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->cancel()V

    .line 632
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_0

    .line 633
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mCallback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 634
    .local v2, "r":Ljava/lang/Runnable;
    if-eqz v2, :cond_0

    .line 635
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 641
    .end local v0    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 642
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 259
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .locals 15
    .param p1, "event"    # Landroid/view/DragEvent;

    .prologue
    .line 356
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 357
    .local v1, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v8

    .line 358
    .local v8, "localState":Ljava/lang/Object;
    const/4 v10, 0x0

    .line 359
    .local v10, "rc":Z
    const/4 v7, 0x0

    .line 361
    .local v7, "label":Ljava/lang/String;
    sget-boolean v13, Lcom/android/launcher2/LauncherApplication;->sDNDBinding:Z

    if-eqz v13, :cond_4

    sget-boolean v13, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v13, :cond_4

    .line 362
    const/4 v13, 0x1

    if-ne v1, v13, :cond_0

    .line 363
    const/4 v13, 0x0

    sput-object v13, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    .line 365
    :cond_0
    if-nez v8, :cond_4

    .line 366
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 368
    .local v2, "cd":Landroid/content/ClipDescription;
    iget-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v13, :cond_7

    iget-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v13}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v4

    .line 369
    .local v4, "hv":Lcom/android/launcher2/HomeView;
    :goto_0
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v12

    .line 371
    .local v12, "ws":Lcom/android/launcher2/Workspace;
    :goto_1
    if-eqz v2, :cond_1

    const/4 v13, 0x1

    if-eq v1, v13, :cond_2

    :cond_1
    const/4 v13, 0x3

    if-ne v1, v13, :cond_4

    .line 372
    :cond_2
    invoke-virtual {v2}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    .end local v7    # "label":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 373
    .restart local v7    # "label":Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string v13, "DragAndDropBinding"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 376
    const/4 v5, 0x0

    .line 378
    .local v5, "intent":Landroid/content/Intent;
    const/4 v13, 0x3

    if-ne v1, v13, :cond_9

    .line 379
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    .line 380
    .local v6, "item":Landroid/content/ClipData$Item;
    invoke-virtual {v6}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 384
    .end local v6    # "item":Landroid/content/ClipData$Item;
    :goto_2
    if-eqz v5, :cond_4

    .line 385
    const-string v13, "itemType"

    const/4 v14, -0x1

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Lcom/android/launcher2/LauncherSettings$Favorites;->convertToLocalItemType(I)I

    move-result v11

    .line 387
    .local v11, "type":I
    if-ltz v11, :cond_4

    if-eqz v5, :cond_4

    .line 388
    new-instance v9, Lcom/android/launcher2/DragState;

    iget-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v9, v5, v11, v13}, Lcom/android/launcher2/DragState;-><init>(Landroid/content/Intent;ILcom/android/launcher2/Launcher;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    .local v9, "localState":Lcom/android/launcher2/DragState;
    if-eqz v9, :cond_a

    .end local v8    # "localState":Ljava/lang/Object;
    :try_start_1
    move-object v0, v9

    check-cast v0, Lcom/android/launcher2/DragState;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    if-eqz v13, :cond_a

    .line 390
    move-object v0, v9

    check-cast v0, Lcom/android/launcher2/DragState;

    move-object v13, v0

    sput-object v13, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    .line 394
    sget-boolean v13, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    sput-boolean v13, Lcom/android/launcher2/Launcher;->isHelpIntentFired:Z

    .line 396
    if-eqz v4, :cond_10

    .line 397
    invoke-virtual {v4}, Lcom/android/launcher2/HomeView;->getVisibility()I

    move-result v13

    if-eqz v13, :cond_3

    .line 398
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Lcom/android/launcher2/HomeView;->setVisibility(I)V

    .line 401
    :cond_3
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Lcom/android/launcher2/Workspace;->isQuickViewWorkspaceOpend()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 402
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lcom/android/launcher2/HomeView;->closeQuickViewWorkspace(Z)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v8, v9

    .line 419
    .end local v2    # "cd":Landroid/content/ClipDescription;
    .end local v4    # "hv":Lcom/android/launcher2/HomeView;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "localState":Lcom/android/launcher2/DragState;
    .end local v11    # "type":I
    .end local v12    # "ws":Lcom/android/launcher2/Workspace;
    :cond_4
    :goto_3
    const/4 v13, 0x1

    if-ne v1, v13, :cond_b

    .line 420
    iput-object v8, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    .line 421
    if-eqz v8, :cond_5

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    iput v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 423
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    iput v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 424
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    .line 425
    const/4 v10, 0x1

    .line 449
    :cond_5
    :goto_4
    if-eqz v10, :cond_6

    .line 450
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v10

    .line 453
    :cond_6
    return v10

    .line 368
    .restart local v2    # "cd":Landroid/content/ClipDescription;
    .restart local v8    # "localState":Ljava/lang/Object;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 369
    .restart local v4    # "hv":Lcom/android/launcher2/HomeView;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 382
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v12    # "ws":Lcom/android/launcher2/Workspace;
    :cond_9
    const/4 v13, 0x1

    :try_start_2
    invoke-static {v7, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    goto :goto_2

    .line 407
    .end local v8    # "localState":Ljava/lang/Object;
    .restart local v9    # "localState":Lcom/android/launcher2/DragState;
    .restart local v11    # "type":I
    :cond_a
    const/4 v8, 0x0

    .restart local v8    # "localState":Ljava/lang/Object;
    goto :goto_3

    .line 410
    .end local v9    # "localState":Lcom/android/launcher2/DragState;
    .end local v11    # "type":I
    :catch_0
    move-exception v3

    .line 412
    .local v3, "e1":Ljava/net/URISyntaxException;
    :goto_5
    invoke-virtual {v3}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_3

    .line 427
    .end local v2    # "cd":Landroid/content/ClipDescription;
    .end local v3    # "e1":Ljava/net/URISyntaxException;
    .end local v4    # "hv":Lcom/android/launcher2/HomeView;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "localState":Ljava/lang/Object;
    .end local v12    # "ws":Lcom/android/launcher2/Workspace;
    :cond_b
    iget-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    if-nez v13, :cond_c

    .line 428
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    goto :goto_4

    .line 429
    :cond_c
    const/4 v13, 0x4

    if-ne v1, v13, :cond_d

    .line 431
    const/4 v13, 0x0

    iput-object v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLocalState:Ljava/lang/Object;

    .line 432
    const/4 v10, 0x1

    goto :goto_4

    .line 433
    :cond_d
    iget-boolean v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    if-nez v13, :cond_5

    .line 435
    const/4 v13, 0x2

    if-eq v1, v13, :cond_e

    const/4 v13, 0x3

    if-ne v1, v13, :cond_f

    .line 437
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v13

    float-to-int v13, v13

    iput v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    .line 438
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v13

    float-to-int v13, v13

    iput v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    .line 439
    const/4 v13, 0x3

    if-ne v1, v13, :cond_f

    .line 442
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/launcher2/AnimationLayer;->mDragStateDropped:Z

    .line 445
    :cond_f
    const/4 v10, 0x1

    goto :goto_4

    .line 410
    .restart local v2    # "cd":Landroid/content/ClipDescription;
    .restart local v4    # "hv":Lcom/android/launcher2/HomeView;
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v9    # "localState":Lcom/android/launcher2/DragState;
    .restart local v11    # "type":I
    .restart local v12    # "ws":Lcom/android/launcher2/Workspace;
    :catch_1
    move-exception v3

    move-object v8, v9

    .restart local v8    # "localState":Ljava/lang/Object;
    goto :goto_5

    .end local v8    # "localState":Ljava/lang/Object;
    :cond_10
    move-object v8, v9

    .restart local v8    # "localState":Ljava/lang/Object;
    goto :goto_3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 267
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    if-eqz v1, :cond_0

    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 281
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 273
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v1, v2, :cond_2

    .line 274
    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->requestLayout()V

    .line 280
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 276
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    if-eqz v1, :cond_1

    .line 277
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    .line 278
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AnimationLayer;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method protected dispatchGetDisplayList()V
    .locals 3

    .prologue
    .line 289
    sget-boolean v1, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    if-eqz v1, :cond_0

    .line 290
    invoke-super {p0}, Landroid/widget/FrameLayout;->dispatchGetDisplayList()V

    .line 303
    :goto_0
    return-void

    .line 294
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 295
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v1, v2, :cond_2

    .line 296
    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    .line 297
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->requestLayout()V

    .line 302
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/widget/FrameLayout;->dispatchGetDisplayList()V

    goto :goto_0

    .line 298
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    if-eqz v1, :cond_1

    .line 299
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AnimationLayer;->mFirstDrawAfterConfigChange:Z

    .line 300
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AnimationLayer;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 495
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->areTouchEventsBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 496
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 307
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AnimationLayer;->mNeedToInvalidate:Z

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->invalidate()V

    .line 309
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowFocusChanged(Z)V

    .line 310
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    const/4 v2, 0x1

    .line 547
    instance-of v3, p2, Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getLayerType()I

    move-result v3

    if-eqz v3, :cond_2

    .line 548
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 549
    .local v1, "config":Landroid/content/res/Configuration;
    sget-boolean v3, Lcom/android/launcher2/Launcher;->sIsStopped:Z

    if-eqz v3, :cond_1

    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    iget v4, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v3, v4, :cond_1

    .line 550
    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer;->mNeedToInvalidate:Z

    .line 567
    .end local v1    # "config":Landroid/content/res/Configuration;
    :goto_0
    return v2

    .line 553
    .restart local v1    # "config":Landroid/content/res/Configuration;
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/AnimationLayer;->mNeedToInvalidate:Z

    .line 554
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v2

    goto :goto_0

    .line 557
    .end local v1    # "config":Landroid/content/res/Configuration;
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 558
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher2/AnimationLayer$Anim;

    if-eqz v3, :cond_3

    .line 559
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 560
    .local v0, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    iget-boolean v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClippingEnabled:Z

    if-eqz v3, :cond_3

    .line 561
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 564
    .end local v0    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 565
    invoke-virtual {p2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 566
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public findExistingAnimation(Landroid/view/View;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 537
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 538
    .local v0, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 542
    .end local v0    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnimationForView(Landroid/view/View;)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 668
    const/4 v1, 0x0

    .line 669
    .local v1, "anim":Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v3, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 670
    .local v0, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    iget-object v3, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v3, p1, :cond_0

    .line 671
    move-object v1, v0

    .line 675
    .end local v0    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    :cond_1
    return-object v1
.end method

.method public getDropOffset(Lcom/android/launcher2/ShadowBuilder;)[I
    .locals 6
    .param p1, "shadow"    # Lcom/android/launcher2/ShadowBuilder;

    .prologue
    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "offset":[I
    if-eqz p1, :cond_0

    .line 721
    invoke-virtual {p1}, Lcom/android/launcher2/ShadowBuilder;->getTouchOffset()[I

    move-result-object v0

    .line 726
    :goto_0
    new-array v1, v1, [I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastX:I

    aget v3, v0, v4

    sub-int/2addr v2, v3

    aput v2, v1, v4

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mDragLastY:I

    aget v3, v0, v5

    sub-int/2addr v2, v3

    aput v2, v1, v5

    return-object v1

    .line 723
    :cond_0
    new-array v0, v1, [I

    .end local v0    # "offset":[I
    fill-array-data v0, :array_0

    .restart local v0    # "offset":[I
    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public getLocationFromCellPos(IILcom/android/launcher2/CellLayout;Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .locals 20
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "layout"    # Lcom/android/launcher2/CellLayout;
    .param p4, "v"    # Landroid/view/View;
    .param p5, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 831
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v8, v0, [I

    .local v8, "l1":[I
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v9, v0, [I

    .line 833
    .local v9, "l2":[I
    move-object/from16 v0, p3

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 835
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v14

    .line 836
    .local v14, "sx":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v15

    .line 837
    .local v15, "sy":F
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 838
    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 839
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Lcom/android/launcher2/CellLayout;->getLocationOnScreen([I)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v12, v0

    .line 841
    .local v12, "lw":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v10, v0

    .line 843
    .local v10, "lh":F
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 844
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 847
    const/16 v16, 0x0

    aget v17, v9, v16

    mul-float v18, v12, v14

    sub-float v18, v12, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    aput v17, v9, v16

    .line 848
    const/16 v16, 0x1

    aget v17, v9, v16

    sget-object v18, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v17, v17, v18

    aput v17, v9, v16

    .line 849
    const/16 v16, 0x1

    aget v17, v9, v16

    mul-float v18, v10, v15

    sub-float v18, v10, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    aput v17, v9, v16

    .line 851
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 852
    .local v13, "pos":[F
    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v14

    const/16 v18, 0x0

    aget v18, v9, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    aput v17, v13, v16

    .line 853
    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v8, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v15

    const/16 v18, 0x1

    aget v18, v9, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v17, v17, v18

    aput v17, v13, v16

    .line 855
    if-eqz p5, :cond_2

    .line 856
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 858
    .local v11, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v16, v0

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x40000000    # 2.0f

    div-float v5, v16, v17

    .line 859
    .local v5, "dx":F
    const/4 v6, 0x0

    .line 860
    .local v6, "dy":F
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_0

    .line 861
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getPaddingTop()I

    move-result v16

    move/from16 v0, v16

    int-to-float v6, v0

    .line 864
    :cond_0
    :try_start_0
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 868
    :goto_0
    const/16 v16, 0x0

    aget v17, v13, v16

    mul-float v18, v5, v14

    add-float v17, v17, v18

    aput v17, v13, v16

    .line 869
    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v16, v14, v16

    if-eqz v16, :cond_1

    .line 870
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v0, v16

    int-to-float v4, v0

    .line 871
    .local v4, "bw":F
    const/16 v16, 0x0

    aget v17, v13, v16

    mul-float v18, v4, v14

    sub-float v18, v4, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    aput v17, v13, v16

    .line 876
    .end local v4    # "bw":F
    :cond_1
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/view/View;

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getScaleY()F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v15

    .line 880
    :goto_1
    const/16 v16, 0x1

    aget v17, v13, v16

    mul-float v18, v6, v15

    add-float v17, v17, v18

    aput v17, v13, v16

    .line 882
    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v16, v15, v16

    if-eqz v16, :cond_2

    .line 883
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v3, v0

    .line 884
    .local v3, "bh":F
    const/16 v16, 0x1

    aget v17, v13, v16

    mul-float v18, v3, v15

    sub-float v18, v3, v18

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    sub-float v17, v17, v18

    aput v17, v13, v16

    .line 888
    .end local v3    # "bh":F
    .end local v5    # "dx":F
    .end local v6    # "dy":F
    .end local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const/16 v16, 0x0

    const/16 v17, 0x0

    aget v17, v13, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v9, v16

    .line 889
    const/16 v16, 0x1

    const/16 v17, 0x1

    aget v17, v13, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    aput v17, v9, v16

    .line 891
    return-object v9

    .line 865
    .restart local v5    # "dx":F
    .restart local v6    # "dy":F
    .restart local v11    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v7

    .line 866
    .local v7, "e":Ljava/lang/NullPointerException;
    const/high16 v14, 0x3f800000    # 1.0f

    goto :goto_0

    .line 877
    .end local v7    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v7

    .line 878
    .restart local v7    # "e":Ljava/lang/NullPointerException;
    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;)[I
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mTmpPos:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[I)[I
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "l"    # [I

    .prologue
    .line 762
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[IZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getLocationOfView(Landroid/view/View;Landroid/graphics/Bitmap;[IZ)[I
    .locals 14
    .param p1, "v"    # Landroid/view/View;
    .param p2, "b"    # Landroid/graphics/Bitmap;
    .param p3, "l"    # [I
    .param p4, "ignorePadding"    # Z

    .prologue
    .line 769
    if-nez p3, :cond_0

    .line 770
    const/4 v10, 0x2

    new-array v0, v10, [I

    move-object/from16 p3, v0

    .line 772
    :cond_0
    if-nez p1, :cond_1

    .line 827
    :goto_0
    return-object p3

    .line 775
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 777
    .local v6, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v8

    .line 778
    .local v8, "sx":F
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v9

    .line 779
    .local v9, "sy":F
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v10}, Landroid/view/View;->setScaleX(F)V

    .line 780
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {p1, v10}, Landroid/view/View;->setScaleY(F)V

    .line 781
    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 782
    invoke-virtual {p1, v8}, Landroid/view/View;->setScaleX(F)V

    .line 783
    invoke-virtual {p1, v9}, Landroid/view/View;->setScaleY(F)V

    .line 785
    iget-object v7, p0, Lcom/android/launcher2/AnimationLayer;->mTmpFPos:[F

    .line 786
    .local v7, "pos":[F
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, p3, v11

    int-to-float v11, v11

    aput v11, v7, v10

    .line 787
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, p3, v11

    int-to-float v11, v11

    aput v11, v7, v10

    .line 788
    const/4 v10, 0x1

    aget v11, v7, v10

    sget-object v12, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    int-to-float v12, v12

    sub-float/2addr v11, v12

    aput v11, v7, v10

    .line 790
    if-eqz p2, :cond_4

    .line 792
    iget v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float v3, v10, v11

    .line 793
    .local v3, "dx":F
    const/4 v4, 0x0

    .line 794
    .local v4, "dy":F
    if-nez p4, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v11

    if-eq v10, v11, :cond_2

    .line 795
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    int-to-float v4, v10

    .line 799
    :cond_2
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleX()F
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 804
    :goto_1
    const/4 v10, 0x0

    aget v11, v7, v10

    mul-float v12, v3, v8

    add-float/2addr v11, v12

    aput v11, v7, v10

    .line 805
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_3

    .line 806
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v2, v10

    .line 807
    .local v2, "bw":F
    const/4 v10, 0x0

    aget v11, v7, v10

    mul-float v12, v2, v8

    sub-float v12, v2, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v7, v10

    .line 811
    .end local v2    # "bw":F
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    invoke-interface {v10}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getScaleY()F
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 816
    :goto_2
    const/4 v10, 0x1

    aget v11, v7, v10

    mul-float v12, v4, v9

    add-float/2addr v11, v12

    aput v11, v7, v10

    .line 818
    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v10, v9, v10

    if-eqz v10, :cond_4

    .line 819
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v1, v10

    .line 820
    .local v1, "bh":F
    const/4 v10, 0x1

    aget v11, v7, v10

    mul-float v12, v1, v9

    sub-float v12, v1, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    aput v11, v7, v10

    .line 824
    .end local v1    # "bh":F
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    :cond_4
    const/4 v10, 0x0

    const/4 v11, 0x0

    aget v11, v7, v11

    float-to-int v11, v11

    aput v11, p3, v10

    .line 825
    const/4 v10, 0x1

    const/4 v11, 0x1

    aget v11, v7, v11

    float-to-int v11, v11

    aput v11, p3, v10

    goto/16 :goto_0

    .line 800
    .restart local v3    # "dx":F
    .restart local v4    # "dy":F
    :catch_0
    move-exception v5

    .line 801
    .local v5, "e":Ljava/lang/NullPointerException;
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_1

    .line 812
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v5

    .line 813
    .restart local v5    # "e":Ljava/lang/NullPointerException;
    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/launcher2/AnimationLayer;->cancelAnimations()V

    .line 459
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 460
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mViewPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 461
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mAnimPool:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 462
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 340
    sget-object v0, Lcom/android/launcher2/AnimationLayer;->sRootLocationOnScreen:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AnimationLayer;->getLocationOnScreen([I)V

    .line 341
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 342
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 323
    iget-object v1, p0, Lcom/android/launcher2/AnimationLayer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 324
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/launcher2/AnimationLayer;->mCurrentOrientation:I

    if-eq v1, v2, :cond_0

    .line 325
    invoke-direct {p0, v0}, Lcom/android/launcher2/AnimationLayer;->dispatchOrientationChanged(Landroid/content/res/Configuration;)V

    .line 327
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 328
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/launcher2/AnimationLayer;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->bindWidgetsAfterConfigChange()V

    .line 315
    return-void
.end method

.method public updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "to"    # [I
    .param p3, "duration"    # I
    .param p4, "clip"    # Z

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/android/launcher2/AnimationLayer;->cleanupFinishedAnimations()V

    .line 527
    iget-object v2, p0, Lcom/android/launcher2/AnimationLayer;->mAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AnimationLayer$Anim;

    .line 528
    .local v0, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->isCompleted()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/AnimationLayer$Anim;->mView:Landroid/view/View;

    if-ne v2, p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 529
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/launcher2/AnimationLayer$Anim;->update([IIZ)V

    .line 533
    .end local v0    # "a":Lcom/android/launcher2/AnimationLayer$Anim;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
