.class public Lcom/android/launcher2/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field public static final BOTTOM:I = 0x3

.field private static final DEBUGGABLE:Z

.field public static final LEFT:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Launcher.ResizeFrame"

.field public static final TOP:I = 0x1

.field private static final enableMultitouchForWidgetResize:Z


# instance fields
.field final BACKGROUND_PADDING:I

.field final BORDER_MARGIN:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBeginResize:Z

.field private mBorderHasChanged:Z

.field private mBorderMargin:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

.field private mClearIfNoScale:Z

.field private mDeltaX:I

.field private mDeltaY:I

.field private mDownX:I

.field private mDownY:I

.field private mExpandability:[I

.field private mForceInvalid:Z

.field private mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

.field private mHorizontalScaleActive:Z

.field private mLastTouch:[I

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleHasHappened:Z

.field private mSizes:Lcom/android/launcher2/WidgetSizes;

.field private mStartSpanX:F

.field private mStartSpanY:F

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mVerticalScaleActive:Z

.field private mVisualizeInvalid:Z

.field private mWidgetView:Landroid/view/View;

.field private mWorkspace:Lcom/android/launcher2/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/HomeItem;Landroid/view/View;Lcom/android/launcher2/CellLayoutWithResizableWidgets;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "item"    # Lcom/android/launcher2/HomeItem;
    .param p3, "widgetView"    # Landroid/view/View;
    .param p4, "cellLayout"    # Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .prologue
    .line 121
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    .line 87
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    .line 96
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    .line 98
    const/4 v6, 0x4

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    .line 100
    const/16 v6, 0x96

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->SNAP_DURATION:I

    .line 101
    const/16 v6, 0x10

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    .line 102
    const/16 v6, 0x10

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->BORDER_MARGIN:I

    .line 103
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    .line 104
    const v6, 0x3f28f5c3    # 0.66f

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    .line 111
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    .line 115
    new-instance v6, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 123
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 124
    .local v3, "res":Landroid/content/res/Resources;
    new-instance v6, Lcom/android/launcher2/WidgetSizes;

    invoke-direct {v6, p1}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    .line 126
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 128
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    .line 129
    .local v0, "density":F
    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 130
    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    .line 132
    iput-object p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    .line 133
    iput-object p4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    .line 134
    iput-object p3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    .line 135
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/Workspace;

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    .line 136
    const-string v5, ""

    .line 138
    .local v5, "widgetName":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v6, :cond_2

    .line 139
    check-cast p3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    .end local p3    # "widgetView":Landroid/view/View;
    invoke-virtual {p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 140
    .local v1, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 141
    iget-object v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    .line 152
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    :goto_0
    const v6, 0x7f020170

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 153
    const v6, 0x7f020171

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

    .line 154
    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    iget v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    iget v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/android/launcher2/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 156
    const v6, 0x7f1000c5

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "talkbackContent":Ljava/lang/String;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 160
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 161
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v7, 0x7f020172

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 162
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 163
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 164
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x13

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 166
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 169
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v7, 0x7f020172

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 172
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x15

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 174
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 177
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v7, 0x7f020172

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 178
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 180
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x31

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 182
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    new-instance v6, Landroid/widget/ImageView;

    invoke-direct {v6, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 185
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v7, 0x7f020172

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 186
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 188
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x51

    invoke-direct {v2, v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 190
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 193
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    :cond_1
    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 202
    return-void

    .line 142
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "talkbackContent":Ljava/lang/String;
    .restart local p3    # "widgetView":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v6, v6, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v6, :cond_4

    .line 143
    check-cast p3, Lcom/android/launcher2/SurfaceWidgetView;

    .end local p3    # "widgetView":Landroid/view/View;
    invoke-virtual {p3}, Lcom/android/launcher2/SurfaceWidgetView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 144
    .restart local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v1, :cond_3

    .line 145
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6, v1}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 146
    iget-object v5, v1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    goto/16 :goto_0

    .line 147
    :cond_3
    sget-boolean v6, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "AppWidgetResizeFrame"

    const-string v7, "surface widget view has invalid info"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 149
    .end local v1    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local p3    # "widgetView":Landroid/view/View;
    :cond_4
    sget-boolean v6, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "AppWidgetResizeFrame"

    const-string v7, "unknown view type of AppWidgetResizeFrame"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 195
    .end local p3    # "widgetView":Landroid/view/View;
    .restart local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "talkbackContent":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 196
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 197
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private beginResizeIfPointInRegion(II)Z
    .locals 12
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 354
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v8}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v8

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    move v2, v6

    .line 355
    .local v2, "horizontalActive":Z
    :goto_0
    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v8}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v8

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_3

    move v5, v6

    .line 357
    .local v5, "verticalActive":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f020172

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 358
    .local v4, "touchArea":I
    iget v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    iget v11, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    add-int/2addr v8, v11

    add-int/2addr v4, v8

    .line 360
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 362
    .local v1, "frame":Landroid/graphics/Rect;
    iget v8, v1, Landroid/graphics/Rect;->left:I

    if-le p1, v8, :cond_4

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v4

    if-ge p1, v8, :cond_4

    if-eqz v2, :cond_4

    move v8, v6

    :goto_2
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 363
    iget v8, v1, Landroid/graphics/Rect;->right:I

    if-ge p1, v8, :cond_5

    iget v8, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v4

    if-le p1, v8, :cond_5

    if-eqz v2, :cond_5

    move v8, v6

    :goto_3
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 365
    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-le p2, v8, :cond_6

    iget v8, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v4

    if-ge p2, v8, :cond_6

    if-eqz v5, :cond_6

    move v8, v6

    :goto_4
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 366
    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    if-ge p2, v8, :cond_7

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    if-le p2, v8, :cond_7

    if-eqz v5, :cond_7

    move v8, v6

    :goto_5
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 368
    iget-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v8, :cond_8

    :cond_0
    move v0, v6

    .line 370
    .local v0, "anyBordersActive":Z
    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 371
    .local v3, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 372
    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 373
    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    .line 374
    iget v6, v3, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iput v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    .line 375
    iput v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 376
    iput v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 378
    if-eqz v0, :cond_1

    .line 379
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v6, :cond_9

    move v6, v9

    :goto_7
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 380
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v6, :cond_a

    move v6, v9

    :goto_8
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 381
    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v6, :cond_b

    move v6, v9

    :goto_9
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 382
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v7, :cond_c

    :goto_a
    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 384
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    iget-object v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 386
    return v0

    .end local v0    # "anyBordersActive":Z
    .end local v1    # "frame":Landroid/graphics/Rect;
    .end local v2    # "horizontalActive":Z
    .end local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v4    # "touchArea":I
    .end local v5    # "verticalActive":Z
    :cond_2
    move v2, v7

    .line 354
    goto/16 :goto_0

    .restart local v2    # "horizontalActive":Z
    :cond_3
    move v5, v7

    .line 355
    goto/16 :goto_1

    .restart local v1    # "frame":Landroid/graphics/Rect;
    .restart local v4    # "touchArea":I
    .restart local v5    # "verticalActive":Z
    :cond_4
    move v8, v7

    .line 362
    goto/16 :goto_2

    :cond_5
    move v8, v7

    .line 363
    goto/16 :goto_3

    :cond_6
    move v8, v7

    .line 365
    goto :goto_4

    :cond_7
    move v8, v7

    .line 366
    goto :goto_5

    :cond_8
    move v0, v7

    .line 368
    goto :goto_6

    .restart local v0    # "anyBordersActive":Z
    .restart local v3    # "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_9
    move v6, v10

    .line 379
    goto :goto_7

    :cond_a
    move v6, v10

    .line 380
    goto :goto_8

    :cond_b
    move v6, v10

    .line 381
    goto :goto_9

    :cond_c
    move v9, v10

    .line 382
    goto :goto_a
.end method

.method private commitResize()V
    .locals 11

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualOk()V

    .line 698
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 700
    .local v10, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetView;

    iget v1, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/SurfaceWidgetView;->resizeSurfaceWidgetView(II)V

    .line 715
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    const-wide/16 v2, -0x64

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    iget v4, v4, Lcom/android/launcher2/HomeItem;->mScreen:I

    iget v5, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v6, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v7, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v8, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const-string v9, "resizeItemInDatabase"

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;JIIIIILjava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 721
    new-instance v0, Lcom/android/launcher2/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-void

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v0, :cond_2

    .line 706
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v4, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    check-cast v0, Lcom/android/launcher2/HomeWidgetItem;

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    goto :goto_0

    .line 712
    :cond_2
    sget-boolean v0, Lcom/android/launcher2/AppWidgetResizeFrame;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "AppWidgetResizeFrame"

    const-string v1, "unknown view type in app widget resize frame"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getRect()Landroid/graphics/Rect;
    .locals 3

    .prologue
    .line 328
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 329
    .local v0, "frame":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 336
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 337
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 338
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 339
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 341
    return-object v0
.end method

.method private resizeWidgetIfNeeded()V
    .locals 26

    .prologue
    .line 516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCellWidth()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidthGap()I

    move-result v2

    add-int v23, v1, v2

    .line 517
    .local v23, "xThreshold":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getCellHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getHeightGap()I

    move-result v2

    add-int v24, v1, v2

    .line 519
    .local v24, "yThreshold":I
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 520
    .local v7, "_runh":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 522
    .local v8, "_runv":I
    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move/from16 v0, v23

    int-to-float v2, v0

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v2, v2

    sub-float v16, v1, v2

    .line 523
    .local v16, "hSpanIncF":F
    const/high16 v1, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    move/from16 v0, v24

    int-to-float v2, v0

    div-float/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v2, v2

    sub-float v20, v1, v2

    .line 525
    .local v20, "vSpanIncF":F
    const/4 v15, 0x0

    .line 526
    .local v15, "hSpanInc":I
    const/16 v19, 0x0

    .line 527
    .local v19, "vSpanInc":I
    const/4 v13, 0x0

    .line 528
    .local v13, "cellXInc":I
    const/4 v14, 0x0

    .line 530
    .local v14, "cellYInc":I
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 531
    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 533
    :cond_0
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f28f5c3    # 0.66f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 534
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v19

    .line 537
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    if-nez v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    cmpg-float v1, v1, v20

    if-ltz v1, :cond_5

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v1, v20

    if-gtz v1, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v1, v16

    if-gtz v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-float v1, v1

    cmpg-float v1, v1, v16

    if-gez v1, :cond_6

    .line 543
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualInvalid()V

    .line 549
    :goto_0
    if-nez v15, :cond_7

    if-nez v19, :cond_7

    .line 689
    :goto_1
    return-void

    .line 545
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualOk()V

    goto :goto_0

    .line 555
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    check-cast v17, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 560
    .local v17, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_13

    .line 561
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 562
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 563
    mul-int/lit8 v15, v15, -0x1

    .line 564
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 565
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 566
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    sub-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 588
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_15

    .line 589
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 590
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 591
    mul-int/lit8 v19, v19, -0x1

    .line 592
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 593
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 594
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    sub-int v1, v1, v19

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 617
    :cond_9
    :goto_3
    move-object/from16 v0, v17

    iget v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 618
    .local v5, "width":I
    move-object/from16 v0, v17

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 619
    .local v6, "height":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-eqz v1, :cond_b

    .line 620
    :cond_a
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int v5, v15, v1

    .line 622
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-eqz v1, :cond_d

    .line 623
    :cond_c
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int v6, v19, v1

    .line 627
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher2/WidgetSizes;->isAvailableSize(II)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 629
    move-object/from16 v0, v17

    iget v9, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 630
    .local v9, "_spanx":I
    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 631
    .local v10, "_spany":I
    move-object/from16 v0, v17

    iget v11, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 632
    .local v11, "_x":I
    move-object/from16 v0, v17

    iget v12, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 634
    .local v12, "_y":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-eqz v1, :cond_f

    .line 635
    :cond_e
    move-object/from16 v0, v17

    iput v5, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 636
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    add-int/2addr v1, v13

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 639
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-eqz v1, :cond_11

    .line 640
    :cond_10
    move-object/from16 v0, v17

    iput v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 641
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    add-int/2addr v1, v14

    move-object/from16 v0, v17

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 644
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHomeWidgetItem:Lcom/android/launcher2/HomeItem;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->rearrangeWorkspaceForSpace(Lcom/android/launcher2/BaseItem;IIII)Z

    move-result v1

    if-nez v1, :cond_17

    .line 646
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualInvalid()V

    .line 648
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 649
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 651
    move-object/from16 v0, v17

    iput v9, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 652
    move-object/from16 v0, v17

    iput v10, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 653
    move-object/from16 v0, v17

    iput v11, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 654
    move-object/from16 v0, v17

    iput v12, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 684
    .end local v9    # "_spanx":I
    .end local v10    # "_spany":I
    .end local v11    # "_x":I
    .end local v12    # "_y":I
    :cond_12
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 688
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_1

    .line 567
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_14

    .line 568
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-static {v1, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 569
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    invoke-static {v1, v15}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 570
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_2

    .line 571
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-eqz v1, :cond_8

    .line 574
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v1

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v2, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 576
    .restart local v5    # "width":I
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 578
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v1, v5}, Lcom/android/launcher2/WidgetSizes;->capWidth(I)I

    move-result v5

    .line 579
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v15, v5, v1

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v1, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    int-to-float v1, v1

    move/from16 v0, v23

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v21

    .line 583
    .local v21, "wantedX":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    neg-int v1, v1

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    sub-int v2, v21, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    sub-int/2addr v2, v15

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 585
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    add-int/2addr v1, v15

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_2

    .line 595
    .end local v5    # "width":I
    .end local v21    # "wantedX":I
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_16

    .line 596
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 597
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    move/from16 v0, v19

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 598
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v1, v1, v19

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_3

    .line 599
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-eqz v1, :cond_9

    .line 602
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v1}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v1

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int v2, v2, v19

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 604
    .restart local v6    # "height":I
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    add-int/2addr v1, v2

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v1, v6}, Lcom/android/launcher2/WidgetSizes;->capHeight(I)I

    move-result v6

    .line 607
    move-object/from16 v0, v17

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    sub-int v19, v6, v1

    .line 609
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    iget v1, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    int-to-float v1, v1

    move/from16 v0, v24

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v22

    .line 611
    .local v22, "wantedY":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    neg-int v1, v1

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    sub-int v2, v22, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    sub-int v2, v2, v19

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 613
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    add-int v1, v1, v19

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_3

    .line 656
    .end local v22    # "wantedY":I
    .restart local v5    # "width":I
    .restart local v9    # "_spanx":I
    .restart local v10    # "_spany":I
    .restart local v11    # "_x":I
    .restart local v12    # "_y":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v1, :cond_18

    .line 658
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/SurfaceWidgetView;->resizeSurfaceWidgetView(II)V

    goto/16 :goto_4

    .line 662
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getSpanCalculator()Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-result-object v18

    .line 663
    .local v18, "spanCalc":Lcom/android/launcher2/WorkspaceSpanCalculator;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Launcher;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/WorkspaceSpanCalculator;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    iget-boolean v1, v1, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-nez v1, :cond_12

    .line 666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v1, :cond_12

    .line 667
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Workspace;

    move-object/from16 v0, v17

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v2, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v0, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    iget v2, v2, Lcom/android/launcher2/HomeWidgetItem;->appWidgetId:I

    move-object/from16 v0, v25

    invoke-virtual {v1, v3, v4, v0, v2}, Lcom/android/launcher2/Workspace;->sendWidgetResizeIntent(IILandroid/content/ComponentName;I)V

    goto/16 :goto_4

    .line 676
    .end local v9    # "_spanx":I
    .end local v10    # "_spany":I
    .end local v11    # "_x":I
    .end local v12    # "_y":I
    .end local v18    # "spanCalc":Lcom/android/launcher2/WorkspaceSpanCalculator;
    :cond_19
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 677
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 679
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->setVisualInvalid()V

    goto/16 :goto_4
