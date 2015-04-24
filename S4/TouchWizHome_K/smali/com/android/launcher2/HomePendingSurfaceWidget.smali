.class Lcom/android/launcher2/HomePendingSurfaceWidget;
.super Lcom/android/launcher2/HomePendingItem;
.source "HomePendingSurfaceWidget.java"


# instance fields
.field defSpans:[I

.field mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

.field resizeSpans:[I


# direct methods
.method public constructor <init>(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .prologue
    .line 27
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/HomePendingItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->resizeSpans:[I

    .line 60
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->defSpans:[I

    .line 28
    iput-object p1, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .line 29
    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->componentName:Landroid/content/ComponentName;

    .line 30
    iget-object v0, p1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mTitle:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/android/launcher2/HomePendingSurfaceWidget;->calcSpans()V

    .line 32
    return-void

    .line 59
    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 60
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private calcSpans()V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 69
    .local v0, "c":Lcom/android/launcher2/WorkspaceSpanCalculator;
    iget-object v1, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v2, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->resizeSpans:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->resizeSpans:[I

    .line 70
    iget-object v1, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    iget-object v2, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->defSpans:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->defSpans:[I

    .line 71
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v0}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getDefSpans()[I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->defSpans:[I

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->mInfo:Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    invoke-virtual {v0}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResizeSpans()[I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/launcher2/HomePendingSurfaceWidget;->resizeSpans:[I

    return-object v0
.end method
