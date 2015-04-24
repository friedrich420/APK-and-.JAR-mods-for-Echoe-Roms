.class public Lcom/android/launcher2/SurfaceWidgetView;
.super Landroid/view/TextureView;
.source "SurfaceWidgetView.java"

# interfaces
.implements Lcom/android/launcher2/DynamicShadowMixin$Holder;


# static fields
.field private static final DEBUG:Z = true

.field private static final RESTART_AUTOMATICALLY_LIMIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SurfaceWidgetView"

.field private static final debugMode:Z

.field private static mIsRotating:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mbIsRotationEnabled:Z


# instance fields
.field private mDetachedFromWindow:Z

.field final mLastTouch:[I

.field private mPendingAccessibilityAction:Z

.field private mPendingAction:I

.field private mPendingArguments:Landroid/os/Bundle;

.field private mVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/SurfaceWidgetView;->mbIsRotationEnabled:Z

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/launcher2/SurfaceWidgetView;->mIsRotating:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/SurfaceWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-boolean v1, p0, Lcom/android/launcher2/SurfaceWidgetView;->mPendingAccessibilityAction:Z

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mDetachedFromWindow:Z

    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    .line 85
    iput v1, p0, Lcom/android/launcher2/SurfaceWidgetView;->mVisibility:I

    .line 68
    invoke-direct {p0}, Lcom/android/launcher2/SurfaceWidgetView;->init()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/SurfaceWidgetView;
    .param p1, "x1"    # Lcom/android/launcher2/SurfaceWidgetItem;
    .param p2, "x2"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "x3"    # Lcom/android/launcher2/SurfaceWidgetView;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SurfaceWidgetView;->restartWidget(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/SurfaceWidgetView;->mbIsRotationEnabled:Z

    .line 352
    return-void

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRotationEnabled()Z
    .locals 1

    .prologue
    .line 574
    sget-boolean v0, Lcom/android/launcher2/SurfaceWidgetView;->mbIsRotationEnabled:Z

    return v0
.end method

.method private notifyPositionOffset(FFF)V
    .locals 2
    .param p1, "offsetX"    # F
    .param p2, "offsetY"    # F
    .param p3, "offsetZ"    # F

    .prologue
    .line 543
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 544
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    .line 545
    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v0    # "tag":Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher2/SurfaceWidgetConnection;->onPositionOffsetChanged(FFF)V

    .line 547
    :cond_0
    return-void
.end method

.method private restartWidget(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V
    .locals 5
    .param p1, "item"    # Lcom/android/launcher2/SurfaceWidgetItem;
    .param p2, "lp"    # Landroid/view/ViewGroup$LayoutParams;
    .param p3, "sfv"    # Lcom/android/launcher2/SurfaceWidgetView;

    .prologue
    const/4 v4, 0x0

    .line 489
    const-string v2, "SurfaceWidgetFlow"

    const-string v3, "making surface widget for restart"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {p1, v2, v3, p3, v4}, Lcom/android/launcher2/SurfaceWidgetItem;->makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V

    .line 493
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-nez v2, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    sget-object v2, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p1, v2}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 496
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    sget-object v3, Lcom/android/launcher2/FocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/SurfaceWidgetView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 497
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/SurfaceWidgetView;->setHapticFeedbackEnabled(Z)V

    .line 499
    :try_start_0
    iget-object v3, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v2}, Lcom/android/launcher2/SurfaceWidgetView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_1
    if-nez p3, :cond_2

    .line 507
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 508
    .local v1, "parentOfRestartView":Landroid/view/ViewGroup;
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 509
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 510
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    .line 520
    .end local v1    # "parentOfRestartView":Landroid/view/ViewGroup;
    :cond_2
    iget-object v2, p1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v2}, Lcom/android/launcher2/SurfaceWidgetView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    invoke-virtual {p1}, Lcom/android/launcher2/SurfaceWidgetItem;->onResume()V

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public createHardwareLayerEarly()V
    .locals 5

    .prologue
    .line 216
    const-string v2, "android.view.TextureView"

    const-string v3, "getHardwareLayer"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 218
    .local v1, "m":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 220
    const-string v2, "SurfaceWidgetView"

    const-string v3, "getHardwareLayer method not found!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :goto_0
    return-void

    .line 225
    :cond_0
    :try_start_0
    const-string v2, "SurfaceWidgetView"

    const-string v3, "getHardwareLayer being called directly"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 230
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 233
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0
.end method

