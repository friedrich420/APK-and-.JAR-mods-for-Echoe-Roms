.class public Lcom/android/launcher2/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/android/launcher2/DynamicShadowMixin$Holder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;
    }
.end annotation


# static fields
.field private static ENABLE_SHADOW:Z

.field static sIsDrag:Z


# instance fields
.field private final lastSpanBitmap:[I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field final mLastTouch:[I

.field private mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

.field private mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->ENABLE_SHADOW:Z

    .line 40
    sput-boolean v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->sIsDrag:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x2

    .line 49
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 44
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    .line 46
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    .line 50
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    sget-boolean v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->ENABLE_SHADOW:Z

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/android/launcher2/DynamicShadowMixin;

    invoke-direct {v0, p0}, Lcom/android/launcher2/DynamicShadowMixin;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    .line 53
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherAppWidgetHostView;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherAppWidgetHostView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherAppWidgetHostView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/launcher2/LauncherAppWidgetHostView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherAppWidgetHostView;
    .param p1, "x1"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherAppWidgetHostView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherAppWidgetHostView;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private getViewBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->clearFocus()V

    .line 88
    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setPressed(Z)V

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->willNotCacheDrawing()Z

    move-result v4

    .line 91
    .local v4, "willNotCache":Z
    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setWillNotCacheDrawing(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getDrawingCacheBackgroundColor()I

    move-result v3

    .line 96
    .local v3, "color":I
    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setDrawingCacheBackgroundColor(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAlpha()F

    move-result v0

    .line 98
    .local v0, "alpha":F
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setAlpha(F)V

    .line 100
    if-eqz v3, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->destroyDrawingCache()V

    .line 103
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->buildDrawingCache()V

    .line 104
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 105
    .local v2, "cacheBitmap":Landroid/graphics/Bitmap;
    if-nez v2, :cond_1

    .line 106
    const/4 v1, 0x0

    .line 117
    :goto_0
    return-object v1

    .line 109
    :cond_1
    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 112
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->destroyDrawingCache()V

    .line 113
    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setAlpha(F)V

    .line 114
    invoke-virtual {p0, v4}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setWillNotCacheDrawing(Z)V

    .line 115
    invoke-virtual {p0, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method private postCheckForLongClick()V
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 233
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;-><init>(Lcom/android/launcher2/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 237
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 238
    return-void
.end method


# virtual methods
.method public bitmapNeedsUpdated(II)Z
    .locals 3
    .param p1, "spanX"    # I
    .param p2, "spanY"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 56
    sput-boolean v0, Lcom/android/launcher2/LauncherAppWidgetHostView;->sIsDrag:Z

    .line 57
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    aget v2, v2, v1

    if-eq p2, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 242
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 244
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 245
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 248
    :cond_0
    return-void
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 252
    const/high16 v0, 0x60000

    return v0
.end method

.method public getDynamicShadowMixin()Lcom/android/launcher2/DynamicShadowMixin;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    return-object v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastTouchPoint()[I
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    .line 271
    .local v0, "ret":Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    if-eqz v2, :cond_0

    .line 272
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mShadowMixin:Lcom/android/launcher2/DynamicShadowMixin;

    invoke-virtual {v2}, Lcom/android/launcher2/DynamicShadowMixin;->invalidate()V

    .line 278
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    .line 279
    .local v1, "w":Lcom/android/launcher2/Workspace;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 280
    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 282
    :cond_1
    return-object v0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 127
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 129
    .local v1, "toolType":I
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "pen_hovering"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 130
    .local v0, "isHoveringOn":I
    if-nez v0, :cond_0

    move v2, v3

    .line 136
    :goto_0
    return v2

    .line 133
    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 134
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 136
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 142
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    .line 179
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    .line 149
    iput-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move v0, v1

    .line 179
    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v1

    .line 158
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    aput v3, v2, v0

    .line 159
    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->postCheckForLongClick()V

    goto :goto_1

    .line 165
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mHasPerformedLongPress:Z

    .line 166
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    if-eqz v2, :cond_3

    .line 167
    iget-object v2, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mPendingCheckForLongPress:Lcom/android/launcher2/LauncherAppWidgetHostView$CheckForLongPress;

    invoke-virtual {p0, v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 170
    :cond_3
    sget-boolean v2, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_HOMESCREENEDITMODE:Z

    if-eqz v2, :cond_2

    .line 171
    invoke-static {}, Lcom/android/launcher2/Launcher;->isHomeEditMode()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onMeasure(II)V
    .locals 3
    .param p1, "wMeasureSpec"    # I
    .param p2, "hMeasureSpec"    # I

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v1, -0x80000000

    .line 201
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 202
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 204
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 205
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 207
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->onMeasure(II)V

    .line 208
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 183
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 186
    .local v0, "result":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v1, v2

    .line 188
    iget-object v1, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, v4

    .line 194
    :cond_0
    :goto_0
    return v0

    .line 191
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

    .line 192
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->cancelLongPress()V

    goto :goto_0
.end method

.method public setLastTouchPoint(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 261
    iget-object v0, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mLastTouch:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 262
    return-void
.end method

.method public updateBitmapForSpan(Lcom/android/launcher2/CellLayout;IILcom/android/launcher2/ShadowBuilder;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "cl"    # Lcom/android/launcher2/CellLayout;
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I
    .param p4, "sb"    # Lcom/android/launcher2/ShadowBuilder;

    .prologue
    .line 61
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->bitmapNeedsUpdated(II)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    .line 83
    :goto_0
    return-object v5

    .line 62
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    const/4 v6, 0x0

    aput p2, v5, v6

    .line 63
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->lastSpanBitmap:[I

    const/4 v6, 0x1

    aput p3, v5, v6

    .line 65
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 67
    .local v2, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 68
    .local v3, "tempSpanX":I
    iget v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 69
    .local v4, "tempSpanY":I
    iput p2, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 70
    iput p3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 72
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/launcher2/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    .line 74
    iget v0, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 75
    .local v0, "childLeft":I
    iget v1, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 76
    .local v1, "childTop":I
    iget v5, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    add-int/2addr v5, v0

    iget v6, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    add-int/2addr v6, v1

    invoke-virtual {p0, v0, v1, v5, v6}, Lcom/android/launcher2/LauncherAppWidgetHostView;->layout(IIII)V

    .line 78
    invoke-direct {p0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    .line 79
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p4, v5}, Lcom/android/launcher2/ShadowBuilder;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    iput v3, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 82
    iput v4, v2, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 83
    iget-object v5, p0, Lcom/android/launcher2/LauncherAppWidgetHostView;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method
