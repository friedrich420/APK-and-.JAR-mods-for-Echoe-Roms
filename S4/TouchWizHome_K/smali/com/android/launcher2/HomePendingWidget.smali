.class Lcom/android/launcher2/HomePendingWidget;
.super Lcom/android/launcher2/HomePendingItem;
.source "HomePendingWidget.java"


# instance fields
.field configurationData:Landroid/os/Parcelable;

.field defSpans:[I

.field mimeType:Ljava/lang/String;

.field minWidth:I

.field resizeMode:I

.field resizeSpans:[I


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "i"    # Landroid/appwidget/AppWidgetProviderInfo;
    .param p2, "dataMimeType"    # Ljava/lang/String;
    .param p3, "data"    # Landroid/os/Parcelable;

    .prologue
    .line 34
    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v1}, Lcom/android/launcher2/HomePendingItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 25
    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->resizeSpans:[I

    .line 26
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->defSpans:[I

    .line 35
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->componentName:Landroid/content/ComponentName;

    .line 36
    iget-object v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->mTitle:Ljava/lang/String;

    .line 37
    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iput v1, p0, Lcom/android/launcher2/HomePendingWidget;->minWidth:I

    .line 38
    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v1, p0, Lcom/android/launcher2/HomePendingWidget;->resizeMode:I

    .line 39
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 40
    iput-object p2, p0, Lcom/android/launcher2/HomePendingWidget;->mimeType:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/android/launcher2/HomePendingWidget;->configurationData:Landroid/os/Parcelable;

    .line 48
    :cond_0
    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    .line 49
    .local v0, "c":Lcom/android/launcher2/WorkspaceSpanCalculator;
    iget-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->resizeSpans:[I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->resizeSpans:[I

    .line 50
    iget-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->defSpans:[I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/HomePendingWidget;->defSpans:[I

    .line 51
    return-void

    .line 25
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 26
    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method public getDefSpans()[I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher2/HomePendingWidget;->defSpans:[I

    return-object v0
.end method

.method public getResizeSpans()[I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/launcher2/HomePendingWidget;->resizeSpans:[I

    return-object v0
.end method
