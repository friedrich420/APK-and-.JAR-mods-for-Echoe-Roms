.class public Lcom/android/launcher2/DeltaVisualizer;
.super Ljava/lang/Object;
.source "DeltaVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeltaVisualizer$AnimLayerPendingRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAnimLayerPendingRunnables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockTransform:Z

.field private final mLastDeltas:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            "Lcom/android/launcher2/PositionDelta;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayout:Lcom/android/launcher2/CellLayout;

.field private final mMainHandler:Landroid/os/Handler;

.field private final tmpRemove:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/BaseItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/launcher2/CellLayout;)V
    .locals 2
    .param p1, "l"    # Lcom/android/launcher2/CellLayout;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mMainHandler:Landroid/os/Handler;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    .line 53
    iput-object p1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DeltaVisualizer;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DeltaVisualizer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/DeltaVisualizer;)Ljava/util/IdentityHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DeltaVisualizer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DeltaVisualizer;
    .param p1, "x1"    # Lcom/android/launcher2/BaseItem;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer;->getBitmapForAnim(Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/DeltaVisualizer;)Lcom/android/launcher2/CellLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DeltaVisualizer;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/DeltaVisualizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DeltaVisualizer;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/DeltaVisualizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DeltaVisualizer;
    .param p1, "x1"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DeltaVisualizer;
    .param p1, "x1"    # Lcom/android/launcher2/AnimationLayer$Anim;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/launcher2/DeltaVisualizer;->removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DeltaVisualizer;
    .param p1, "x1"    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DeltaVisualizer;
    .param p1, "x1"    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer;->bounceOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DeltaVisualizer;
    .param p1, "x1"    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer;->bounceListner(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    return-void
.end method

.method private animateDelta(Lcom/android/launcher2/PositionDelta;)V
    .locals 8
    .param p1, "d"    # Lcom/android/launcher2/PositionDelta;

    .prologue
    .line 132
    iget-object v1, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    if-nez v1, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 139
    .local v2, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->isTransitioningToShowAllApps()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v1}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->getState()Lcom/android/launcher2/Workspace$State;

    move-result-object v1

    sget-object v6, Lcom/android/launcher2/Workspace$State;->NORMAL:Lcom/android/launcher2/Workspace$State;

    if-eq v1, v6, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    iget-object v6, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v6}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    iget-object v6, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v6}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/PositionDelta;

    .line 147
    .local v7, "od":Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v7, p1}, Lcom/android/launcher2/PositionDelta;->differentFrom(Lcom/android/launcher2/PositionDelta;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    .end local v7    # "od":Lcom/android/launcher2/PositionDelta;
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v3

    .line 153
    .local v3, "al":Lcom/android/launcher2/AnimationLayer;
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v4

    .line 154
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 156
    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanX()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher2/PositionDelta;->getSpanY()I

    move-result v6

    invoke-direct {p0, v4, v1, v6}, Lcom/android/launcher2/DeltaVisualizer;->updateViewForSpan(Landroid/view/View;II)Z

    move-result v5

    .line 157
    .local v5, "changed":Z
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v6, p1, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v4, v6}, Lcom/android/launcher2/CellLayout;->onPreDeltaVisualize(Landroid/view/View;Lcom/android/launcher2/BaseItem;)V

    .line 159
    new-instance v0, Lcom/android/launcher2/DeltaVisualizer$1;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeltaVisualizer$1;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/Launcher;Lcom/android/launcher2/AnimationLayer;Landroid/view/View;ZLcom/android/launcher2/PositionDelta;)V

    .line 204
    .local v0, "animateDeltaRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private bounceListner(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 9
    .param p1, "a"    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 324
    const v8, 0x3cf5c28f    # 0.03f

    .line 326
    .local v8, "scale_amount":F
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v7

    check-cast v7, Landroid/animation/ValueAnimator;

    .line 327
    .local v7, "anim":Landroid/animation/ValueAnimator;
    iget-object v0, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v6

    .line 328
    .local v6, "al":Lcom/android/launcher2/AnimationLayer;
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getFrom()[I

    move-result-object v3

    .line 330
    .local v3, "from":[I
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v5

    .line 331
    .local v5, "animIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 333
    .local v4, "viewParent":Landroid/view/View;
    new-instance v0, Lcom/android/launcher2/DeltaVisualizer$5;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/DeltaVisualizer$5;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;[ILandroid/view/View;Landroid/widget/ImageView;Lcom/android/launcher2/AnimationLayer;)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 355
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 356
    const/4 v0, -0x1

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 357
    const-wide/16 v0, 0x1c2

    invoke-virtual {v7, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 359
    new-instance v0, Lcom/android/launcher2/DeltaVisualizer$6;

    invoke-direct {v0, p0, v7}, Lcom/android/launcher2/DeltaVisualizer$6;-><init>(Lcom/android/launcher2/DeltaVisualizer;Landroid/animation/ValueAnimator;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 363
    return-void
.end method

.method private bounceOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 2
    .param p1, "a"    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 312
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 313
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DeltaVisualizer$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher2/DeltaVisualizer$4;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 320
    return-void
.end method

.method private finishOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 2
    .param p1, "a"    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 297
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 298
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/DeltaVisualizer$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/launcher2/DeltaVisualizer$3;-><init>(Lcom/android/launcher2/DeltaVisualizer;Landroid/view/View;Lcom/android/launcher2/AnimationLayer$Anim;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 308
    return-void
.end method

.method private getBitmapForAnim(Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "child"    # Landroid/view/View;

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "b":Landroid/graphics/Bitmap;
    instance-of v2, p2, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v2, :cond_0

    .line 242
    check-cast p2, Lcom/android/launcher2/SurfaceWidgetView;

    .end local p2    # "child":Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/launcher2/SurfaceWidgetView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    .line 264
    :goto_0
    return-object v1

    .line 248
    .restart local p2    # "child":Landroid/view/View;
    :cond_0
    instance-of v2, p2, Lcom/android/launcher2/FolderIconView;

    if-eqz v2, :cond_1

    move-object v2, p2

    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->isContentDragging()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, p2

    .line 249
    check-cast v2, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v2}, Lcom/android/launcher2/FolderIconView;->redrawFolderIcon()Z

    .line 251
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 253
    if-nez v0, :cond_2

    .line 254
    invoke-virtual {p2}, Landroid/view/View;->buildDrawingCache()V

    .line 255
    invoke-virtual {p2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 259
    :cond_2
    if-nez v0, :cond_3

    .line 260
    iget-object v1, p1, Lcom/android/launcher2/BaseItem;->mIconBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 262
    :cond_3
    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 263
    .local v1, "res":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/view/View;->destroyDrawingCache()V

    goto :goto_0
.end method

.method private positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V
    .locals 5
    .param p1, "a"    # Lcom/android/launcher2/AnimationLayer$Anim;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    .line 270
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v0

    .line 271
    .local v0, "al":Lcom/android/launcher2/AnimationLayer;
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getIcon()Landroid/widget/ImageView;

    move-result-object v1

    .line 272
    .local v1, "animIcon":Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 274
    .local v2, "viewParent":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 275
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 277
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher2/DeltaVisualizer$2;

    invoke-direct {v4, p0, p1, v1, v0}, Lcom/android/launcher2/DeltaVisualizer$2;-><init>(Lcom/android/launcher2/DeltaVisualizer;Lcom/android/launcher2/AnimationLayer$Anim;Landroid/widget/ImageView;Lcom/android/launcher2/AnimationLayer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 293
    return-void
.end method

.method private removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V
    .locals 2
    .param p1, "anim"    # Lcom/android/launcher2/AnimationLayer$Anim;

    .prologue
    .line 368
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 369
    invoke-virtual {p1}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 370
    .local v0, "a":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 371
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 373
    .end local v0    # "a":Landroid/animation/ValueAnimator;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    .line 374
    return-void
.end method

.method private resetItem(Lcom/android/launcher2/BaseItem;)V
    .locals 6
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;

    .prologue
    const/4 v5, 0x0

    .line 92
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    .line 94
    .local v1, "al":Lcom/android/launcher2/AnimationLayer;
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3, p1}, Lcom/android/launcher2/CellLayout;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    .line 95
    .local v2, "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/launcher2/DeltaVisualizer;->updateViewForSpan(Landroid/view/View;II)Z

    .line 96
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mBlockTransform:Z

    .line 97
    const/4 v3, 0x0

    const/16 v4, 0x12c

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher2/AnimationLayer;->updateExistingAnimationTo(Landroid/view/View;[IIZ)Lcom/android/launcher2/AnimationLayer$Anim;

    move-result-object v0

    .line 98
    .local v0, "a":Lcom/android/launcher2/AnimationLayer$Anim;
    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, v0}, Lcom/android/launcher2/DeltaVisualizer;->removeAllListeners(Lcom/android/launcher2/AnimationLayer$Anim;)V

    .line 100
    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/DeltaVisualizer;->positioningListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    .line 101
    invoke-direct {p0, v0, v2}, Lcom/android/launcher2/DeltaVisualizer;->finishOnEndListener(Lcom/android/launcher2/AnimationLayer$Anim;Landroid/view/View;)V

    .line 102
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 103
    invoke-virtual {v0}, Lcom/android/launcher2/AnimationLayer$Anim;->getAnimator()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->start()V

    .line 104
    invoke-direct {p0, p1, v2}, Lcom/android/launcher2/DeltaVisualizer;->getBitmapForAnim(Lcom/android/launcher2/BaseItem;Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/launcher2/AnimationLayer$Anim;->updateBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateViewForSpan(Landroid/view/View;II)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 209
    const/4 v1, 0x0

    .line 210
    .local v1, "rc":Z
    instance-of v3, p1, Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v3, :cond_0

    instance-of v3, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_3

    .line 211
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 212
    .local v0, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iput p2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 213
    iput p3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 214
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    iget-object v3, v3, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v3, v0}, Lcom/android/launcher2/CellLayoutChildren;->setupLp(Lcom/android/launcher2/CellLayout$LayoutParams;)V

    .line 216
    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_1

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 217
    :cond_1
    const/4 v1, 0x1

    .line 218
    instance-of v3, p1, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v3, :cond_4

    move-object v3, p1

    .line 219
    check-cast v3, Lcom/android/launcher2/SurfaceWidgetView;

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/SurfaceWidgetView;->resizeSurfaceWidgetView(II)V

    .line 229
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v6

    iget v7, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v6, v7

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 234
    .end local v0    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    return v1

    .line 220
    .restart local v0    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_4
    instance-of v3, p1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_2

    .line 221
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v2

    .local v2, "spanCalc":Lcom/android/launcher2/WorkspaceSpanCalculator;
    move-object v3, p1

    .line 222
    check-cast v3, Landroid/appwidget/AppWidgetHostView;

    iget-object v4, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/Launcher;

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 224
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Workspace;

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object v4, p1

    check-cast v4, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    iget-object v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/HomeWidgetItem;

    iget v4, v4, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v3, v5, v6, v7, v4}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    goto :goto_0
.end method


# virtual methods
.method public reset()V
    .locals 4

    .prologue
    .line 78
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 79
    .local v1, "i":Lcom/android/launcher2/BaseItem;
    invoke-direct {p0, v1}, Lcom/android/launcher2/DeltaVisualizer;->resetItem(Lcom/android/launcher2/BaseItem;)V

    goto :goto_0

    .line 81
    .end local v1    # "i":Lcom/android/launcher2/BaseItem;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    invoke-virtual {v3}, Ljava/util/IdentityHashMap;->clear()V

    .line 83
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 84
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 85
    .local v0, "animRunnable":Ljava/lang/Runnable;
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 87
    .end local v0    # "animRunnable":Ljava/lang/Runnable;
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mAnimLayerPendingRunnables:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 89
    :cond_2
    return-void
.end method

.method public updateForDeltas(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/PositionDelta;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "deltas":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/PositionDelta;>;"
    if-nez p1, :cond_0

    .line 75
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PositionDelta;

    .line 62
    .local v0, "d":Lcom/android/launcher2/PositionDelta;
    invoke-virtual {v0}, Lcom/android/launcher2/PositionDelta;->changed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 63
    invoke-direct {p0, v0}, Lcom/android/launcher2/DeltaVisualizer;->animateDelta(Lcom/android/launcher2/PositionDelta;)V

    goto :goto_1

    .line 64
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    iget-object v4, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3, v4}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    iget-object v3, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-direct {p0, v3}, Lcom/android/launcher2/DeltaVisualizer;->resetItem(Lcom/android/launcher2/BaseItem;)V

    .line 67
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    iget-object v4, v0, Lcom/android/launcher2/PositionDelta;->item:Lcom/android/launcher2/BaseItem;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 71
    .end local v0    # "d":Lcom/android/launcher2/PositionDelta;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/BaseItem;

    .line 72
    .local v1, "i":Lcom/android/launcher2/BaseItem;
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->mLastDeltas:Ljava/util/IdentityHashMap;

    invoke-virtual {v3, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 74
    .end local v1    # "i":Lcom/android/launcher2/BaseItem;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/DeltaVisualizer;->tmpRemove:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0
.end method
