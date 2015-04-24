.class public abstract Lcom/android/launcher2/PagedViewWithDraggableItems;
.super Lcom/android/launcher2/PagedView;
.source "PagedViewWithDraggableItems.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mDragSlopeThreshold:F

.field private mIsDragEnabled:Z

.field private mIsDragging:Z

.field private mLastTouchedItem:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 70
    .local v0, "action":I
    and-int/lit16 v1, v0, 0xff

    packed-switch v1, :pswitch_data_0

    .line 81
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 72
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->cancelDragging()V

    .line 73
    iput-boolean v2, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    goto :goto_0

    .line 76
    :pswitch_2
    iget v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mTouchState:I

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->determineDraggingStart(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 70
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected beginDragging(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 57
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    .line 58
    .local v0, "wasDragging":Z
    iput-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    .line 59
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected cancelDragging()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    iput-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    .line 65
    iput-boolean v1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    .line 66
    return-void
.end method

.method protected determineDraggingStart(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastMotionX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v1, v6

    .line 143
    .local v1, "xDiff":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iget v7, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastMotionY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-int v2, v6

    .line 145
    .local v2, "yDiff":I
    iget v6, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mTouchSlop:I

    if-le v2, v6, :cond_1

    move v3, v4

    .line 146
    .local v3, "yMoved":Z
    :goto_0
    int-to-float v6, v2

    int-to-float v7, v1

    div-float/2addr v6, v7

    iget v7, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mDragSlopeThreshold:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    move v0, v4

    .line 148
    .local v0, "isUpwardMotion":Z
    :goto_1
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 150
    iget-object v4, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->cancelCurrentPageLongPress()V

    .line 155
    :cond_0
    return-void

    .end local v0    # "isUpwardMotion":Z
    .end local v3    # "yMoved":Z
    :cond_1
    move v3, v5

    .line 145
    goto :goto_0

    .restart local v3    # "yMoved":Z
    :cond_2
    move v0, v5

    .line 146
    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->cancelDragging()V

    .line 164
    invoke-super {p0}, Lcom/android/launcher2/PagedView;->onDetachedFromWindow()V

    .line 165
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 86
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 107
    :cond_1
    iget v2, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mNextPage:I

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_0

    .line 108
    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/PagedViewWithDraggableItems;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 110
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_3

    .line 111
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/HomePendingItem;

    .line 112
    .local v0, "item":Lcom/android/launcher2/HomePendingItem;
    invoke-static {v0}, Lcom/android/launcher2/HomePendingItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/launcher2/HomePendingItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/HomePendingItem;->getSpanX()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher2/HomePendingItem;->getSpanY()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1000bf

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 117
    const/4 v0, 0x0

    .line 118
    goto :goto_0

    .line 121
    .end local v0    # "item":Lcom/android/launcher2/HomePendingItem;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mLastTouchedItem:Landroid/view/View;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mIsDragEnabled:Z

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 92
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setDragSlopeThreshold(F)V
    .locals 0
    .param p1, "dragSlopeThreshold"    # F

    .prologue
    .line 158
    iput p1, p0, Lcom/android/launcher2/PagedViewWithDraggableItems;->mDragSlopeThreshold:F

    .line 159
    return-void
.end method
