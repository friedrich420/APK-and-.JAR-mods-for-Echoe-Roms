.class Lcom/android/launcher2/SurfaceWidgetItem;
.super Lcom/android/launcher2/HomeItem;
.source "SurfaceWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field public static final SURFACE_WIDGET_THEMENAME:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET.themename"

.field private static final TAG:Ljava/lang/String; = "SurfaceWidgetItem"


# instance fields
.field defSpans:[I

.field mComponentName:Landroid/content/ComponentName;

.field mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

.field mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

.field mInstance:I

.field private mPadding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

.field mRestartCount:I

.field mRestartView:Landroid/view/View;

.field private mState:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

.field mThemeName:Ljava/lang/String;

.field mWidgetId:J

.field mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

.field resizeSpans:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/SurfaceWidgetItem;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomeItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 46
    sget-object v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mState:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    .line 55
    iput-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 58
    iput-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartView:Landroid/view/View;

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mRestartCount:I

    .line 305
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->resizeSpans:[I

    .line 306
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->defSpans:[I

    .line 66
    return-void

    .line 305
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 306
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private calcSpans()V
    .locals 3

    .prologue
    .line 312
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v1, :cond_0

    .line 314
    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 315
    .local v0, "c":Lcom/android/launcher2/WorkspaceSpanCalculator;
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->resizeSpans:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->resizeSpans:[I

    .line 316
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->defSpans:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->defSpans:[I

    .line 318
    .end local v0    # "c":Lcom/android/launcher2/WorkspaceSpanCalculator;
    :cond_0
    return-void
.end method


# virtual methods
.method public destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .param p3, "isRemovedFromIdle"    # Z

    .prologue
    const/4 v3, 0x0

    .line 236
    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 238
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    iget v2, v2, Lcom/android/launcher2/SurfaceWidgetConnection;->mServiceInstance:I

    invoke-virtual {p2, v1, v2}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->removeWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)V

    .line 240
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v1, p3}, Lcom/android/launcher2/SurfaceWidgetConnection;->onDestroy(Z)Z

    .line 241
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v1, :cond_2

    .line 245
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/SurfaceWidgetView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 247
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 249
    .local v0, "parent":Landroid/view/ViewGroup;
    if-nez v0, :cond_3

    .line 274
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->unbind()V

    .line 277
    :cond_2
    return-void

    .line 253
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_3
    instance-of v1, v0, Lcom/android/launcher2/CellLayoutChildren;

    if-eqz v1, :cond_4

    .line 255
    check-cast v0, Lcom/android/launcher2/CellLayoutChildren;

    .end local v0    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Lcom/android/launcher2/CellLayoutChildren;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    .line 257
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_4
    instance-of v1, v0, Lcom/android/launcher2/DragOrigin;

    if-eqz v1, :cond_5

    .line 259
    check-cast v0, Lcom/android/launcher2/DragOrigin;

    .end local v0    # "parent":Landroid/view/ViewGroup;
    invoke-interface {v0, p0}, Lcom/android/launcher2/DragOrigin;->removeItem(Lcom/android/launcher2/BaseItem;)Z

    goto :goto_0

    .line 261
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_5
    instance-of v1, v0, Lcom/android/launcher2/AnimationLayer;

    if-nez v1, :cond_1

    .line 267
    sget-boolean v1, Lcom/android/launcher2/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v1, :cond_1

    .line 268
    const-string v1, "SurfaceWidgetItem"

    const-string v2, "invalid parent for SurfaceWidget being destroyed?"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getDefSpans()[I
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->defSpans:[I

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 297
    :cond_0
    return-object v0
.end method

.method public getResizeSpans()[I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->resizeSpans:[I

    return-object v0
.end method

.method public getState()Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mState:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    return-object v0
.end method

.method public getThemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mThemeName:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetPadding()Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mPadding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    return-object v0
.end method

.method public isAlive()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mState:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeSurfaceWidget(Landroid/content/Context;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;Lcom/android/launcher2/SurfaceWidgetView;Z)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .param p3, "view"    # Lcom/android/launcher2/SurfaceWidgetView;
    .param p4, "updateWidgetCount"    # Z

    .prologue
    const/4 v7, -0x1

    const/4 v10, 0x0

    .line 97
    sget-object v2, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 98
    .local v2, "packageManager":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    sget-object v5, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v5}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 101
    invoke-virtual {p2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getThemeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v3

    .line 102
    .local v3, "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-nez v3, :cond_2

    .line 103
    const-string v5, "SurfaceWidgetItem"

    const-string v6, "SurfaceWidgetProviderInfo is null. Deleting Widget from database and removing view from parent."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-static {p1, p0}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 106
    if-eqz p3, :cond_1

    .line 107
    invoke-virtual {p3}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 109
    .local v4, "viewParent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 110
    invoke-virtual {v4, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-virtual {p3, v10}, Lcom/android/launcher2/SurfaceWidgetView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 113
    const/4 p3, 0x0

    .line 187
    .end local v4    # "viewParent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 118
    :cond_2
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v5, :cond_5

    .line 119
    invoke-virtual {v2, p2}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->createWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    .line 128
    :cond_3
    :goto_1
    iget v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    if-ne v5, v7, :cond_7

    .line 129
    sget-boolean v5, Lcom/android/launcher2/Launcher;->isHelpAppRunning:Z

    if-eqz v5, :cond_4

    .line 130
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 131
    .local v1, "mHandler":Landroid/os/Handler;
    new-instance v5, Lcom/android/launcher2/SurfaceWidgetItem$1;

    invoke-direct {v5, p0, p1}, Lcom/android/launcher2/SurfaceWidgetItem$1;-><init>(Lcom/android/launcher2/SurfaceWidgetItem;Landroid/content/Context;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 137
    .end local v1    # "mHandler":Landroid/os/Handler;
    :cond_4
    sget-boolean v5, Lcom/android/launcher2/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v5, :cond_1

    .line 138
    const-string v5, "SurfaceWidgetItem"

    const-string v6, "could not create widget instance...do you have onlyOneInstance set and are trying to place a 2nd widget?"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_5
    iget v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    if-ne v5, v7, :cond_6

    .line 122
    invoke-virtual {v2, p2}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->createWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)I

    move-result v5

    iput v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    goto :goto_1

    .line 123
    :cond_6
    if-eqz p4, :cond_3

    .line 124
    iget v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v2, p2, v5}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->updateWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)V

    goto :goto_1

    .line 142
    :cond_7
    sget-boolean v5, Lcom/android/launcher2/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v5, :cond_8

    const-string v5, "SurfaceWidgetItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "makeSurfaceWidget()  item: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  widgetId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_8
    invoke-virtual {p2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 147
    new-instance v5, Lcom/android/launcher2/SurfaceWidgetView;

    invoke-direct {v5, p1}, Lcom/android/launcher2/SurfaceWidgetView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 148
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    iget-object v6, p2, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/SurfaceWidgetView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v5, p0}, Lcom/android/launcher2/SurfaceWidgetView;->setTag(Ljava/lang/Object;)V

    .line 150
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mPadding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    if-nez v5, :cond_9

    .line 151
    sget-object v5, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v6, p2, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mPadding:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    .line 155
    :cond_9
    if-eqz p3, :cond_b

    .line 156
    invoke-virtual {p3}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 157
    .local v0, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v0, :cond_b

    .line 158
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v5, v0}, Lcom/android/launcher2/SurfaceWidgetView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {p3}, Lcom/android/launcher2/SurfaceWidgetView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 162
    .restart local v4    # "viewParent":Landroid/view/ViewGroup;
    if-eqz v4, :cond_a

    .line 163
    invoke-virtual {v4, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    :cond_a
    invoke-virtual {p3, v10}, Lcom/android/launcher2/SurfaceWidgetView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 167
    invoke-virtual {p3, v10}, Lcom/android/launcher2/SurfaceWidgetView;->setTag(Ljava/lang/Object;)V

    .line 168
    const/4 p3, 0x0

    .line 173
    .end local v0    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "viewParent":Landroid/view/ViewGroup;
    :cond_b
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-eqz v5, :cond_c

    .line 174
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/SurfaceWidgetConnection;->onDestroy(Z)Z

    .line 175
    iput-object v10, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    .line 179
    :cond_c
    iget-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    iget v6, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-static {v5, p2, v6}, Lcom/android/launcher2/SurfaceWidgetConnection;->bindToService(Lcom/android/launcher2/SurfaceWidgetView;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)Lcom/android/launcher2/SurfaceWidgetConnection;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    .line 181
    iput-object p2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .line 182
    invoke-virtual {p2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getThemeName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mThemeName:Ljava/lang/String;

    .line 183
    invoke-virtual {p2}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    .line 185
    invoke-direct {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->calcSpans()V

    goto/16 :goto_0
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/launcher2/HomeItem;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mComponentName == null; item will fail to be reloaded from the DB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    if-gtz v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "mInstance <= 0; item will fail to be reloaded from the DB"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    const-string v0, "intent"

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "instance"

    iget v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    iget-object v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v3}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getThemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "appWidgetId"

    iget-wide v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 86
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->getState()Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->PAUSED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    sget-object v0, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->PAUSED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 222
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetConnection;->onPause()Z

    .line 224
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->getState()Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RESUMED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetItem;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;->RESUMED:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {p0, v1}, Lcom/android/launcher2/SurfaceWidgetItem;->setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V

    .line 229
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetConnection;->onResume()Z

    move-result v0

    .line 230
    .local v0, "wasResumed":Z
    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/launcher2/SurfaceWidgetConnection;->resumeLater(Z)V

    .line 232
    .end local v0    # "wasResumed":Z
    :cond_0
    return-void

    .line 230
    .restart local v0    # "wasResumed":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setState(Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;)V
    .locals 0
    .param p1, "state"    # Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mState:Lcom/android/launcher2/SurfaceWidgetItem$SurfaceWidgetState;

    .line 213
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unbind()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 191
    sget-boolean v1, Lcom/android/launcher2/SurfaceWidgetItem;->DEBUGGABLE:Z

    if-eqz v1, :cond_0

    .line 192
    const-string v1, "SurfaceWidgetItem"

    const-string v2, "unbind"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/HomeItem;->unbind()V

    .line 194
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 195
    const-string v1, "SurfaceWidgetItem"

    const-string v2, "unbind calling destroyWidget!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getSurfaceWidgetPackageManager()Lcom/android/launcher2/SurfaceWidgetPackageManager;

    move-result-object v0

    .line 197
    .local v0, "surfaceWidgetManager":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/launcher2/SurfaceWidgetItem;->destroyWidget(Landroid/content/Context;Lcom/android/launcher2/SurfaceWidgetPackageManager;Z)V

    .line 198
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mConnection:Lcom/android/launcher2/SurfaceWidgetConnection;

    .line 199
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 201
    .end local v0    # "surfaceWidgetManager":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    :cond_1
    return-void
.end method