.method protected destroyHardwareResources()V
    .locals 3

    .prologue
    .line 410
    const-string v0, "SurfaceWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroyHardwareResources():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-super {p0}, Landroid/view/TextureView;->destroyHardwareResources()V

    .line 418
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/TextureView;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 362
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "arg0":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/TextureView;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 357
    return-void
.end method

.method public dumpSurfaceWidgetAppInfo()V
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 366
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v1, :cond_0

    .line 368
    const-string v1, "SurfaceWidgetView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_0
    return-void
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-nez v1, :cond_1

    .line 77
    :cond_0
    const-string v1, "SurfaceWidgetView"

    const-string v2, "SurfaceWidget didn\'t provide AppWidgetProviderInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v1, 0x0

    .line 81
    .end local v0    # "tag":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v0    # "tag":Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    goto :goto_0
.end method

.method public getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;
    .locals 1

    .prologue
    .line 382
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public layout(IIII)V
    .locals 11
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->layout(IIII)V

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->isShown()Z

    move-result v8

    if-nez v8, :cond_0

    .line 159
    const-string v8, "android.view.View"

    const-string v9, "mAttachInfo"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 160
    .local v1, "attachInfoField":Ljava/lang/reflect/Field;
    const-string v8, "android.view.View$AttachInfo"

    const-string v9, "mHardwareRenderer"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/Reflection;->getField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 161
    .local v5, "hardwareRendererField":Ljava/lang/reflect/Field;
    invoke-static {p0, v1}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    .line 162
    .local v0, "attachInfo":Ljava/lang/Object;
    invoke-static {v0, v5}, Lcom/android/launcher2/Reflection;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    .line 164
    .local v4, "hardwareRenderer":Ljava/lang/Object;
    const-string v8, "android.view.HardwareRenderer"

    const-string v9, "isEnabled"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 166
    .local v3, "enabledMethod":Ljava/lang/reflect/Method;
    if-nez v3, :cond_1

    .line 168
    const-string v8, "SurfaceWidgetView"

    const-string v9, "enabledMethod was not found in the platform"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    .end local v0    # "attachInfo":Ljava/lang/Object;
    .end local v1    # "attachInfoField":Ljava/lang/reflect/Field;
    .end local v3    # "enabledMethod":Ljava/lang/reflect/Method;
    .end local v4    # "hardwareRenderer":Ljava/lang/Object;
    .end local v5    # "hardwareRendererField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 172
    .restart local v0    # "attachInfo":Ljava/lang/Object;
    .restart local v1    # "attachInfoField":Ljava/lang/reflect/Field;
    .restart local v3    # "enabledMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "hardwareRenderer":Ljava/lang/Object;
    .restart local v5    # "hardwareRendererField":Ljava/lang/reflect/Field;
    :cond_1
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v3, v8}, Lcom/android/launcher2/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 174
    .local v2, "enabled":Z
    if-nez v2, :cond_2

    .line 176
    const-string v8, "SurfaceWidgetView"

    const-string v9, "Hardware renderer was not enabled yet"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x13

    if-gt v8, v9, :cond_4

    .line 185
    const-string v8, "android.view.HardwareRenderer"

    const-string v9, "validate"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 188
    .local v6, "validateMethod":Ljava/lang/reflect/Method;
    if-nez v6, :cond_3

    .line 189
    const-string v8, "SurfaceWidgetView"

    const-string v9, "validateMethod was not found in the platform"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 193
    :cond_3
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v8}, Lcom/android/launcher2/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 196
    .local v7, "validated":Z
    if-nez v7, :cond_4

    .line 197
    const-string v8, "SurfaceWidgetView"

    const-string v9, "Could not acquire hardware rendering context"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 205
    .end local v6    # "validateMethod":Ljava/lang/reflect/Method;
    .end local v7    # "validated":Z
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->createHardwareLayerEarly()V

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 287
    const-string v1, "SurfaceWidgetView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttachedToWindow() your surface should be back:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 289
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .local v0, "tag":Ljava/lang/Object;
    move-object v1, v0

    .line 291
    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    .line 292
    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v0    # "tag":Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection;->updateSurfaceTextureIfNeeded()V

    .line 294
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 268
    const-string v0, "SurfaceWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindow() your surface is gone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 270
    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 3

    .prologue
    .line 275
    const-string v0, "SurfaceWidgetView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDetachedFromWindowInternal() your surface is gone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindowInternal()V

    .line 277
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 634
    sget-boolean v0, Lcom/android/launcher2/SurfaceWidgetView;->mbIsRotationEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 637
    :goto_0
    return-void

    .line 636
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/view/TextureView;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method public onPageScroll(IIII)V
    .locals 12
    .param p1, "currentPageIndex"    # I
    .param p2, "pageIndex"    # I
    .param p3, "pageWidth"    # I
    .param p4, "pageOffset"    # I

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getX()F

    move-result v8

    .line 528
    .local v8, "x":F
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getY()F

    move-result v9

    .line 529
    .local v9, "y":F
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getWidth()I

    move-result v10

    int-to-float v7, v10

    .line 530
    .local v7, "w":F
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getHeight()I

    move-result v10

    int-to-float v2, v10

    .line 531
    .local v2, "h":F
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v7

    add-float v0, v8, v10

    .line 532
    .local v0, "centerX":F
    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v10, v2

    add-float v1, v9, v10

    .line 533
    .local v1, "centerY":F
    sub-int v6, p2, p1

    .line 536
    .local v6, "pageDelta":I
    mul-int v10, v6, p3

    sub-int v10, v10, p4

    int-to-float v3, v10

    .line 537
    .local v3, "offset":F
    add-float v10, v0, v3

    int-to-float v11, p3

    div-float v4, v10, v11

    .line 538
    .local v4, "offsetX":F
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v5, v1, v10

    .line 539
    .local v5, "offsetY":F
    const/4 v10, 0x0

    invoke-direct {p0, v4, v5, v10}, Lcom/android/launcher2/SurfaceWidgetView;->notifyPositionOffset(FFF)V

    .line 540
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 2
    .param p1, "newW"    # I
    .param p2, "newH"    # I
    .param p3, "oldW"    # I
    .param p4, "oldH"    # I

    .prologue
    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->onSizeChanged(IIII)V

    .line 302
    const-string v0, "SurfaceWidgetView"

    const-string v1, "onSizeChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 307
    const-string v0, "SurfaceWidgetView"

    const-string v1, "onSizeChanged() just added to view heirarchy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "aEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 314
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    if-eqz v5, :cond_2

    .line 315
    :cond_0
    const-string v5, "SurfaceWidgetView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "I will not send touch event to widget:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/launcher2/Launcher;->isMotionDialogLaunching:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " action:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 339
    :cond_1
    :goto_0
    return v2

    .line 318
    :cond_2
    const/4 v2, 0x1

    .line 319
    .local v2, "res":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 332
    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    .line 333
    invoke-super {p0, p1}, Landroid/view/TextureView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 334
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 335
    .local v3, "tag":Ljava/lang/Object;
    instance-of v4, v3, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v4, v4, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v4, :cond_1

    .line 336
    check-cast v3, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v3    # "tag":Ljava/lang/Object;
    iget-object v4, v3, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v4, p1}, Lcom/android/launcher2/SurfaceWidgetConnection;->onVerticalTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 321
    :pswitch_0
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v4

    .line 322
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    aput v6, v5, v7

    .line 324
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 325
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v5, :cond_3

    move-object v1, v0

    .line 326
    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 327
    .local v1, "params":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    aget v4, v5, v4

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    aget v5, v5, v7

    iget v6, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    add-int/2addr v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/CellLayout$LayoutParams;->containsPt(II)Z

    move-result v4

    and-int/2addr v2, v4

    .line 328
    goto :goto_1

    .line 319
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 90
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 91
    iput p2, p0, Lcom/android/launcher2/SurfaceWidgetView;->mVisibility:I

    .line 94
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 96
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 98
    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SurfaceWidgetConnection;->onVisibilityChanged(Z)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 103
    .end local v0    # "tag":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 104
    .restart local v0    # "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 105
    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher2/SurfaceWidgetConnection;->onVisibilityChanged(Z)V

    goto :goto_0