.end method

.method private setVisualInvalid()V
    .locals 2

    .prologue
    const v1, 0x7f020173

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    .line 506
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 507
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 508
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 509
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 510
    return-void
.end method

.method private setVisualOk()V
    .locals 2

    .prologue
    const v1, 0x7f020172

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    .line 499
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 500
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 501
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 502
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    return-void
.end method

.method private updateDeltas(II)V
    .locals 10
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 392
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    iget-object v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v6}, Lcom/android/launcher2/WidgetSizes;->getMinXSpan()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v7}, Lcom/android/launcher2/WidgetSizes;->getMinYSpan()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->spanToPixel(II)[I

    move-result-object v3

    .line 393
    .local v3, "r":[I
    aget v5, v3, v8

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v2, v5, -0x1

    .line 394
    .local v2, "minWidth":I
    aget v5, v3, v9

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, -0x1

    .line 396
    .local v1, "minHeight":I
    const/4 v0, 0x0

    .local v0, "left":Z
    const/4 v4, 0x0

    .line 398
    .local v4, "top":Z
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v5, p1

    if-gt v5, v2, :cond_2

    .line 399
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int v5, v2, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 400
    const/4 v0, 0x1

    .line 411
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v5, p2

    if-gt v5, v1, :cond_4

    .line 412
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int v5, v1, v5

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 413
    const/4 v4, 0x1

    .line 424
    :cond_1
    :goto_1
    if-eqz v0, :cond_6

    if-eqz v4, :cond_6

    .line 425
    iput-boolean v9, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    .line 429
    :goto_2
    return-void

    .line 401
    :cond_2
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr v5, p1

    if-gt v5, v2, :cond_3

    .line 402
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    sub-int/2addr v5, v2

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 403
    const/4 v0, 0x1

    goto :goto_0

    .line 405
    :cond_3
    iput p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 406
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v5, :cond_0

    .line 407
    const/4 v0, 0x1

    goto :goto_0

    .line 414
    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr v5, p2

    if-gt v5, v1, :cond_5

    .line 415
    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    sub-int/2addr v5, v1

    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 416
    const/4 v4, 0x1

    goto :goto_1

    .line 418
    :cond_5
    iput p2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 419
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v5, :cond_1

    .line 420
    const/4 v4, 0x1

    goto :goto_1

    .line 427
    :cond_6
    iput-boolean v8, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mForceInvalid:Z

    goto :goto_2
.end method

.method private visualizeResizeForDelta(II)V
    .locals 20
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 435
    invoke-direct/range {p0 .. p2}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 436
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 438
    .local v10, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v3, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 439
    .local v3, "_w":I
    iget v2, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 441
    .local v2, "_h":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 463
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 465
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 490
    :cond_1
    :goto_1
    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v3, v0, :cond_2

    iget v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v2, v0, :cond_3

    .line 491
    :cond_2
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    .line 492
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded()V

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 495
    :cond_3
    return-void

    .line 444
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 445
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    goto :goto_0

    .line 446
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 447
    if-lez p1, :cond_6

    .line 448
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    add-int v6, v17, v18

    .line 449
    .local v6, "availableLeft":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    sub-int v18, v18, v19

    sub-int v7, v17, v18

    .line 450
    .local v7, "availableRight":I
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v4, v17, 0x2

    .line 451
    .local v4, "availableBoth":I
    const/16 v17, 0x0

    sub-int v18, p1, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 452
    .local v9, "leftover":I
    move/from16 v0, p1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 453
    .local v12, "useBoth":I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 454
    .local v14, "useLeft":I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 455
    .local v15, "useRight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    sub-int v17, v17, v14

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    add-int v17, v17, v14

    add-int v17, v17, v15

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    goto/16 :goto_0

    .line 458
    .end local v4    # "availableBoth":I
    .end local v6    # "availableLeft":I
    .end local v7    # "availableRight":I
    .end local v9    # "leftover":I
    .end local v12    # "useBoth":I
    .end local v14    # "useLeft":I
    .end local v15    # "useRight":I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    move/from16 v17, v0

    div-int/lit8 v18, p1, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 459
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    move/from16 v17, v0

    add-int v17, v17, p1

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    goto/16 :goto_0

    .line 466
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 467
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 468
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 469
    if-lez p2, :cond_9

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 475
    .local v11, "totalMaxHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    add-int v8, v17, v18

    .line 476
    .local v8, "availableTop":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x2

    sub-int v17, v17, v18

    sub-int v5, v11, v17

    .line 477
    .local v5, "availableBottom":I
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v4, v17, 0x2

    .line 478
    .restart local v4    # "availableBoth":I
    const/16 v17, 0x0

    sub-int v18, p2, v4

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 479
    .restart local v9    # "leftover":I
    move/from16 v0, p2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 480
    .restart local v12    # "useBoth":I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v16

    .line 481
    .local v16, "useTop":I
    div-int/lit8 v17, v12, 0x2

    add-int v17, v17, v9

    move/from16 v0, v17

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 482
    .local v13, "useBottom":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    sub-int v17, v17, v16

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    add-int v17, v17, v16

    add-int v17, v17, v13

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    goto/16 :goto_1

    .line 485
    .end local v4    # "availableBoth":I
    .end local v5    # "availableBottom":I
    .end local v8    # "availableTop":I
    .end local v9    # "leftover":I
    .end local v11    # "totalMaxHeight":I
    .end local v12    # "useBoth":I
    .end local v13    # "useBottom":I
    .end local v16    # "useTop":I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    move/from16 v17, v0

    div-int/lit8 v18, p2, 0x2

    sub-int v17, v17, v18

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 486
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    move/from16 v17, v0

    add-int v17, v17, p2

    move/from16 v0, v17

    iput v0, v10, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    goto/16 :goto_1
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 800
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 802
    .local v1, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 803
    .local v4, "widthOfTopHandle":I
    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 805
    .local v3, "widthOfLeftHandle":I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    float-to-int v5, v5

    iget v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    add-int v2, v5, v6

    .line 807
    .local v2, "m":I
    const/4 v0, 0x0

    .line 808
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVisualizeInvalid:Z

    if-eqz v5, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundInvalid:Landroid/graphics/drawable/Drawable;

    .line 814
    :goto_0
    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    sub-int/2addr v5, v2

    iget v6, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    sub-int/2addr v6, v2

    invoke-virtual {v0, v2, v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 815
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 817
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 818
    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public getBackgroundPadding()I
    .locals 1

    .prologue
    .line 821
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    return v0
.end method

.method public getWidgetView()Landroid/view/View;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    return-object v0
.end method

.method public isPointInFrame(FF)Z
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 346
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 347
    .local v0, "frame":Landroid/graphics/Rect;
    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    const/4 v1, 0x1

    .line 350
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 276
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    if-nez v1, :cond_3

    .line 277
    sget-boolean v1, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher2/Workspace;->isInResizeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 290
    :goto_0
    return v1

    .line 282
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 283
    .local v0, "item":Lcom/android/launcher2/BaseItem;
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/AppIconView;

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/DynamicShadowMixin$Holder;

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    aget v2, v4, v2

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v2, v4

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    aget v4, v4, v3

    iget v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v4, v5

    invoke-interface {v1, v2, v4}, Lcom/android/launcher2/DynamicShadowMixin$Holder;->setLastTouchPoint(II)V

    .line 287
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWorkspace:Lcom/android/launcher2/Workspace;

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/Workspace;->startDrag(Landroid/view/View;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Workspace;->exitWidgetResizeMode(Z)V

    move v1, v3

    .line 288
    goto :goto_0

    .end local v0    # "item":Lcom/android/launcher2/BaseItem;
    :cond_3
    move v1, v2

    .line 290
    goto :goto_0
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 295
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 296
    .local v2, "spanX":F
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanX:F

    sub-float v0, v2, v4

    .line 297
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 298
    .local v3, "spanY":F
    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanY:F

    sub-float v1, v3, v4

    .line 300
    .local v1, "deltaY":F
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    .line 301
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 302
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 304
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    .line 305
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 306
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 308
    float-to-int v4, v0

    float-to-int v5, v1

    invoke-direct {p0, v4, v5}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 310
    return v6
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 315
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanX:F

    .line 316
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mStartSpanY:F

    .line 317
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v0, 0x0

    .line 322
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 323
    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mHorizontalScaleActive:Z

    .line 324
    iput-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mVerticalScaleActive:Z

    .line 325
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 213
    invoke-virtual {p0, v6}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestDisallowInterceptTouchEvent(Z)V

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v1, v3

    .line 224
    .local v1, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v2, v3

    .line 226
    .local v2, "rawY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 270
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 271
    return v6

    .line 228
    :pswitch_0
    iput v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    .line 229
    iput v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    .line 231
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v5

    .line 232
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLastTouch:[I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aput v4, v3, v6

    .line 234
    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 235
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mClearIfNoScale:Z

    .line 236
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleHasHappened:Z

    .line 237
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderHasChanged:Z

    goto :goto_0

    .line 239
    :cond_1
    iput-boolean v6, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    goto :goto_0

    .line 244
    :pswitch_1
    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    sub-int v4, v2, v4

    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    goto :goto_0

    .line 248
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    .line 249
    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownX:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDownY:I

    sub-int v4, v2, v4

    invoke-direct {p0, v3, v4}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 250
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 251
    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mClearIfNoScale:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mScaleHasHappened:Z

    if-nez v3, :cond_2

    .line 252
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->clearResizeFrame()V

    .line 254
    :cond_2
    sget-boolean v3, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/launcher2/Workspace;->widgetSizeChanged:Z

    if-eqz v3, :cond_0

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v3}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;-><init>(Landroid/app/Activity;)V

    .restart local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    move-object v3, v0

    .line 258
    check-cast v3, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    invoke-virtual {v3}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->dismissHelpDialog()V

    .line 259
    sput-boolean v6, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->isStep3Visible:Z

    .line 260
    check-cast v0, Lcom/android/launcher2/guide/ResizeWidgetsGuider;

    .end local v0    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v0}, Lcom/android/launcher2/guide/ResizeWidgetsGuider;->showHelpDialog_step2()V

    goto :goto_0

    .line 265
    :pswitch_3
    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->commitResize()V

    .line 266
    :cond_3
    iput-boolean v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBeginResize:Z

    goto/16 :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public snapToWidget(Z)V
    .locals 19
    .param p1, "animate"    # Z

    .prologue
    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 731
    .local v4, "lp":Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020172

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    float-to-int v2, v12

    .line 733
    .local v2, "handleOffset":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    mul-int/lit8 v13, v2, 0x2

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    mul-int/lit8 v13, v13, 0x2

    add-int v6, v12, v13

    .line 734
    .local v6, "newWidth":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v13, v2, 0x2

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    mul-int/lit8 v13, v13, 0x2

    add-int v5, v12, v13

    .line 736
    .local v5, "newHeight":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getPaddingLeft()I

    move-result v3

    .line 737
    .local v3, "l":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayoutWithResizableWidgets;

    invoke-virtual {v12}, Lcom/android/launcher2/CellLayoutWithResizableWidgets;->getPaddingTop()I

    move-result v11

    .line 739
    .local v11, "t":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v12

    add-int/2addr v12, v3

    sub-int/2addr v12, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    sub-int v7, v12, v13

    .line 740
    .local v7, "newX":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v12

    add-int/2addr v12, v11

    sub-int/2addr v12, v2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBorderMargin:I

    sub-int v8, v12, v13

    .line 742
    .local v8, "newY":I
    if-nez p1, :cond_0

    .line 743
    iput v6, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 744
    iput v5, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 745
    iput v7, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 746
    iput v8, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 747
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 748
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 749
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 750
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 795
    :goto_0
    return-void

    .line 753
    :cond_0
    const/4 v12, 0x4

    new-array v12, v12, [Landroid/animation/PropertyValuesHolder;

    const/4 v13, 0x0

    sget-object v14, Lcom/android/launcher2/CellLayout$LayoutParams;->WIDTH:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    iget v0, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v6, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Lcom/android/launcher2/CellLayout$LayoutParams;->HEIGHT:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    iget v0, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v5, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    sget-object v14, Lcom/android/launcher2/CellLayout$LayoutParams;->X:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    iget v0, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v7, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    sget-object v14, Lcom/android/launcher2/CellLayout$LayoutParams;->Y:Landroid/util/Property;

    const/4 v15, 0x2

    new-array v15, v15, [I

    const/16 v16, 0x0

    iget v0, v4, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move/from16 v17, v0

    aput v17, v15, v16

    const/16 v16, 0x1

    aput v8, v15, v16

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v4, v12}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 759
    .local v9, "oa":Landroid/animation/ObjectAnimator;
    new-instance v12, Lcom/android/launcher2/AppWidgetResizeFrame$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/launcher2/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {v9, v12}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 765
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    .line 767
    .local v10, "set":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v12}, Lcom/android/launcher2/WidgetSizes;->resizeMode()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 783
    const/4 v12, 0x5

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 792
    :goto_1
    const-wide/16 v12, 0x96

    invoke-virtual {v10, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 793
    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 769
    :pswitch_0
    const/4 v12, 0x3

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 776
    :pswitch_1
    const/4 v12, 0x3

    new-array v12, v12, [Landroid/animation/Animator;

    const/4 v13, 0x0

    aput-object v9, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    sget-object v15, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/high16 v18, 0x3f800000    # 1.0f

    aput v18, v16, v17

    invoke-static/range {v14 .. v16}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_1

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
