.class public Lcom/android/launcher2/QuickLaunch;
.super Landroid/widget/FrameLayout;
.source "QuickLaunch.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Lcom/android/launcher2/Workspace$StateAnimatorProvider;


# static fields
.field private static final ALLAPPS:I = 0x0

.field private static final BOTH:I = 0x2

.field private static final CAMERA:I = 0x1


# instance fields
.field private mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

.field private mAllappsLayout:Landroid/widget/LinearLayout;

.field private mBackground:Landroid/view/View;

.field private mCameraIcon:Lcom/android/launcher2/AllappsIcon;

.field private mCameraLayout:Landroid/widget/LinearLayout;

.field private mHomeView:Lcom/android/launcher2/HomeView;

.field private mIconDestination:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/QuickLaunch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/QuickLaunch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    sget-object v1, Lcom/sec/android/app/launcher/R$styleable;->QuickLaunch:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/QuickLaunch;)Lcom/android/launcher2/HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/QuickLaunch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mHomeView:Lcom/android/launcher2/HomeView;

    return-object v0
.end method


# virtual methods
.method public collectWorkspaceStateAnimators(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/Workspace$State;Lcom/android/launcher2/BaseItem;Ljava/util/ArrayList;)V
    .locals 10
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
    .local p5, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const v9, 0x7f05000c

    const v8, 0x7f050002

    const v7, 0x7f050001

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 222
    .local v1, "context":Landroid/content/Context;
    const/4 v2, 0x0

    .line 223
    .local v2, "drag":Z
    const/4 v3, 0x0

    .line 224
    .local v3, "shrink":Z
    sget-object v6, Lcom/android/launcher2/Workspace$State;->RESIZE:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v6, :cond_6

    .line 225
    const/4 v3, 0x1

    .line 231
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    if-eqz v2, :cond_9

    .line 232
    :cond_1
    invoke-static {v1, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 233
    .local v0, "animator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 234
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    .line 237
    invoke-static {v1, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 238
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 239
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 244
    invoke-static {v1, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 247
    :goto_1
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 248
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_4

    .line 252
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v4, v4}, Lcom/android/launcher2/AllappsIcon;->setDimmed(ZZ)V

    .line 253
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    .line 255
    :cond_4
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_5

    .line 256
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v4, v4}, Lcom/android/launcher2/AllappsIcon;->setDimmed(ZZ)V

    .line 257
    iget-object v4, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    .line 288
    :cond_5
    :goto_2
    invoke-static {v1, v7}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 290
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 292
    return-void

    .line 226
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_6
    sget-object v6, Lcom/android/launcher2/Workspace$State;->EDIT:Lcom/android/launcher2/Workspace$State;

    if-ne p3, v6, :cond_0

    .line 227
    if-eqz p4, :cond_7

    move v2, v4

    :goto_3
    goto :goto_0

    :cond_7
    move v2, v5

    goto :goto_3

    .line 246
    .restart local v0    # "animator":Landroid/animation/Animator;
    :cond_8
    invoke-static {v1, v9}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_1

    .line 260
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_9
    const/high16 v6, 0x7f050000

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 261
    .restart local v0    # "animator":Landroid/animation/Animator;
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_a

    .line 265
    const v6, 0x7f05000d

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 266
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 267
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_a
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_b

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->isLandscape()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 272
    invoke-static {v1, v8}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    .line 275
    :goto_4
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_b
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_c

    .line 280
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v5, v4}, Lcom/android/launcher2/AllappsIcon;->setDimmed(ZZ)V

    .line 281
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v4}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    .line 283
    :cond_c
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    if-eqz v6, :cond_5

    .line 284
    iget-object v6, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v6, v5, v4}, Lcom/android/launcher2/AllappsIcon;->setDimmed(ZZ)V

    .line 285
    iget-object v5, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/AllappsIcon;->setEnabled(Z)V

    goto :goto_2

    .line 274
    :cond_d
    const v6, 0x7f05000d

    invoke-static {v1, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    goto :goto_4
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "aCanvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 78
    invoke-static {p0, p1}, Lcom/android/launcher2/Utilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V

    .line 79
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 80
    return-void
.end method

.method getAllappsIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method getCameraIcon()Lcom/android/launcher2/AllappsIcon;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    return-object v0
.end method

.method getCameraLayout()Landroid/view/View;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getIconDestination()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    return v0
.end method

.method public isLandscape()Z
    .locals 2

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 301
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 311
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 313
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    .line 322
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x2

    .line 331
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 332
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 334
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    const v1, 0x7f0f0057

    .line 85
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 87
    iget v0, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    const v0, 0x7f0f0055

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mBackground:Landroid/view/View;

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->resetLayout()V

    .line 103
    return-void

    .line 89
    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 92
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-virtual {p0, v1}, Lcom/android/launcher2/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    .line 96
    const v0, 0x7f0f0056

    invoke-virtual {p0, v0}, Lcom/android/launcher2/QuickLaunch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method resetLayout()V
    .locals 10

    .prologue
    const v9, 0x7f100095

    const v8, 0x7f030051

    const v7, 0x7f020001

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 108
    invoke-virtual {p0}, Lcom/android/launcher2/QuickLaunch;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 110
    .local v1, "inflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 115
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AllappsIcon;

    iput-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    .line 118
    sget-boolean v3, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v3, :cond_3

    .line 119
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v2

    .line 120
    .local v2, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v2}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v3

    if-nez v3, :cond_2

    .line 121
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const-string v4, "all_apps_button_icon"

    invoke-virtual {v2, v4}, Lcom/android/launcher2/ThemeLoader;->loadIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v6, v6}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 133
    .end local v2    # "loader":Lcom/android/launcher2/ThemeLoader;
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const v4, 0x7f100021

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 135
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    const v4, 0x7f1000d9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->QUICK_ALLAPPS_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 137
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v4, Lcom/android/launcher2/QuickLaunch$1;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickLaunch$1;-><init>(Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 161
    :cond_0
    iget v3, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 163
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 164
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v8, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/AllappsIcon;

    iput-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    .line 166
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v6, v6}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v3, v9}, Lcom/android/launcher2/AllappsIcon;->setText(I)V

    .line 169
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    sget-object v4, Lcom/android/launcher2/FocusHelper;->QUICK_CAMERA_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 171
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    new-instance v4, Lcom/android/launcher2/QuickLaunch$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/QuickLaunch$2;-><init>(Lcom/android/launcher2/QuickLaunch;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/AllappsIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mCameraLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/launcher2/QuickLaunch;->mCameraIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 185
    :cond_1
    return-void

    .line 125
    .restart local v2    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v6, v6}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 130
    .end local v2    # "loader":Lcom/android/launcher2/ThemeLoader;
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/QuickLaunch;->mAllappsIcon:Lcom/android/launcher2/AllappsIcon;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v6, v4, v6, v6}, Lcom/android/launcher2/AllappsIcon;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method public setIconDestination(I)V
    .locals 0
    .param p1, "destination"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/android/launcher2/QuickLaunch;->mIconDestination:I

    .line 205
    return-void
.end method

.method public setup(Lcom/android/launcher2/HomeView;)V
    .locals 0
    .param p1, "homeView"    # Lcom/android/launcher2/HomeView;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/launcher2/QuickLaunch;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 74
    return-void
.end method