.end method

.method public orientationChange()V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v7, 0x0

    .line 579
    sget-boolean v5, Lcom/android/launcher2/SurfaceWidgetView;->mbIsRotationEnabled:Z

    if-nez v5, :cond_0

    .line 598
    :goto_0
    return-void

    .line 581
    :cond_0
    sget-object v5, Lcom/android/launcher2/SurfaceWidgetView;->mIsRotating:Ljava/util/HashMap;

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, p0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 584
    .local v3, "cellWidth":I
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00dc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 585
    .local v2, "cellHeight":I
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00dd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 586
    .local v0, "cellGapX":I
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00de

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 588
    .local v1, "cellGapY":I
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 589
    .local v4, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v4, v3, v2, v0, v1}, Lcom/android/launcher2/CellLayout$LayoutParams;->setup(IIII)V

    .line 592
    iget v5, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher2/SurfaceWidgetView;->measure(II)V

    .line 596
    iget v5, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    iget v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    invoke-virtual {p0, v7, v7, v5, v6}, Lcom/android/launcher2/SurfaceWidgetView;->layout(IIII)V

    goto :goto_0
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 551
    const/16 v1, 0x40

    if-ne p1, v1, :cond_1

    .line 552
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 553
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    .line 554
    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    .end local v0    # "tag":Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection;->updateContentDescription()V

    .line 556
    :cond_0
    iput p1, p0, Lcom/android/launcher2/SurfaceWidgetView;->mPendingAction:I

    .line 557
    iput-object p2, p0, Lcom/android/launcher2/SurfaceWidgetView;->mPendingArguments:Landroid/os/Bundle;

    .line 558
    iput-boolean v2, p0, Lcom/android/launcher2/SurfaceWidgetView;->mPendingAccessibilityAction:Z

    move v1, v2

    .line 561
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v1

    goto :goto_0
