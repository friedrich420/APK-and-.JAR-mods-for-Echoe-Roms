.class public Lcom/android/launcher2/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DragState$6;,
        Lcom/android/launcher2/DragState$VisualMode;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final TAG:Ljava/lang/String; = "DragState"


# instance fields
.field private final ctx:Landroid/content/Context;

.field private mAnimateVied:Landroid/view/View;

.field private mBlockDeleteFromSource:Z

.field private mCacheDragView:Landroid/view/View;

.field private mDeleted:Z

.field final mDragOrigin:Lcom/android/launcher2/DragOrigin;

.field private mEndRunnable:Ljava/lang/Runnable;

.field private mFoundValidDrop:Z

.field private mHasEnded:Z

.field final mItem:Lcom/android/launcher2/BaseItem;

.field mOriginalCell:I

.field mOriginalScreen:I

.field private mReceiver:Lcom/android/launcher2/DragReceivable;

.field mRevertDrag:Z

.field private mShadow:Lcom/android/launcher2/ShadowBuilder;

.field private mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

.field private mSwapView:Landroid/view/View;

.field mUnderdragView:Landroid/view/View;

.field private mVisualMode:Lcom/android/launcher2/DragState$VisualMode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;ILcom/android/launcher2/Launcher;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "itemType"    # I
    .param p3, "mLauncher"    # Lcom/android/launcher2/Launcher;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 82
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    .line 97
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    .line 98
    iput-boolean v1, p0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    .line 100
    iput-object v2, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    .line 973
    sget-object v0, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    .line 151
    iput-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    .line 152
    iput-object p3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/DragState;->initItemInfo(Landroid/content/Intent;I)Lcom/android/launcher2/BaseItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    .line 155
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DragState for DND : mItem :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 103
    invoke-static {p1}, Lcom/android/launcher2/DragState;->findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/DragState;-><init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/android/launcher2/DragOrigin;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "origin"    # Lcom/android/launcher2/DragOrigin;

    .prologue
    const/4 v7, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 82
    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 83
    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 95
    iput v4, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    .line 97
    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    .line 98
    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mRevertDrag:Z

    .line 100
    iput-object v6, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    .line 973
    sget-object v3, Lcom/android/launcher2/DragState$VisualMode;->NORMAL:Lcom/android/launcher2/DragState$VisualMode;

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    .line 107
    iput-object p2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    .line 110
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    .line 111
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget v3, v3, Lcom/android/launcher2/BaseItem;->mScreen:I

    iput v3, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    .line 112
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v0, Lcom/android/launcher2/AppItem;

    .line 114
    .local v0, "appItem":Lcom/android/launcher2/AppItem;
    iget v3, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v3, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    .line 115
    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_0

    .line 116
    iput v4, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    .line 117
    iput v4, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    .line 121
    .end local v0    # "appItem":Lcom/android/launcher2/AppItem;
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-static {v3}, Lcom/android/launcher2/BaseItem;->isWidget(Lcom/android/launcher2/BaseItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    const/4 v3, 0x2

    new-array v1, v3, [I

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getSpanX()I

    move-result v3

    aput v3, v1, v5

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v3}, Lcom/android/launcher2/BaseItem;->getSpanY()I

    move-result v3

    aput v3, v1, v7

    .line 123
    .local v1, "minSpans":[I
    new-instance v3, Lcom/android/launcher2/WidgetSizes;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/launcher2/WidgetSizes;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    .line 125
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v3, :cond_3

    .line 126
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomeWidgetItem;

    .line 127
    .local v2, "temp":Lcom/android/launcher2/HomeWidgetItem;
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v6, v6}, Lcom/android/launcher2/HomeWidgetItem;->getHostView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v3, :cond_1

    .line 128
    iget-object v4, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v2, v6, v6}, Lcom/android/launcher2/HomeWidgetItem;->getHostView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/launcher2/WidgetSizes;->load(Landroid/appwidget/AppWidgetProviderInfo;)V

    .line 129
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 130
    iget v3, v2, Lcom/android/launcher2/HomeWidgetItem;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/launcher2/HomeWidgetItem;->getResizeSpans()[I

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher2/DragState;->updateMinSpan([II[I)V

    .line 143
    .end local v2    # "temp":Lcom/android/launcher2/HomeWidgetItem;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    invoke-virtual {v3}, Lcom/android/launcher2/WidgetSizes;->getAvailableSizeCount()I

    move-result v3

    if-nez v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    aget v4, v1, v5

    aget v5, v1, v7

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/WidgetSizes;->setMinSpan(II)V

    .line 148
    .end local v1    # "minSpans":[I
    :cond_2
    return-void

    .line 132
    .restart local v1    # "minSpans":[I
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomePendingWidget;

    if-eqz v3, :cond_4

    .line 133
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomePendingWidget;

    .line 134
    .local v2, "temp":Lcom/android/launcher2/HomePendingWidget;
    iget v3, v2, Lcom/android/launcher2/HomePendingWidget;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/launcher2/HomePendingWidget;->getResizeSpans()[I

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher2/DragState;->updateMinSpan([II[I)V

    goto :goto_0

    .line 135
    .end local v2    # "temp":Lcom/android/launcher2/HomePendingWidget;
    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/HomePendingSurfaceWidget;

    if-eqz v3, :cond_5

    .line 136
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/HomePendingSurfaceWidget;

    .line 137
    .local v2, "temp":Lcom/android/launcher2/HomePendingSurfaceWidget;
    iget-object v3, v2, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget v3, v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/launcher2/HomePendingSurfaceWidget;->getResizeSpans()[I

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher2/DragState;->updateMinSpan([II[I)V

    goto :goto_0

    .line 138
    .end local v2    # "temp":Lcom/android/launcher2/HomePendingSurfaceWidget;
    :cond_5
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v3, v3, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v3, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 140
    .local v2, "temp":Lcom/android/launcher2/SurfaceWidgetItem;
    iget-object v3, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget v3, v3, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->resizeMode:I

    invoke-virtual {v2}, Lcom/android/launcher2/SurfaceWidgetItem;->getResizeSpans()[I

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher2/DragState;->updateMinSpan([II[I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher2/DragState;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DragState;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private animateDrop()V
    .locals 6

    .prologue
    .line 1011
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    instance-of v3, v3, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1015
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_2

    .line 1016
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v3, v4}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 1018
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 1019
    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getAnimationLayer()Lcom/android/launcher2/AnimationLayer;

    move-result-object v2

    .line 1020
    .local v2, "l":Lcom/android/launcher2/AnimationLayer;
    const/4 v0, 0x0

    .line 1021
    .local v0, "group":I
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    instance-of v3, v3, Lcom/android/launcher2/AppIconView;

    if-eqz v3, :cond_3

    .line 1022
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/AppIconView;

    .line 1023
    .local v1, "icon":Lcom/android/launcher2/AppIconView;
    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getAnimGroup()I

    move-result v0

    .line 1025
    .end local v1    # "icon":Lcom/android/launcher2/AppIconView;
    :cond_3
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    iget-object v5, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/launcher2/AnimationLayer;->animateDrop(ILjava/lang/Runnable;Landroid/view/View;Lcom/android/launcher2/ShadowBuilder;)Lcom/android/launcher2/AnimationLayer$Anim;

    goto :goto_0
.end method

.method private createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;
    .locals 18
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 1074
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/LauncherApplication;

    .line 1075
    .local v7, "launcherApplication":Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v13

    .line 1076
    .local v13, "pkgResCache":Lcom/android/launcher2/PkgResCache;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 1077
    .local v11, "pkgMgr":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1078
    .local v2, "activity":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .line 1079
    .local v6, "item":Lcom/android/launcher2/AppItem;
    const/4 v9, 0x0

    .line 1081
    .local v9, "mIconBitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 1082
    iget-object v12, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1083
    .local v12, "pkgName":Ljava/lang/String;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v15, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v12, v15}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    .local v3, "cn":Landroid/content/ComponentName;
    iget-object v15, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v15, v15, 0x81

    if-eqz v15, :cond_4

    const/4 v5, 0x1

    .line 1087
    .local v5, "isSystemApp":Z
    :goto_0
    new-instance v6, Lcom/android/launcher2/AppItem;

    .end local v6    # "item":Lcom/android/launcher2/AppItem;
    invoke-direct {v6, v3, v5}, Lcom/android/launcher2/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    .line 1088
    .restart local v6    # "item":Lcom/android/launcher2/AppItem;
    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/android/launcher2/AppItem;->mDirty:Z

    .line 1094
    if-eqz v13, :cond_0

    .line 1096
    :try_start_0
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 1097
    .local v14, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v15

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/android/launcher2/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1098
    if-nez v9, :cond_0

    .line 1099
    invoke-virtual {v11}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    invoke-static {v15, v7}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 1104
    .end local v14    # "res":Landroid/content/res/Resources;
    :cond_0
    :goto_1
    sget-boolean v15, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v15, :cond_2

    .line 1105
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/launcher2/LauncherApplication;->getThemeLoader()Lcom/android/launcher2/ThemeLoader;

    move-result-object v8

    .line 1106
    .local v8, "loader":Lcom/android/launcher2/ThemeLoader;
    invoke-virtual {v8}, Lcom/android/launcher2/ThemeLoader;->isUseDefaultTheme()Z

    move-result v15

    if-nez v15, :cond_2

    .line 1107
    invoke-virtual {v8, v12}, Lcom/android/launcher2/ThemeLoader;->loadAppIconBitmapByPackageName(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1108
    .local v10, "newIcon":Landroid/graphics/Bitmap;
    if-nez v10, :cond_1

    .line 1109
    invoke-virtual {v8, v9}, Lcom/android/launcher2/ThemeLoader;->load3rdAppIconBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1111
    :cond_1
    if-nez v10, :cond_5

    .line 1114
    .end local v8    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v10    # "newIcon":Landroid/graphics/Bitmap;
    :cond_2
    :goto_2
    iput-object v9, v6, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1115
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    iput-object v15, v6, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    .line 1118
    iget-boolean v15, v6, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v15, :cond_3

    .line 1119
    const/4 v15, 0x0

    :try_start_1
    invoke-virtual {v11, v12, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    iget-wide v0, v15, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v6, Lcom/android/launcher2/AppItem;->mCreateTime:J
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1124
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "isSystemApp":Z
    .end local v12    # "pkgName":Ljava/lang/String;
    :cond_3
    :goto_3
    return-object v6

    .line 1084
    .restart local v3    # "cn":Landroid/content/ComponentName;
    .restart local v12    # "pkgName":Ljava/lang/String;
    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .restart local v5    # "isSystemApp":Z
    .restart local v8    # "loader":Lcom/android/launcher2/ThemeLoader;
    .restart local v10    # "newIcon":Landroid/graphics/Bitmap;
    :cond_5
    move-object v9, v10

    .line 1111
    goto :goto_2

    .line 1120
    .end local v8    # "loader":Lcom/android/launcher2/ThemeLoader;
    .end local v10    # "newIcon":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    .line 1121
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v15, "DragState"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Cannot find PackageInfo for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1100
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v15

    goto :goto_1
.end method

.method private deleteFromSource()V
    .locals 2

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    if-eqz v0, :cond_1

    .line 765
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 762
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v0, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v0, :cond_0

    .line 763
    iget-object v1, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v0, Lcom/android/launcher2/HomeItem;

    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto :goto_0
.end method

.method private fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher2/HomeItem;
    .param p2, "container"    # J
    .param p4, "screen"    # I
    .param p5, "x"    # I
    .param p6, "y"    # I
    .param p7, "resetSpans"    # Z

    .prologue
    const/4 v1, -0x1

    .line 365
    iput-wide p2, p1, Lcom/android/launcher2/HomeItem;->container:J

    .line 366
    iput p4, p1, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 367
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 368
    iput p5, p1, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 369
    iput p6, p1, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 370
    if-eqz p7, :cond_0

    .line 371
    iput v1, p1, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 372
    iput v1, p1, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 374
    :cond_0
    return-void
.end method

.method private findActivityForComponent(Landroid/content/ComponentName;)Ljava/util/List;
    .locals 5
    .param p1, "cn"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1061
    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1063
    .local v2, "pkgMgr":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1064
    .local v1, "mainIntent":Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1066
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1067
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_0

    .line 1068
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1070
    :cond_0
    return-object v0
.end method

.method public static findOrigin(Landroid/view/View;)Lcom/android/launcher2/DragOrigin;
    .locals 2
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 928
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 929
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 930
    check-cast v0, Landroid/view/View;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    goto :goto_0

    .line 932
    :cond_0
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_1

    .line 933
    check-cast v0, Lcom/android/launcher2/DragOrigin;

    .line 935
    .end local v0    # "parent":Landroid/view/ViewParent;
    :goto_1
    return-object v0

    .restart local v0    # "parent":Landroid/view/ViewParent;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private initItemInfo(Landroid/content/Intent;I)Lcom/android/launcher2/BaseItem;
    .locals 21
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "itemType"    # I

    .prologue
    .line 168
    const/4 v14, 0x0

    .line 170
    .local v14, "retItem":Lcom/android/launcher2/BaseItem;
    const/4 v8, 0x0

    .line 171
    .local v8, "hi":Lcom/android/launcher2/HomePendingItem;
    const/4 v7, 0x0

    .line 172
    .local v7, "dragView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0200ba

    invoke-static/range {v18 .. v19}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 173
    .local v5, "bm":Landroid/graphics/Bitmap;
    new-instance v4, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v4, v5}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 174
    .local v4, "bitmapDrawable":Lcom/android/launcher2/FastBitmapDrawable;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v12, Lcom/android/launcher2/Launcher;

    .line 176
    .local v12, "launcher":Lcom/android/launcher2/Launcher;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 177
    .local v6, "cn":Landroid/content/ComponentName;
    const v18, 0x7f0f008f

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "dragView":Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 179
    .restart local v7    # "dragView":Landroid/widget/ImageView;
    if-eqz v6, :cond_6

    if-eqz v7, :cond_6

    .line 180
    sparse-switch p2, :sswitch_data_0

    .line 223
    :cond_0
    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    .line 227
    new-instance v15, Lcom/android/launcher2/ShadowBuilder;

    invoke-direct {v15, v7, v5}, Lcom/android/launcher2/ShadowBuilder;-><init>(Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 228
    .local v15, "shadow":Lcom/android/launcher2/ShadowBuilder;
    new-instance v16, Landroid/graphics/Point;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Point;-><init>()V

    .line 229
    .local v16, "shadowSize":Landroid/graphics/Point;
    new-instance v17, Landroid/graphics/Point;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Point;-><init>()V

    .line 230
    .local v17, "shadowTouchPoint":Landroid/graphics/Point;
    invoke-virtual/range {v15 .. v17}, Lcom/android/launcher2/ShadowBuilder;->onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 232
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    if-ltz v18, :cond_1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    if-gez v18, :cond_3

    .line 233
    :cond_1
    const-string v18, "DragState"

    const-string v19, "Drag shadow touch point must not be negative"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/16 v18, 0x0

    .line 249
    .end local v15    # "shadow":Lcom/android/launcher2/ShadowBuilder;
    .end local v16    # "shadowSize":Landroid/graphics/Point;
    .end local v17    # "shadowTouchPoint":Landroid/graphics/Point;
    :goto_1
    return-object v18

    .line 182
    :sswitch_0
    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v18

    if-eqz v18, :cond_0

    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 183
    invoke-virtual {v12}, Lcom/android/launcher2/Launcher;->getHomeView()Lcom/android/launcher2/HomeView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/HomeView;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-virtual {v0, v12, v1, v2}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v9

    .line 185
    .local v9, "hsi":Lcom/android/launcher2/HomeShortcutItem;
    if-eqz v9, :cond_0

    .line 186
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/launcher2/HomeShortcutItem;->setFromDND(Z)Z

    .line 187
    move-object v14, v9

    .line 188
    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 197
    .end local v9    # "hsi":Lcom/android/launcher2/HomeShortcutItem;
    :sswitch_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v6, v1}, Lcom/android/launcher2/DragState;->getAvailableWidget(Landroid/content/ComponentName;I)Lcom/android/launcher2/HomePendingItem;

    move-result-object v8

    .line 198
    if-eqz v8, :cond_0

    .line 199
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Lcom/android/launcher2/HomePendingItem;->setFromDND(Z)Z

    .line 200
    move-object v14, v8

    .line 201
    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 206
    :sswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher2/DragState;->findActivityForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v13

    .line 207
    .local v13, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v3, 0x0

    .line 209
    .local v3, "appItem":Lcom/android/launcher2/AppItem;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 210
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/launcher2/DragState;->createApp(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/AppItem;

    move-result-object v3

    .line 211
    goto :goto_2

    .line 213
    .end local v11    # "info":Landroid/content/pm/ResolveInfo;
    :cond_2
    if-eqz v3, :cond_0

    if-eqz v6, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 214
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/android/launcher2/AppItem;->setFromDND(Z)Z

    .line 215
    move-object v14, v3

    .line 216
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 237
    .end local v3    # "appItem":Lcom/android/launcher2/AppItem;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v15    # "shadow":Lcom/android/launcher2/ShadowBuilder;
    .restart local v16    # "shadowSize":Landroid/graphics/Point;
    .restart local v17    # "shadowTouchPoint":Landroid/graphics/Point;
    :cond_3
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    if-ltz v18, :cond_4

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    if-gez v18, :cond_5

    .line 238
    :cond_4
    const-string v18, "DragState"

    const-string v19, "Drag shadow dimensions must not be negative"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 242
    :cond_5
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v18, v0

    invoke-virtual {v4}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->x:I

    .line 243
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    invoke-virtual {v4}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 245
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    aput v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    aput v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcom/android/launcher2/ShadowBuilder;->setTouchOffset([I)V

    .line 246
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/launcher2/DragState;->setShadow(Lcom/android/launcher2/ShadowBuilder;)V

    .end local v15    # "shadow":Lcom/android/launcher2/ShadowBuilder;
    .end local v16    # "shadowSize":Landroid/graphics/Point;
    .end local v17    # "shadowTouchPoint":Landroid/graphics/Point;
    :cond_6
    move-object/from16 v18, v14

    .line 249
    goto/16 :goto_1

    .line 180
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_1
        0x4 -> :sswitch_1
        0x64 -> :sswitch_0
        0x384 -> :sswitch_1
        0x385 -> :sswitch_1
    .end sparse-switch
.end method

.method private moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z
    .locals 31
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "receiver"    # Lcom/android/launcher2/DragReceivable;
    .param p3, "dragOrigin"    # Lcom/android/launcher2/DragOrigin;
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "spanX"    # I
    .param p7, "spanY"    # I
    .param p8, "screen"    # I

    .prologue
    .line 379
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    .line 380
    invoke-interface/range {p2 .. p2}, Lcom/android/launcher2/DragReceivable;->getContainerType()J

    move-result-wide v4

    .line 382
    .local v4, "container":J
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 386
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/launcher2/BaseItem;->setFromDND(Z)Z

    move-result v24

    .line 389
    .local v24, "fromDND":Z
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeShortcutItem;

    if-eqz v3, :cond_6

    if-eqz v24, :cond_6

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 391
    .local v2, "homeView":Lcom/android/launcher2/HomeView;
    sget-object v3, Lcom/android/launcher2/DragState$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_0

    .line 495
    .end local v2    # "homeView":Lcom/android/launcher2/HomeView;
    :cond_0
    :goto_0
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_1

    if-eqz p3, :cond_1

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    .line 496
    :cond_1
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_2

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    move/from16 v0, p4

    if-ne v0, v3, :cond_2

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget v3, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    move/from16 v0, p5

    if-ne v0, v3, :cond_2

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeWidgetItem;

    if-nez v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/DragState;->getFolderParent()Lcom/android/launcher2/Folder;

    move-result-object v3

    if-eqz v3, :cond_3

    :cond_2
    move-object/from16 v13, p2

    move-object/from16 v14, p1

    move/from16 v15, p4

    move/from16 v16, p5

    move/from16 v17, p6

    move/from16 v18, p7

    move/from16 v19, p8

    move-wide/from16 v20, v4

    .line 499
    invoke-interface/range {v13 .. v21}, Lcom/android/launcher2/DragReceivable;->setItemLocation(Lcom/android/launcher2/BaseItem;IIIIIJ)V

    .line 501
    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_5

    .line 503
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragReceivable;->addItem(Lcom/android/launcher2/BaseItem;)Z

    .line 506
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v6, :cond_4

    move-object/from16 v3, p1

    .line 507
    check-cast v3, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v0, v3, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    move-object/from16 v29, v0

    .line 508
    .local v29, "view":Lcom/android/launcher2/SurfaceWidgetView;
    if-eqz v29, :cond_4

    .line 509
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/android/launcher2/SurfaceWidgetView;->setVisibility(I)V

    .line 510
    invoke-virtual/range {v29 .. v29}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    .line 511
    .local v25, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v25

    instance-of v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v3, :cond_4

    move-object/from16 v22, v25

    .line 512
    check-cast v22, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 513
    .local v22, "clp":Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, v22

    iget v3, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move-object/from16 v0, v22

    iget v6, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v6}, Lcom/android/launcher2/SurfaceWidgetView;->repositionSurfaceWidget(II)V

    .line 520
    .end local v22    # "clp":Lcom/android/launcher2/CellLayout$LayoutParams;
    .end local v25    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v29    # "view":Lcom/android/launcher2/SurfaceWidgetView;
    :cond_4
    if-eqz p3, :cond_5

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v3, :cond_5

    .line 521
    check-cast p2, Lcom/android/launcher2/DragOrigin;

    .end local p2    # "receiver":Lcom/android/launcher2/DragReceivable;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 524
    :cond_5
    const/4 v3, 0x1

    :goto_1
    return v3

    .line 393
    .restart local v2    # "homeView":Lcom/android/launcher2/HomeView;
    .restart local p2    # "receiver":Lcom/android/launcher2/DragReceivable;
    :pswitch_0
    if-eqz v2, :cond_0

    move-object/from16 v3, p1

    .line 394
    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    move/from16 v6, p8

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher2/HomeView;->completeAddShortcut(Lcom/android/launcher2/HomeShortcutItem;JIII)V

    goto/16 :goto_0

    .line 399
    .end local v2    # "homeView":Lcom/android/launcher2/HomeView;
    :cond_6
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomePendingItem;

    if-eqz v3, :cond_7

    .line 401
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 402
    .restart local v2    # "homeView":Lcom/android/launcher2/HomeView;
    sget-object v3, Lcom/android/launcher2/DragState$6;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v6

    aget v3, v3, v6

    packed-switch v3, :pswitch_data_1

    .line 427
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown item type: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    move-object/from16 v7, p1

    .line 404
    check-cast v7, Lcom/android/launcher2/HomePendingWidget;

    .line 405
    .local v7, "homeWidget":Lcom/android/launcher2/HomePendingWidget;
    const/4 v13, 0x0

    move-object/from16 v6, p0

    move-wide v8, v4

    move/from16 v10, p8

    move/from16 v11, p4

    move/from16 v12, p5

    invoke-direct/range {v6 .. v13}, Lcom/android/launcher2/DragState;->fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 406
    invoke-virtual {v2, v7}, Lcom/android/launcher2/HomeView;->addAppWidgetFromDrop(Lcom/android/launcher2/HomePendingWidget;)V

    .line 431
    .end local v7    # "homeWidget":Lcom/android/launcher2/HomePendingWidget;
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    :pswitch_2
    move-object/from16 v3, p1

    .line 410
    check-cast v3, Lcom/android/launcher2/HomePendingItem;

    iget-object v9, v3, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    const/4 v3, 0x2

    new-array v13, v3, [I

    const/4 v3, 0x0

    aput p4, v13, v3

    const/4 v3, 0x1

    aput p5, v13, v3

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-boolean v15, v0, Lcom/android/launcher2/BaseItem;->mSecretItem:Z

    move-object v8, v2

    move-wide v10, v4

    move/from16 v12, p8

    invoke-virtual/range {v8 .. v15}, Lcom/android/launcher2/HomeView;->processShortcutFromDrop(Landroid/content/ComponentName;JI[I[IZ)V

    goto :goto_2

    :pswitch_3
    move-object/from16 v9, p1

    .line 416
    check-cast v9, Lcom/android/launcher2/HomePendingSamsungWidget;

    .line 417
    .local v9, "samsungWidget":Lcom/android/launcher2/HomePendingSamsungWidget;
    const/4 v15, 0x1

    move-object/from16 v8, p0

    move-wide v10, v4

    move/from16 v12, p8

    move/from16 v13, p4

    move/from16 v14, p5

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher2/DragState;->fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 418
    invoke-virtual {v2, v9}, Lcom/android/launcher2/HomeView;->addSamsungWidgetFromDrop(Lcom/android/launcher2/HomePendingSamsungWidget;)Z

    goto :goto_2

    .end local v9    # "samsungWidget":Lcom/android/launcher2/HomePendingSamsungWidget;
    :pswitch_4
    move-object/from16 v11, p1

    .line 422
    check-cast v11, Lcom/android/launcher2/HomePendingSurfaceWidget;

    .line 423
    .local v11, "surfWidget":Lcom/android/launcher2/HomePendingSurfaceWidget;
    const/16 v17, 0x0

    move-object/from16 v10, p0

    move-wide v12, v4

    move/from16 v14, p8

    move/from16 v15, p4

    move/from16 v16, p5

    invoke-direct/range {v10 .. v17}, Lcom/android/launcher2/DragState;->fillHomeItemFields(Lcom/android/launcher2/HomeItem;JIIIZ)V

    .line 424
    invoke-virtual {v2, v11}, Lcom/android/launcher2/HomeView;->addSurfaceWidgetFromDrop(Lcom/android/launcher2/HomePendingSurfaceWidget;)Z

    goto :goto_2

    .line 432
    .end local v2    # "homeView":Lcom/android/launcher2/HomeView;
    .end local v11    # "surfWidget":Lcom/android/launcher2/HomePendingSurfaceWidget;
    :cond_7
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/AppItem;

    if-eqz v3, :cond_b

    const-wide/16 v12, -0x64

    cmp-long v3, v4, v12

    if-eqz v3, :cond_8

    const-wide/16 v12, -0x65

    cmp-long v3, v4, v12

    if-eqz v3, :cond_8

    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/FolderIconView;

    if-eqz v3, :cond_b

    move-object/from16 v3, p2

    check-cast v3, Lcom/android/launcher2/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher2/FolderIconView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/BaseItem;

    iget-object v3, v3, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v6, :cond_b

    .line 437
    :cond_8
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v3, :cond_9

    .line 438
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v13, p1

    check-cast v13, Lcom/android/launcher2/AppFolderItem;

    move-wide v14, v4

    move/from16 v16, p8

    move/from16 v17, p4

    move/from16 v18, p5

    invoke-static/range {v12 .. v18}, Lcom/android/launcher2/HomeFolderItem;->createFromAppFolderItem(Landroid/content/Context;Lcom/android/launcher2/AppFolderItem;JIII)Lcom/android/launcher2/HomeFolderItem;

    move-result-object p1

    goto/16 :goto_0

    .line 442
    :cond_9
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v3

    if-eqz v3, :cond_a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v6, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v3, v6, :cond_a

    .line 443
    new-instance v28, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct/range {v28 .. v28}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 444
    .local v28, "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher2/BaseItem;->mIconResId:I

    move-object/from16 v0, v28

    iput v3, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v6

    move-object/from16 v3, p1

    check-cast v3, Lcom/android/launcher2/AppItem;

    iget-object v3, v3, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    move-object/from16 v0, v28

    invoke-virtual {v6, v3, v0}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    .line 448
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object p1

    .restart local p1    # "item":Lcom/android/launcher2/BaseItem;
    move-object/from16 v3, p1

    .line 449
    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    move-object/from16 v0, v28

    iget-object v6, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 454
    .end local v28    # "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :goto_3
    move-object/from16 v0, p1

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/BaseItem;->setPosition(I)V

    .line 456
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f1000cb

    invoke-virtual {v3, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    .line 452
    :cond_a
    check-cast p1, Lcom/android/launcher2/AppItem;

    .end local p1    # "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object p1

    .restart local p1    # "item":Lcom/android/launcher2/BaseItem;
    goto :goto_3

    .line 458
    :cond_b
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeItem;

    if-eqz v3, :cond_0

    .line 461
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/android/launcher2/HomeFolderItem;

    if-eqz v3, :cond_c

    const-wide/16 v12, 0x0

    cmp-long v3, v4, v12

    if-lez v3, :cond_c

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    const v8, 0x7f1000a7

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v3, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 467
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 470
    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    add-int/lit8 v27, v3, 0x1

    .line 471
    .local v27, "previousPage":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v2, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 472
    .restart local v2    # "homeView":Lcom/android/launcher2/HomeView;
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getPageCount()I

    move-result v26

    .line 473
    .local v26, "maxPages":I
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getCurrentPage()I

    move-result v3

    add-int/lit8 v23, v3, 0x1

    .line 474
    .local v23, "currentPage":I
    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v30

    .line 475
    .local v30, "ws":Lcom/android/launcher2/Workspace;
    if-eqz v30, :cond_d

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher2/Workspace;->getCreatedPageForDrag()Lcom/android/launcher2/CellLayout;

    move-result-object v3

    if-eqz v3, :cond_d

    add-int/lit8 v3, v26, -0x1

    move/from16 v0, p8

    if-ge v0, v3, :cond_d

    .line 476
    add-int/lit8 v26, v26, -0x1

    .line 479
    :cond_d
    move-object/from16 v0, p2

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_f

    .line 480
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eqz v3, :cond_e

    .line 481
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f1000cf

    invoke-virtual {v3, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    .line 483
    :cond_e
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f1000cd

    invoke-virtual {v3, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    .line 485
    :cond_f
    move-object/from16 v0, p3

    instance-of v3, v0, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v3, :cond_10

    .line 486
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f1000ce

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v3, v6, v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    goto/16 :goto_0

    .line 488
    :cond_10
    move/from16 v0, v23

    move/from16 v1, v27

    if-eq v0, v1, :cond_11

    .line 489
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f1000d0

    move/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v3, v6, v0, v1}, Lcom/sec/dtl/launcher/Talk;->say(III)V

    goto/16 :goto_0

    .line 491
    :cond_11
    sget-object v3, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v6, 0x7f1000ce

    invoke-virtual {v3, v6}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    .line 391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 402
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private swapItems(Landroid/view/View;Landroid/view/View;)V
    .locals 17
    .param p1, "v1"    # Landroid/view/View;
    .param p2, "v2"    # Landroid/view/View;

    .prologue
    .line 791
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/HomeItem;

    .line 792
    .local v16, "i1":Lcom/android/launcher2/HomeItem;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    .line 795
    .local v3, "i2":Lcom/android/launcher2/HomeItem;
    iget v15, v3, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 796
    .local v15, "cellX":I
    iget v11, v3, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 797
    .local v11, "cellY":I
    iget v14, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 798
    .local v14, "screen":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v4

    .line 799
    .local v4, "p1":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragState;->getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .line 801
    .local v5, "p2":Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v16

    iget v6, v0, Lcom/android/launcher2/HomeItem;->cellX:I

    move-object/from16 v0, v16

    iget v7, v0, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v8, v3, Lcom/android/launcher2/HomeItem;->spanX:I

    iget v9, v3, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    .line 802
    move-object/from16 v0, v16

    iget v12, v0, Lcom/android/launcher2/HomeItem;->spanX:I

    move-object/from16 v0, v16

    iget v13, v0, Lcom/android/launcher2/HomeItem;->spanY:I

    move-object/from16 v6, p0

    move-object/from16 v7, v16

    move-object v8, v5

    move-object v9, v4

    move v10, v15

    invoke-direct/range {v6 .. v14}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    .line 806
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    .line 808
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/DragState;->mAnimateVied:Landroid/view/View;

    .line 809
    if-ne v4, v5, :cond_1

    .line 811
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v2

    float-to-double v6, v2

    const-wide v8, 0x3feeb851eb851eb8L    # 0.96

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_0

    .line 812
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 814
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v6, 0xfa

    move-object/from16 v0, p2

    invoke-static {v0, v2, v6}, Lcom/android/launcher2/HotseatSwapAnimator;->fadeAnimate(Landroid/view/View;FI)V

    .line 817
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    .line 819
    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    iget-wide v8, v3, Lcom/android/launcher2/HomeItem;->container:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v2, v6, v8

    if-nez v2, :cond_2

    .line 824
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    .line 826
    :cond_2
    return-void
.end method

.method private updateMinSpan([II[I)V
    .locals 3
    .param p1, "outSpans"    # [I
    .param p2, "resizeMode"    # I
    .param p3, "inSpans"    # [I

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 159
    and-int/lit8 v0, p2, 0x1

    if-ne v0, v2, :cond_0

    .line 160
    aget v0, p3, v1

    aput v0, p1, v1

    .line 162
    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 163
    aget v0, p3, v2

    aput v0, p1, v2

    .line 165
    :cond_1
    return-void
.end method


# virtual methods
.method public cleanupSwap()V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 772
    :goto_0
    return-void

    .line 770
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragState;->swapItems(Landroid/view/View;Landroid/view/View;)V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    goto :goto_0
.end method

.method public createHomeFolderFromDragItem()Z
    .locals 15

    .prologue
    .line 835
    const/4 v10, 0x0

    .line 836
    .local v10, "folderCreated":Z
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getItem()Lcom/android/launcher2/BaseItem;

    move-result-object v11

    .line 837
    .local v11, "item":Lcom/android/launcher2/BaseItem;
    if-eqz v11, :cond_2

    .line 838
    const/4 v6, 0x0

    .line 839
    .local v6, "removeItem":Z
    const/4 v7, 0x0

    .line 840
    .local v7, "findNewPosition":Z
    const/4 v1, 0x0

    .line 841
    .local v1, "folderItem":Lcom/android/launcher2/HomeShortcutItem;
    const-wide/16 v4, -0x64

    .line 842
    .local v4, "destinationContainerId":J
    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_4

    .line 844
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isMenuIconSizeChanged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 845
    new-instance v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v14}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    .line 846
    .local v14, "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    iget v0, v11, Lcom/android/launcher2/BaseItem;->mIconResId:I

    iput v0, v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    .line 847
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    move-object v0, v11

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-object v0, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v0, v14}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;)V

    .line 849
    check-cast v11, Lcom/android/launcher2/AppItem;

    .end local v11    # "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    .line 850
    iget-object v0, v14, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/HomeShortcutItem;->setIcon(Landroid/graphics/Bitmap;)V

    .line 880
    .end local v14    # "titleAndIcon":Lcom/android/launcher2/PkgResCache$TitleIconInfo;
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 881
    const/4 v10, 0x0

    .line 882
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    .line 883
    sget-boolean v0, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v0, :cond_1

    const-string v0, "create_folder"

    sget-object v2, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 885
    const/4 v12, 0x0

    .line 886
    .local v12, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v12, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v12    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-direct {v12, v0}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    .line 887
    .restart local v12    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v12, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v12    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v12}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog_step3()V

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getContainerType()J

    move-result-wide v2

    iget v8, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    iget v9, p0, Lcom/android/launcher2/DragState;->mOriginalCell:I

    invoke-static/range {v0 .. v9}, Lcom/android/launcher2/CreateFolderDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher2/BaseItem;JJZZII)V

    .line 894
    .end local v1    # "folderItem":Lcom/android/launcher2/HomeShortcutItem;
    .end local v4    # "destinationContainerId":J
    .end local v6    # "removeItem":Z
    .end local v7    # "findNewPosition":Z
    :cond_2
    return v10

    .line 853
    .restart local v1    # "folderItem":Lcom/android/launcher2/HomeShortcutItem;
    .restart local v4    # "destinationContainerId":J
    .restart local v6    # "removeItem":Z
    .restart local v7    # "findNewPosition":Z
    .restart local v11    # "item":Lcom/android/launcher2/BaseItem;
    :cond_3
    check-cast v11, Lcom/android/launcher2/AppItem;

    .end local v11    # "item":Lcom/android/launcher2/BaseItem;
    invoke-virtual {v11}, Lcom/android/launcher2/AppItem;->makeHomeItem()Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v1

    goto :goto_0

    .line 855
    .restart local v11    # "item":Lcom/android/launcher2/BaseItem;
    :cond_4
    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_5

    instance-of v0, v11, Lcom/android/launcher2/HomePendingItem;

    if-eqz v0, :cond_5

    .line 857
    check-cast v11, Lcom/android/launcher2/HomePendingItem;

    .end local v11    # "item":Lcom/android/launcher2/BaseItem;
    iget-object v13, v11, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    .line 858
    .local v13, "name":Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher2/Launcher;

    iget-object v0, v0, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v0, v13}, Lcom/android/launcher2/HomeView;->processItemDropToNewFolder(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 859
    .end local v13    # "name":Landroid/content/ComponentName;
    .restart local v11    # "item":Lcom/android/launcher2/BaseItem;
    :cond_5
    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v2, :cond_6

    iget-object v0, v11, Lcom/android/launcher2/BaseItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    if-ne v0, v2, :cond_0

    instance-of v0, v11, Lcom/android/launcher2/HomePendingItem;

    if-nez v0, :cond_0

    :cond_6
    move-object v1, v11

    .line 861
    check-cast v1, Lcom/android/launcher2/HomeShortcutItem;

    .line 862
    iget-wide v2, v1, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v0, v2, v8

    if-eqz v0, :cond_7

    iget-wide v2, v1, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v0, v2, v8

    if-nez v0, :cond_8

    .line 867
    :cond_7
    const/4 v6, 0x1

    .line 868
    iget-wide v4, v1, Lcom/android/launcher2/HomeShortcutItem;->container:J

    goto :goto_0

    .line 873
    :cond_8
    const/4 v6, 0x1

    .line 874
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public foundValidDrop()Z
    .locals 1

    .prologue
    .line 1007
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    return v0
.end method

.method public getAvailableWidget(Landroid/content/ComponentName;I)Lcom/android/launcher2/HomePendingItem;
    .locals 8
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "itemType"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    const/4 v0, 0x0

    .line 255
    .local v0, "aw":Lcom/android/launcher2/AvailableWidget;
    const/4 v1, 0x0

    .line 256
    .local v1, "hpi":Lcom/android/launcher2/HomePendingItem;
    const/4 v5, 0x2

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 258
    .local v3, "spanXY":[I
    sparse-switch p2, :sswitch_data_0

    .line 299
    :cond_0
    :goto_0
    return-object v1

    .line 260
    :sswitch_0
    new-instance v2, Lcom/android/launcher2/AvailableAppWidgetListProvider;

    .end local v2    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/launcher2/AvailableAppWidgetListProvider;-><init>(Landroid/content/Context;)V

    .line 261
    .restart local v2    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    if-eqz v2, :cond_0

    .line 262
    invoke-interface {v2, p1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    :goto_1
    goto :goto_0

    :cond_1
    move-object v1, v4

    goto :goto_1

    .line 267
    :sswitch_1
    new-instance v2, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    .end local v2    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;-><init>(Landroid/content/Context;)V

    .line 268
    .restart local v2    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    if-eqz v2, :cond_0

    .line 269
    invoke-interface {v2, p1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    :goto_2
    goto :goto_0

    :cond_2
    move-object v1, v4

    goto :goto_2

    .line 274
    :sswitch_2
    new-instance v2, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    .end local v2    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;-><init>(Landroid/content/Context;)V

    .line 275
    .restart local v2    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    if-eqz v2, :cond_0

    .line 276
    invoke-interface {v2, p1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    .line 279
    :goto_3
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 280
    invoke-interface {v0, v3}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 281
    aget v4, v3, v6

    iput v4, v1, Lcom/android/launcher2/HomePendingItem;->spanX:I

    aget v4, v3, v7

    iput v4, v1, Lcom/android/launcher2/HomePendingItem;->spanY:I

    goto :goto_0

    :cond_3
    move-object v1, v4

    .line 277
    goto :goto_3

    .line 286
    :sswitch_3
    new-instance v2, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    .end local v2    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    iget-object v5, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    invoke-direct {v2, v5}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;-><init>(Landroid/content/Context;)V

    .line 287
    .restart local v2    # "provider":Lcom/android/launcher2/AvailableWidgetListProvider;
    if-eqz v2, :cond_0

    .line 288
    invoke-interface {v2, p1}, Lcom/android/launcher2/AvailableWidgetListProvider;->getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/android/launcher2/AvailableWidget;->createHomePendingItem()Lcom/android/launcher2/HomePendingItem;

    move-result-object v1

    .line 291
    :goto_4
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 292
    invoke-interface {v0, v3}, Lcom/android/launcher2/AvailableWidget;->getCellSpan([I)V

    .line 293
    aget v4, v3, v6

    iput v4, v1, Lcom/android/launcher2/HomePendingItem;->spanX:I

    aget v4, v3, v7

    iput v4, v1, Lcom/android/launcher2/HomePendingItem;->spanY:I

    goto :goto_0

    :cond_4
    move-object v1, v4

    .line 289
    goto :goto_4

    .line 256
    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data

    .line 258
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
        0x384 -> :sswitch_2
        0x385 -> :sswitch_3
    .end sparse-switch
.end method

.method public getContainerType()J
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getContainerType()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method getFolderParent()Lcom/android/launcher2/Folder;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1033
    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v3, v3, Landroid/view/View;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 1041
    :goto_0
    return-object v0

    .line 1034
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    .line 1035
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1036
    .local v0, "p":Landroid/view/ViewParent;
    :goto_1
    if-eqz v0, :cond_2

    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1037
    instance-of v3, v0, Lcom/android/launcher2/Folder;

    if-eqz v3, :cond_1

    .line 1038
    check-cast v0, Lcom/android/launcher2/Folder;

    goto :goto_0

    .line 1039
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 1041
    goto :goto_0
.end method

.method public getItem()Lcom/android/launcher2/BaseItem;
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    return-object v0
.end method

.method getParentCellLayout(Landroid/view/View;)Lcom/android/launcher2/CellLayout;
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 905
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 906
    .local v1, "parent":Landroid/view/ViewGroup;
    instance-of v3, v1, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v3, :cond_0

    .line 907
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    .line 913
    :goto_0
    return-object v3

    .line 911
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/BaseItem;

    .line 912
    .local v0, "item":Lcom/android/launcher2/BaseItem;
    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher2/Launcher;

    iget-object v3, v3, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v3}, Lcom/android/launcher2/HomeView;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    .line 913
    .local v2, "ws":Lcom/android/launcher2/Workspace;
    iget v3, v0, Lcom/android/launcher2/BaseItem;->mScreen:I

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/CellLayout;

    goto :goto_0
.end method

.method public getReceiver()Lcom/android/launcher2/DragReceivable;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    return-object v0
.end method

.method public getShadow()Lcom/android/launcher2/ShadowBuilder;
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    return-object v0
.end method

.method public getSupportWidgetSizes()Lcom/android/launcher2/WidgetSizes;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mSupportWidgetSizes:Lcom/android/launcher2/WidgetSizes;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->getViewForItem(Lcom/android/launcher2/BaseItem;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    .line 920
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mCacheDragView:Landroid/view/View;

    return-object v0
.end method

.method public hasDeleted()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    return v0
.end method

.method public hasEnded()Z
    .locals 1

    .prologue
    .line 1056
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    return v0
.end method

.method public initiateSwap(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 775
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v0

    .line 776
    .local v0, "dragView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v1, :cond_1

    .line 787
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eq v1, p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 781
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->cleanupSwap()V

    .line 783
    :cond_2
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    .line 784
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/DragState;->swapItems(Landroid/view/View;Landroid/view/View;)V

    .line 785
    iput-boolean v2, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 786
    iput-boolean v2, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    goto :goto_0
.end method

.method public isMoveInsideOpenFolder(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;)Z
    .locals 1
    .param p1, "item"    # Lcom/android/launcher2/BaseItem;
    .param p2, "receiver"    # Lcom/android/launcher2/DragReceivable;

    .prologue
    .line 1052
    invoke-static {p1}, Lcom/android/launcher2/BaseItem;->isItemInFolder(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logDebugInfo()V
    .locals 4

    .prologue
    .line 983
    sget-boolean v1, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    .line 984
    const-string v0, "==============================================================================="

    .line 986
    .local v0, "sep":Ljava/lang/String;
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const-string v1, "DragState"

    const-string v2, "DragState member variables:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDragOrigin:     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 991
    const-string v2, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    ...  parent: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_0
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFoundValidDrop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReceiver:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mReceiver:Lcom/android/launcher2/DragReceivable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasEnded:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSwapView:       "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mSwapView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEndRunnable:    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    const-string v1, "DragState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBlockDeleteFromSource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/DragState;->mBlockDeleteFromSource:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const-string v1, "DragState"

    const-string v2, "details:"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const-string v1, "DragState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v0    # "sep":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;IIIII)Z
    .locals 8
    .param p1, "receiver"    # Lcom/android/launcher2/DragReceivable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .param p6, "screen"    # I

    .prologue
    .line 352
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z

    move-result v0

    return v0
.end method

.method public moveItemTo(Lcom/android/launcher2/DragReceivable;IIIIIZ)Z
    .locals 9
    .param p1, "receiver"    # Lcom/android/launcher2/DragReceivable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .param p6, "screen"    # I
    .param p7, "animateDrop"    # Z

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v0, :cond_3

    .line 330
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    .line 331
    sget-boolean v0, Lcom/android/launcher2/DragState;->DEBUGGABLE:Z

    if-eqz v0, :cond_2

    .line 332
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reciever:        "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-eqz p1, :cond_1

    .line 334
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    ...  parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/android/launcher2/DragReceivable;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   y:    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-string v0, "DragState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen:          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to move item after the drop was handled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 342
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v0}, Lcom/android/launcher2/DragReceivable;->show(Lcom/android/launcher2/BaseItem;)V

    .line 343
    if-eqz p7, :cond_4

    .line 344
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    .line 346
    :cond_4
    const/4 v0, 0x1

    .line 348
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveItemToWithoutAnimation(Lcom/android/launcher2/DragReceivable;IIIII)Z
    .locals 10
    .param p1, "receiver"    # Lcom/android/launcher2/DragReceivable;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I
    .param p6, "screen"    # I

    .prologue
    .line 359
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DragState;->moveItemTo(Lcom/android/launcher2/BaseItem;Lcom/android/launcher2/DragReceivable;Lcom/android/launcher2/DragOrigin;IIIII)Z

    move-result v9

    .local v9, "rc":Z
    if-eqz v9, :cond_0

    .line 360
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {p1, v0}, Lcom/android/launcher2/DragReceivable;->show(Lcom/android/launcher2/BaseItem;)V

    .line 361
    :cond_0
    return v9
.end method

.method public onDelete()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 557
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_0

    .line 559
    const-string v2, "create_folder"

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 615
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v2, :cond_1

    .line 563
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    .line 564
    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-nez v2, :cond_2

    .line 565
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v2}, Lcom/android/launcher2/ShadowBuilder;->clearSurface()V

    .line 567
    :cond_2
    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 568
    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 569
    iput-boolean v5, p0, Lcom/android/launcher2/DragState;->mDeleted:Z

    .line 574
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/HomeWidgetItem;

    if-eqz v2, :cond_6

    .line 575
    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v1, Lcom/android/launcher2/HomeWidgetItem;

    .line 576
    .local v1, "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v2, v2, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    invoke-virtual {v2}, Lcom/android/launcher2/HomeView;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v0

    .line 577
    .local v0, "appWidgetHost":Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v0, :cond_3

    .line 578
    new-instance v2, Lcom/android/launcher2/DragState$1;

    const-string v3, "deleteAppWidgetId"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/launcher2/DragState$1;-><init>(Lcom/android/launcher2/DragState;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual {v2}, Lcom/android/launcher2/DragState$1;->start()V

    .line 598
    .end local v0    # "appWidgetHost":Lcom/android/launcher2/LauncherAppWidgetHost;
    .end local v1    # "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/HomeItem;

    if-eqz v2, :cond_4

    .line 599
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem;->unbind()V

    .line 601
    :cond_4
    sget-boolean v2, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v2, :cond_5

    .line 602
    const-string v2, "remove_items"

    sget-object v3, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 603
    new-instance v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v2}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    .line 604
    sput-boolean v5, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 605
    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    const v3, 0x7f1000c4

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 606
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher2/DragState$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/DragState$2;-><init>(Lcom/android/launcher2/DragState;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 614
    :cond_5
    sget-object v2, Lcom/sec/dtl/launcher/Talk;->INSTANCE:Lcom/sec/dtl/launcher/Talk;

    const v3, 0x7f1000cc

    invoke-virtual {v2, v3}, Lcom/sec/dtl/launcher/Talk;->say(I)V

    goto/16 :goto_0

    .line 585
    :cond_6
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/SamsungWidgetItem;

    if-eqz v2, :cond_7

    .line 586
    sget-object v4, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iget-object v2, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher2/Launcher;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v3, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher2/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/android/launcher2/SamsungWidgetItem;)V

    goto :goto_1

    .line 588
    :cond_7
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    instance-of v2, v2, Lcom/android/launcher2/SurfaceWidgetItem;

    if-eqz v2, :cond_3

    .line 591
    const-string v2, "SurfaceWidgetFlow"

    const-string v3, "destroying surface widget with delete bucket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    check-cast v2, Lcom/android/launcher2/SurfaceWidgetItem;

    iget-object v3, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    sget-object v4, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    goto :goto_1
.end method

.method public onDragStartedSuccessfully()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v1, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v0, v1}, Lcom/android/launcher2/DragOrigin;->hide(Lcom/android/launcher2/BaseItem;)V

    .line 305
    :cond_0
    return-void
.end method

.method public onDrop()V
    .locals 2

    .prologue
    .line 531
    iget-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->logDebugInfo()V

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempted to call DrageState.onDrop more than once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 536
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    .line 537
    return-void
.end method

.method public onDropSetEndRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 544
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->onDrop()V

    .line 545
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    .line 546
    return-void
.end method

.method public onEnd()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x1f4

    const/4 v8, 0x1

    .line 622
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    iget-object v1, v6, Lcom/android/launcher2/Launcher;->mHomeView:Lcom/android/launcher2/HomeView;

    .line 623
    .local v1, "homeView":Lcom/android/launcher2/HomeView;
    iget-boolean v6, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    if-eqz v6, :cond_1

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 625
    :cond_1
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    if-eqz v6, :cond_2

    .line 626
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {v6}, Lcom/android/launcher2/ShadowBuilder;->clearSurface()V

    .line 628
    :cond_2
    iput-boolean v8, p0, Lcom/android/launcher2/DragState;->mHasEnded:Z

    .line 629
    invoke-virtual {p0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v5

    .line 630
    .local v5, "v":Landroid/view/View;
    iget-boolean v6, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 631
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 632
    .local v0, "handler":Landroid/os/Handler;
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 633
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/DragState;->mEndRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 636
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_3
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-nez v6, :cond_5

    .line 637
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v6, :cond_4

    .line 639
    const-string v6, "create_folder"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 640
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-static {v6}, Lcom/android/launcher2/guide/GuideFragment;->showWrongActionDialog(Landroid/app/Activity;)V

    .line 644
    :cond_4
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_0

    const-string v6, "create_folder"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 647
    :cond_5
    iget-boolean v6, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-eqz v6, :cond_c

    .line 648
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->deleteFromSource()V

    .line 649
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_6

    .line 650
    const-string v6, "move_app"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 651
    sput-boolean v8, Lcom/android/launcher2/guide/GuideFragment;->isGuideCompleted:Z

    .line 652
    const/4 v3, 0x0

    .line 653
    .local v3, "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 654
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog()V

    .line 655
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    const v7, 0x7f1000c3

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 658
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 659
    .local v4, "mHandler":Landroid/os/Handler;
    new-instance v6, Lcom/android/launcher2/DragState$3;

    invoke-direct {v6, p0, v1}, Lcom/android/launcher2/DragState$3;-><init>(Lcom/android/launcher2/DragState;Lcom/android/launcher2/HomeView;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 714
    .end local v4    # "mHandler":Landroid/os/Handler;
    :cond_6
    :goto_1
    sget-boolean v6, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/android/launcher2/DragState;->mFoundValidDrop:Z

    if-nez v6, :cond_0

    .line 715
    const-string v6, "remove_items"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 716
    const/4 v3, 0x0

    .line 717
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    .line 718
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    .line 720
    :cond_7
    const-string v6, "create_folder"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 721
    const/4 v3, 0x0

    .line 722
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    .line 723
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog()V

    .line 725
    :cond_8
    const-string v6, "move_app"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 726
    const/4 v3, 0x0

    .line 727
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/MoveAppsGuider;-><init>(Landroid/app/Activity;)V

    .line 728
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/MoveAppsGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/MoveAppsGuider;->dismissHelpDialog()V

    .line 731
    :cond_9
    sget-boolean v6, Lcom/android/launcher2/HomeEditBar;->isfolderCreated:Z

    if-nez v6, :cond_0

    .line 732
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 733
    .restart local v4    # "mHandler":Landroid/os/Handler;
    new-instance v6, Lcom/android/launcher2/DragState$5;

    invoke-direct {v6, p0}, Lcom/android/launcher2/DragState$5;-><init>(Lcom/android/launcher2/DragState;)V

    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 669
    .end local v4    # "mHandler":Landroid/os/Handler;
    :cond_a
    const-string v6, "create_folder"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 670
    const/4 v3, 0x0

    .line 671
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/CreateFolderGuider;-><init>(Landroid/app/Activity;)V

    .line 672
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/CreateFolderGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/CreateFolderGuider;->dismissHelpDialog()V

    .line 673
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-static {v6}, Lcom/android/launcher2/guide/GuideFragment;->showWrongActionDialog(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 674
    :cond_b
    const-string v6, "remove_items"

    sget-object v7, Lcom/android/launcher2/guide/GuideFragment;->GMode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 675
    const/4 v3, 0x0

    .line 676
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    new-instance v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    iget-object v6, p0, Lcom/android/launcher2/DragState;->ctx:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher2/Launcher;

    invoke-direct {v3, v6}, Lcom/android/launcher2/guide/RemoveItemsGuider;-><init>(Landroid/app/Activity;)V

    .line 677
    .restart local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    check-cast v3, Lcom/android/launcher2/guide/RemoveItemsGuider;

    .end local v3    # "mGuider":Lcom/android/launcher2/guide/GuiderLifecycleListener;
    invoke-virtual {v3}, Lcom/android/launcher2/guide/RemoveItemsGuider;->dismissHelpDialog()V

    .line 678
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 679
    .restart local v4    # "mHandler":Landroid/os/Handler;
    new-instance v6, Lcom/android/launcher2/DragState$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/DragState$4;-><init>(Lcom/android/launcher2/DragState;)V

    invoke-virtual {v4, v6, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 690
    .end local v4    # "mHandler":Landroid/os/Handler;
    :cond_c
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v6, :cond_d

    .line 691
    iget-object v2, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    check-cast v2, Lcom/android/launcher2/CellLayoutNoGap;

    .line 692
    .local v2, "l":Lcom/android/launcher2/CellLayoutNoGap;
    iget-object v6, v2, Lcom/android/launcher2/CellLayoutNoGap;->mFolder:Lcom/android/launcher2/Folder;

    if-eqz v6, :cond_d

    iget v6, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    if-ltz v6, :cond_d

    .line 693
    iget v6, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    invoke-virtual {v2, v6}, Lcom/android/launcher2/CellLayoutNoGap;->realTimeReorder(I)V

    .line 694
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    iget v7, p0, Lcom/android/launcher2/DragState;->mOriginalScreen:I

    const/4 v8, -0x1

    invoke-virtual {v2, v6, v7, v8}, Lcom/android/launcher2/CellLayoutNoGap;->setItemLocation(Lcom/android/launcher2/BaseItem;II)V

    .line 697
    .end local v2    # "l":Lcom/android/launcher2/CellLayoutNoGap;
    :cond_d
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    if-eqz v6, :cond_e

    .line 698
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v6, v7}, Lcom/android/launcher2/DragOrigin;->onFailedDrop(Lcom/android/launcher2/BaseItem;)V

    .line 699
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    iget-object v7, p0, Lcom/android/launcher2/DragState;->mItem:Lcom/android/launcher2/BaseItem;

    invoke-interface {v6, v7}, Lcom/android/launcher2/DragOrigin;->show(Lcom/android/launcher2/BaseItem;)V

    .line 701
    :cond_e
    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutNoGap;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/launcher2/DragState;->mDragOrigin:Lcom/android/launcher2/DragOrigin;

    instance-of v6, v6, Lcom/android/launcher2/CellLayoutHotseat;

    if-eqz v6, :cond_6

    .line 710
    :cond_f
    invoke-direct {p0}, Lcom/android/launcher2/DragState;->animateDrop()V

    goto/16 :goto_1
.end method

.method public setShadow(Lcom/android/launcher2/ShadowBuilder;)V
    .locals 0
    .param p1, "shadow"    # Lcom/android/launcher2/ShadowBuilder;

    .prologue
    .line 941
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    .line 942
    return-void
.end method

.method public setVisualMode(Lcom/android/launcher2/DragState$VisualMode;)V
    .locals 1
    .param p1, "mode"    # Lcom/android/launcher2/DragState$VisualMode;

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    if-eq p1, v0, :cond_0

    .line 977
    iput-object p1, p0, Lcom/android/launcher2/DragState;->mVisualMode:Lcom/android/launcher2/DragState$VisualMode;

    .line 978
    iget-object v0, p0, Lcom/android/launcher2/DragState;->mShadow:Lcom/android/launcher2/ShadowBuilder;

    invoke-virtual {p1, v0}, Lcom/android/launcher2/DragState$VisualMode;->enter(Lcom/android/launcher2/UpdateableShadowBuilder;)V

    .line 980
    :cond_0
    return-void
.end method
