.class public Lcom/android/launcher2/MenuTitleBarManager;
.super Ljava/lang/Object;
.source "MenuTitleBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuTitleBarManager$4;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "Launcher.MenuTitleBarManager"

.field private static final TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_IN:F = 1.0f

.field private static final TITLE_BAR_SCALE_OUT:F = 0.9f

.field private static final TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

.field private static final TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;


# instance fields
.field private mCurrentTitleBar:Landroid/view/View;

.field private mDownloadedTitleBar:Landroid/view/ViewGroup;

.field private mDownloadedTitleBarStub:Landroid/view/ViewStub;

.field private mEditTitleBar:Landroid/view/ViewGroup;

.field private mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

.field private mNormalTitleBar:Landroid/view/ViewGroup;

.field private mSearchTitleBar:Landroid/view/ViewGroup;

.field private mSelectedTitleBar:Landroid/view/ViewGroup;

.field private mSelectedTitleBarStub:Landroid/view/ViewStub;

.field private mTabHost:Lcom/android/launcher2/MenuView;

.field private mTitleBarHeight:I

.field private mUninstallTitleBar:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 43
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuTitleBarManager;->DEBUGGABLE:Z

    .line 67
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    .line 68
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    .line 69
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_2

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    .line 70
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_3

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    .line 71
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_4

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    .line 72
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v2, [F

    fill-array-data v1, :array_5

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    return-void

    .line 67
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    .line 68
    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    .line 69
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
    .end array-data

    .line 70
    :array_3
    .array-data 4
        0x3f666666    # 0.9f
        0x3f800000    # 1.0f
    .end array-data

    .line 71
    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 72
    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 449
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/MenuTitleBarManager;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/MenuTitleBarManager;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V
    .locals 7
    .param p2, "titleBar"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v6, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 160
    invoke-virtual {p2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 161
    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v3, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 162
    new-array v1, v3, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v3, [F

    iget v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    const/4 v4, 0x0

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 165
    .local v0, "a":Landroid/animation/Animator;
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 166
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    return-void
.end method

.method private getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V
    .locals 7
    .param p2, "titleBar"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 192
    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v2, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 193
    new-array v1, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v6, [F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v6

    invoke-static {p2, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 197
    .local v0, "a":Landroid/animation/Animator;
    new-instance v1, Lcom/android/launcher2/MenuTitleBarManager$1;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher2/MenuTitleBarManager$1;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 204
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 205
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    return-void
.end method


# virtual methods
.method public animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 5
    .param p2, "titleBar"    # Landroid/view/View;
    .param p3, "immediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 214
    if-eqz p3, :cond_2

    .line 215
    if-eqz p2, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v0, :cond_1

    .line 217
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleX(F)V

    .line 218
    invoke-virtual {p2, v1}, Landroid/view/View;->setScaleY(F)V

    .line 219
    invoke-virtual {p2, v2}, Landroid/view/View;->setAlpha(F)V

    .line 224
    :goto_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 225
    invoke-virtual {p2, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 241
    :cond_0
    :goto_1
    return-void

    .line 222
    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v0, :cond_3

    .line 232
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    sget-object v1, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4, v1}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 234
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    sget-object v3, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v3, v1, v2

    sget-object v2, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_IN:Landroid/animation/PropertyValuesHolder;

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    :cond_3
    if-eqz p2, :cond_0

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V

    goto :goto_1
.end method

.method public animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 11
    .param p2, "titleBar"    # Landroid/view/View;
    .param p3, "immediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    if-eqz p3, :cond_2

    .line 249
    if-eqz p2, :cond_0

    .line 250
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v7, :cond_1

    .line 251
    const v7, 0x3f666666    # 0.9f

    invoke-virtual {p2, v7}, Landroid/view/View;->setScaleX(F)V

    .line 252
    const v7, 0x3f666666    # 0.9f

    invoke-virtual {p2, v7}, Landroid/view/View;->setScaleY(F)V

    .line 256
    :goto_0
    const/16 v7, 0x8

    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 257
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Landroid/view/View;->setAlpha(F)V

    .line 302
    :cond_0
    :goto_1
    return-void

    .line 254
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {p2, v7}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    .line 263
    .local v2, "launcher":Lcom/android/launcher2/Launcher;
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-ne p2, v7, :cond_5

    .line 264
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    sget-object v10, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_X_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_SCALE_Y_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v10, v8, v9

    const/4 v9, 0x2

    sget-object v10, Lcom/android/launcher2/MenuTitleBarManager;->TITLE_BAR_ALPHA_OUT:Landroid/animation/PropertyValuesHolder;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 269
    .local v0, "a":Landroid/animation/Animator;
    new-instance v7, Lcom/android/launcher2/MenuTitleBarManager$2;

    invoke-direct {v7, p0, p2}, Lcom/android/launcher2/MenuTitleBarManager$2;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 277
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher2/AnimationLayer;->mBlockEventsListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 278
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    .line 285
    .local v1, "appsGrid":Lcom/android/launcher2/MenuAppsGrid;
    if-eqz v1, :cond_4

    .line 286
    sget-boolean v7, Lcom/android/launcher2/MenuTitleBarManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_3

    const-string v7, "Launcher.MenuTitleBarManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "current page is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " count "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getChildCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppsGrid;->getCurrentPage()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/launcher2/MenuAppsGrid;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    .line 288
    .local v4, "page":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 289
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 290
    .local v3, "location":[I
    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 291
    const/4 v7, 0x1

    aget v5, v3, v7

    .line 292
    .local v5, "pageY":I
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 293
    const/4 v7, 0x1

    aget v6, v3, v7

    .line 294
    .local v6, "titleBarY":I
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    sub-int v8, v5, v6

    int-to-float v8, v8

    invoke-virtual {v4}, Landroid/view/View;->getPivotY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 295
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 298
    .end local v3    # "location":[I
    .end local v4    # "page":Landroid/view/View;
    .end local v5    # "pageY":I
    .end local v6    # "titleBarY":I
    :cond_4
    iget-object v7, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    const/4 v8, 0x2

    sget-object v9, Lcom/android/launcher2/Launcher;->sViewLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v8, v9}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 299
    .end local v0    # "a":Landroid/animation/Animator;
    .end local v1    # "appsGrid":Lcom/android/launcher2/MenuAppsGrid;
    :cond_5
    if-eqz p2, :cond_0

    .line 300
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V

    goto/16 :goto_1
.end method

.method public changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V
    .locals 1
    .param p2, "titleBar"    # Landroid/view/View;
    .param p3, "immediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 133
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher2/MenuTitleBarManager;->animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 134
    iput-object p2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method public changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuAppsGrid$State;Z)V
    .locals 1
    .param p2, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p3, "immediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 127
    .local v0, "titleBar":Landroid/view/View;
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 128
    return-void
.end method

.method public changeTitleBar(Ljava/util/List;Lcom/android/launcher2/MenuWidgets$WidgetState;Z)V
    .locals 1
    .param p2, "state"    # Lcom/android/launcher2/MenuWidgets$WidgetState;
    .param p3, "immediately"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Lcom/android/launcher2/MenuWidgets$WidgetState;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 116
    .local p1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 117
    .local v0, "titleBar":Landroid/view/View;
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/launcher2/MenuTitleBarManager;->changeTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 118
    return-void
.end method

.method public getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;
    .locals 9
    .param p1, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;

    .prologue
    const/4 v5, 0x0

    const v8, 0x7f0f00a8

    const/4 v7, 0x0

    .line 369
    sget-object v4, Lcom/android/launcher2/MenuTitleBarManager$4;->$SwitchMap$com$android$launcher2$MenuAppsGrid$State:[I

    invoke-virtual {p1}, Lcom/android/launcher2/MenuAppsGrid$State;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 448
    const-string v4, "Launcher.MenuTitleBarManager"

    const-string v6, "unknown state when asking for title bar"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 449
    :goto_0
    return-object v4

    .line 380
    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_0

    .line 381
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    .line 382
    iput-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    .line 384
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 389
    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 391
    :pswitch_2
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 393
    :pswitch_3
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_2

    .line 395
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_3

    .line 396
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    iget-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v5}, Landroid/view/ViewStub;->getInflatedId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    .line 402
    :goto_1
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 404
    .local v2, "res":Landroid/content/res/Resources;
    const v4, 0x7f10002f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "optionsMenu":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v4, v8}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 407
    .local v1, "popup_icon":Landroid/widget/FrameLayout;
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v4

    invoke-static {v4, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 409
    .local v3, "viewToast":Landroid/widget/Toast;
    if-eqz v1, :cond_1

    .line 410
    new-instance v4, Lcom/android/launcher2/MenuTitleBarManager$3;

    invoke-direct {v4, p0, v3}, Lcom/android/launcher2/MenuTitleBarManager$3;-><init>(Lcom/android/launcher2/MenuTitleBarManager;Landroid/widget/Toast;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 420
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 421
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->setHoverPopupType(I)V

    .line 422
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 423
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    const/16 v5, 0x3035

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 424
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    const v5, 0x7f0e0018

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    invoke-virtual {v4, v5, v7}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 425
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/widget/HoverPopupWindow;->setFHAnimationEnabled(Z)V

    .line 429
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->hasMenuKey()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 431
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v4, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 432
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 442
    .end local v0    # "optionsMenu":Ljava/lang/String;
    .end local v1    # "popup_icon":Landroid/widget/FrameLayout;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "viewToast":Landroid/widget/Toast;
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 398
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    .line 399
    iput-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    goto/16 :goto_1

    .line 437
    .restart local v0    # "optionsMenu":Ljava/lang/String;
    .restart local v1    # "popup_icon":Landroid/widget/FrameLayout;
    .restart local v2    # "res":Landroid/content/res/Resources;
    .restart local v3    # "viewToast":Landroid/widget/Toast;
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    const v6, 0x7f0f00a9

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 446
    .end local v0    # "optionsMenu":Ljava/lang/String;
    .end local v1    # "popup_icon":Landroid/widget/FrameLayout;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "viewToast":Landroid/widget/Toast;
    :pswitch_4
    iget-object v4, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getActiveTitleBarForState(Lcom/android/launcher2/MenuWidgets$WidgetState;)Landroid/view/ViewGroup;
    .locals 3
    .param p1, "state"    # Lcom/android/launcher2/MenuWidgets$WidgetState;

    .prologue
    .line 454
    sget-object v1, Lcom/android/launcher2/MenuTitleBarManager$4;->$SwitchMap$com$android$launcher2$MenuWidgets$WidgetState:[I

    invoke-virtual {p1}, Lcom/android/launcher2/MenuWidgets$WidgetState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 468
    const-string v1, "Launcher.MenuTitleBarManager"

    const-string v2, "unknown widget state when asking for title bar"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 456
    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 458
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 460
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    const v2, 0x7f0f00c6

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    .line 461
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    const v2, 0x7f0f00c5

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 463
    .local v0, "vb":Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    .line 465
    .end local v0    # "vb":Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSearchTitleBar:Landroid/view/ViewGroup;

    goto :goto_0

    .line 454
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getEditTitleBar()Landroid/view/View;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getMenuEditBar()Lcom/android/launcher2/MenuEditBar;
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    return-object v0
.end method

.method public getTitleBarHeight()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    return v0
.end method

.method public hideEditBar(Landroid/animation/Animator;Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/Animator;
    .param p2, "stateAnimator"    # Lcom/android/launcher2/MenuStateAnimatorSet;

    .prologue
    .line 351
    invoke-virtual {p2}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher2/MenuTitleBarManager;->animateInTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 355
    invoke-virtual {p2, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 356
    return-void
.end method

.method public init(Lcom/android/launcher2/MenuView;)V
    .locals 4
    .param p1, "tabHost"    # Lcom/android/launcher2/MenuView;

    .prologue
    .line 75
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 107
    :goto_0
    return-void

    .line 76
    :cond_0
    const v2, 0x7f0f00b9

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    .line 77
    const v2, 0x7f0f00c1

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    .line 78
    const v2, 0x7f0f00aa

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/MenuEditBar;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    .line 79
    const v2, 0x7f0f00c2

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mUninstallTitleBar:Landroid/view/ViewGroup;

    .line 82
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isTabletLayout()Z

    move-result v2

    if-nez v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 84
    .local v0, "editTitleBar":Landroid/view/ViewGroup;
    if-eqz v0, :cond_1

    .line 85
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 86
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/FocusHelper;->TITLEBAR_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 91
    .end local v0    # "editTitleBar":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_1
    const v2, 0x7f0f00c8

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    .line 92
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBar:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 93
    const v2, 0x7f0f00c7

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mSelectedTitleBarStub:Landroid/view/ViewStub;

    .line 96
    :cond_2
    const v2, 0x7f0f00c4

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    .line 97
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBar:Landroid/view/ViewGroup;

    if-nez v2, :cond_3

    .line 98
    const v2, 0x7f0f00c3

    invoke-virtual {p1, v2}, Lcom/android/launcher2/MenuView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mDownloadedTitleBarStub:Landroid/view/ViewStub;

    .line 101
    :cond_3
    iput-object p1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    .line 102
    iget-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mNormalTitleBar:Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    .line 105
    invoke-virtual {p1}, Lcom/android/launcher2/MenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTitleBarHeight:I

    goto/16 :goto_0
.end method

.method public resetTitleBar(Landroid/view/View;)V
    .locals 1
    .param p1, "titleBar"    # Landroid/view/View;

    .prologue
    .line 322
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Landroid/view/View;I)V

    .line 323
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 324
    return-void
.end method

.method public resetTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;)V
    .locals 1
    .param p1, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;

    .prologue
    .line 317
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 318
    .local v0, "titleBar":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuTitleBarManager;->resetTitleBar(Landroid/view/View;)V

    .line 319
    return-void
.end method

.method public setEditBarClickListener(Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/android/launcher2/MenuAppsGrid$MenuEditTabClickListener;

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f0f0076

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f0f00b3

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mEditTitleBar:Landroid/view/ViewGroup;

    const v2, 0x7f0f00ad

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 330
    .local v0, "back":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 331
    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    const v3, 0x7f100031

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v2

    const v3, 0x7f100057

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 335
    :cond_0
    return-void
.end method

.method public setTitleBarVisibility(Landroid/view/View;I)V
    .locals 1
    .param p1, "titleBar"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 310
    if-eqz p1, :cond_0

    .line 311
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 312
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 314
    :cond_0
    return-void
.end method

.method public setTitleBarVisibility(Lcom/android/launcher2/MenuAppsGrid$State;I)V
    .locals 1
    .param p1, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p2, "visibility"    # I

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 306
    .local v0, "titleBar":Landroid/view/View;
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/MenuTitleBarManager;->setTitleBarVisibility(Landroid/view/View;I)V

    .line 307
    return-void
.end method

.method public showEditBar(ZZZZLcom/android/launcher2/MenuStateAnimatorSet;Z)V
    .locals 8
    .param p1, "show_folder"    # Z
    .param p2, "isSystemApp"    # Z
    .param p3, "isNewPageAllowed"    # Z
    .param p4, "isFolder"    # Z
    .param p5, "stateAnimator"    # Lcom/android/launcher2/MenuStateAnimatorSet;
    .param p6, "canBeDisable"    # Z

    .prologue
    .line 339
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p5}, Lcom/android/launcher2/MenuStateAnimatorSet;->end()V

    .line 341
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 342
    .local v2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mCurrentTitleBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->animateOutTitleBar(Ljava/util/List;Landroid/view/View;Z)V

    .line 344
    iget-object v0, p0, Lcom/android/launcher2/MenuTitleBarManager;->mMenuEditBar:Lcom/android/launcher2/MenuEditBar;

    iget-object v1, p0, Lcom/android/launcher2/MenuTitleBarManager;->mTabHost:Lcom/android/launcher2/MenuView;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/MenuEditBar;->show(Lcom/android/launcher2/MenuAppsGrid;Ljava/util/List;ZZZZZ)V

    .line 346
    invoke-virtual {p5, v2}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 348
    .end local v2    # "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    :cond_0
    return-void
.end method

.method public slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 2
    .param p1, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p2, "stateAnimator"    # Lcom/android/launcher2/MenuStateAnimatorSet;

    .prologue
    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 155
    .local v1, "titleBar":Landroid/view/View;
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V

    .line 156
    invoke-virtual {p2, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 157
    return-void
.end method

.method public slideDownTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V
    .locals 1
    .param p1, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 144
    .local v0, "titleBar":Landroid/view/View;
    invoke-direct {p0, p2, v0}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideDownAnimation(Ljava/util/List;Landroid/view/View;)V

    .line 145
    return-void
.end method

.method public slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Lcom/android/launcher2/MenuStateAnimatorSet;)V
    .locals 2
    .param p1, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .param p2, "stateAnimator"    # Lcom/android/launcher2/MenuStateAnimatorSet;

    .prologue
    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 187
    .local v1, "titleBar":Landroid/view/View;
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V

    .line 188
    invoke-virtual {p2, v0}, Lcom/android/launcher2/MenuStateAnimatorSet;->buildAndStart(Ljava/util/List;)V

    .line 189
    return-void
.end method

.method public slideUpTitleBar(Lcom/android/launcher2/MenuAppsGrid$State;Ljava/util/List;)V
    .locals 1
    .param p1, "state"    # Lcom/android/launcher2/MenuAppsGrid$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppsGrid$State;",
            "Ljava/util/List",
            "<",
            "Landroid/animation/Animator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuTitleBarManager;->getActiveTitleBarForState(Lcom/android/launcher2/MenuAppsGrid$State;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 176
    .local v0, "titleBar":Landroid/view/View;
    invoke-direct {p0, p2, v0}, Lcom/android/launcher2/MenuTitleBarManager;->getSlideUpAnimation(Ljava/util/List;Landroid/view/View;)V

    .line 177
    return-void
.end method