.end method

.method public repositionSurfaceWidget(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getWidth()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getHeight()I

    move-result v1

    add-int/2addr v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->setFrame(IIII)Z

    .line 114
    return-void
.end method

.method public resizeSurfaceWidgetView(II)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 119
    const-string v2, "SurfaceWidgetView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resizing surface widget view w = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 122
    .local v0, "x":I
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 123
    .local v1, "y":I
    add-int v2, v0, p1

    add-int v3, v1, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/launcher2/SurfaceWidgetView;->setFrame(IIII)Z

    .line 124
    return-void
.end method

.method public setFrame(IIII)Z
    .locals 10
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    const/high16 v9, 0x3f000000    # 0.5f

    .line 128
    if-eq p3, p1, :cond_0

    if-ne p4, p2, :cond_2

    .line 130
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 131
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v7, "SurfaceWidgetView"

    const-string v8, "setting SurfaceWidgetView to 0 size!?!?...ignoring the call because it is wrong"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    const/4 v6, 0x0

    .line 149
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return v6

    .line 135
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/TextureView;->setFrame(IIII)Z

    move-result v6

    .line 141
    .local v6, "result":Z
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 142
    .local v5, "parent":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 143
    int-to-float v7, p1

    int-to-float v8, p3

    mul-float/2addr v8, v9

    add-float v0, v7, v8

    .line 144
    .local v0, "centerX":F
    int-to-float v7, p3

    int-to-float v8, p4

    mul-float/2addr v8, v9

    add-float v1, v7, v8

    .line 145
    .local v1, "centerY":F
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v3, v0, v7

    .line 146
    .local v3, "offsetX":F
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    int-to-float v7, v7

    div-float v4, v1, v7

    .line 147
    .local v4, "offsetY":F
    const/4 v7, 0x0

    invoke-direct {p0, v3, v4, v7}, Lcom/android/launcher2/SurfaceWidgetView;->notifyPositionOffset(FFF)V

    goto :goto_0
.end method

.method public setLastTouchPoint(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 378
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mLastTouch:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 379
    return-void
.end method

.method public setRotationState(Z)V
    .locals 2
    .param p1, "isRatating"    # Z

    .prologue
    .line 626
    sget-object v0, Lcom/android/launcher2/SurfaceWidgetView;->mIsRotating:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher2/SurfaceWidgetView;->mIsRotating:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/SurfaceWidgetView;->mIsRotating:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 629
    :cond_0
    :goto_0
    return-void

    .line 628
    :cond_1
    sget-object v0, Lcom/android/launcher2/SurfaceWidgetView;->mIsRotating:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public surfaceWidgetCrashed(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 11
    .param p1, "exception"    # Ljava/lang/Exception;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 421
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 423
    .local v1, "item":Lcom/android/launcher2/SurfaceWidgetItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetItem;->getState()Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    if-ne v6, v7, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    sget-object v6, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 428
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 429
    .local v3, "parent":Landroid/view/ViewGroup;
    if-nez v3, :cond_2

    .line 430
    const-string v6, "SurfaceWidgetView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SurfaceWidgetView in error has a null parent? "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 434
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 441
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v6, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartCount:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    const-string v6, "eglSwapBuffers"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 442
    iget v6, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartCount:I

    .line 443
    const-string v6, "SurfaceWidgetView"

    const-string v7, "auto-restarting widget"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-direct {p0, v1, v2, p0}, Lcom/android/launcher2/SurfaceWidgetView;->restartWidget(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V

    goto :goto_0

    .line 448
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 449
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f030054

    invoke-virtual {v0, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 450
    .local v5, "restartView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 451
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 470
    const v6, 0x7f0f00d8

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 471
    .local v4, "restartButton":Landroid/widget/Button;
    new-instance v6, Lcom/android/launcher2/SurfaceWidgetView$1;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/launcher2/SurfaceWidgetView$1;-><init>(Lcom/android/launcher2/SurfaceWidgetView;Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 481
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 482
    iput-object v5, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    .line 483
    iput-object v10, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 484
    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    goto/16 :goto_0
.end method

.method public surfaceWidgetRestart()V
    .locals 6

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 388
    .local v0, "item":Lcom/android/launcher2/SurfaceWidgetItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetItem;->getState()Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    if-ne v3, v4, :cond_1

    .line 402
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    sget-object v3, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {v0, v3}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 394
    .local v2, "parent":Landroid/view/ViewGroup;
    if-nez v2, :cond_2

    .line 395
    const-string v3, "SurfaceWidgetView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SurfaceWidgetView in error has a null parent? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 399
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 401
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {p0, v0, v1, p0}, Lcom/android/launcher2/SurfaceWidgetView;->restartWidget(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/view/ViewGroup$LayoutParams;Lcom/android/launcher2/SurfaceWidgetView;)V

    goto :goto_0
.end method

.method public updateContentDescription(Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 565
    iget-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mPendingAccessibilityAction:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 566
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/launcher2/SurfaceWidgetView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 568
    :cond_0
    iget v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mPendingAction:I

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetView;->mPendingArguments:Landroid/os/Bundle;

    invoke-super {p0, v0, v1}, Landroid/view/TextureView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 570
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetView;->mPendingAccessibilityAction:Z

    .line 571
    return-void
.end method
