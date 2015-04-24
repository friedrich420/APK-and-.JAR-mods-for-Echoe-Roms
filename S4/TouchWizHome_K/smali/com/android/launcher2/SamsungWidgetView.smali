.class public Lcom/android/launcher2/SamsungWidgetView;
.super Landroid/widget/FrameLayout;
.source "SamsungWidgetView.java"

# interfaces
.implements Lcom/android/launcher2/DynamicShadowMixin$Holder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;
    }
.end annotation


# static fields
.field private static ENABLE_SHADOW:Z


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field final mLastTouch:[I

.field private mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

.field private mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/SamsungWidgetView;->ENABLE_SHADOW:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/SamsungWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    .line 52
    invoke-direct {p0}, Lcom/android/launcher2/SamsungWidgetView;->init()V

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/SamsungWidgetView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/SamsungWidgetView;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/launcher2/SamsungWidgetView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/SamsungWidgetView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/SamsungWidgetView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/SamsungWidgetView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/SamsungWidgetView;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/SamsungWidgetView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/SamsungWidgetView;

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/android/launcher2/SamsungWidgetView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/launcher2/SamsungWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mInflater:Landroid/view/LayoutInflater;

    .line 67
    sget-boolean v0, Lcom/android/launcher2/SamsungWidgetView;->ENABLE_SHADOW:Z

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/android/launcher2/DynamicShadowMixin;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DynamicShadowMixin;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    .line 69
    :cond_0
    return-void
.end method

.method private postCheckForLongClick()V
    .locals 4

    .prologue
    .line 169
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    .line 171
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;-><init>(Lcom/android/launcher2/SamsungWidgetView;)V

    iput-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 175
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/SamsungWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 180
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    .line 183
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SamsungWidgetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 186
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 58
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
    .line 196
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
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
    .line 191
    .local p1, "arg0":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "arg0"    # Landroid/graphics/Canvas;
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # J

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public dumpSamsungWidgetAppInfo()V
    .locals 4

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/launcher2/SamsungWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 200
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v1, :cond_0

    .line 201
    const-string v1, "SamsungWidgetView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    return-void
.end method

.method public getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    return-object v0
.end method

.method public getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 222
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 223
    .local v0, "ret":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    if-eqz v1, :cond_0

    .line 224
    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    invoke-virtual {v1}, Lcom/android/launcher2/DynamicShadowMixin;->invalidate()V

    .line 225
    :cond_0
    return-object v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 79
    .local v1, "toolType":I
    invoke-virtual {p0}, Lcom/android/launcher2/SamsungWidgetView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 80
    .local v0, "isHoveringOn":I
    if-nez v0, :cond_0

    move v2, v3

    .line 86
    :goto_0
    return v2

    .line 83
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 84
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 86
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 92
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    .line 130
    :goto_0
    return v0

    .line 99
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 100
    iput-boolean v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v0, v1

    .line 130
    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 109
    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    .line 110
    invoke-direct {p0}, Lcom/android/launcher2/SamsungWidgetView;->postCheckForLongClick()V

    goto :goto_1

    .line 116
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mHasPerformedLongPress:Z

    .line 117
    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    if-eqz v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/android/launcher2/SamsungWidgetView;->mPendingCheckForLongPress:Lcom/android/launcher2/SamsungWidgetView$CheckForLongPress;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/SamsungWidgetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 121
    :cond_3
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_2

    .line 122
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 134
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 137
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 139
    iget-object v1, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    .line 146
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :cond_2
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/android/launcher2/SamsungWidgetView;->cancelLongPress()V

    goto :goto_0
.end method

.method public setLastTouchPoint(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 211
    iget-object v0, p0, Lcom/android/launcher2/SamsungWidgetView;->mLastTouch:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 212
    return-void
.end method
