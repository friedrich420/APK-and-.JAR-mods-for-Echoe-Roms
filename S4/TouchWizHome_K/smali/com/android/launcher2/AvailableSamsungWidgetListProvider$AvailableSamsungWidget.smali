.class Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;
.super Ljava/lang/Object;
.source "AvailableSamsungWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AvailableSamsungWidgetListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableSamsungWidget"
.end annotation


# instance fields
.field private mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

.field private mIsSecret:Z

.field final synthetic this$0:Lcom/android/launcher2/AvailableSamsungWidgetListProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;Lcom/android/launcher2/SamsungWidgetProviderInfo;Z)V
    .locals 0
    .param p2, "item"    # Lcom/android/launcher2/SamsungWidgetProviderInfo;
    .param p3, "isSecret"    # Z

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->this$0:Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p2, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    .line 99
    iput-boolean p3, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mIsSecret:Z

    .line 100
    return-void
.end method


# virtual methods
.method public canUninstall()Z
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public cleanupCache()V
    .locals 0

    .prologue
    .line 136
    return-void
.end method

.method public createHomePendingItem()Lcom/android/launcher2/HomePendingItem;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Lcom/android/launcher2/HomePendingSamsungWidget;

    iget-object v1, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomePendingSamsungWidget;-><init>(Lcom/android/launcher2/SamsungWidgetProviderInfo;)V

    return-object v0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "SamsungWidget TODO"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return-void
.end method

.method public getCellSpan([I)V
    .locals 8
    .param p1, "out"    # [I

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x1

    .line 110
    const/4 v6, 0x2

    .line 111
    .local v6, "land":I
    const/4 v7, 0x1

    .line 112
    .local v7, "port":I
    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iget-object v1, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getWidth(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getHeight(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    invoke-virtual {v3, v5}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getWidth(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getHeight(I)I

    move-result v4

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForSamsungWidget(IIII[I)[I

    .line 114
    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mDescription:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mDescription:Ljava/lang/String;

    .line 106
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mWidgetTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 122
    const/4 v0, 0x2

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 123
    .local v7, "cellSpans":[I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->getCellSpan([I)V

    .line 124
    sget-boolean v0, Lcom/android/launcher2/Launcher;->CSCFEATURE_LAUNCHER_THEME_ENABLE:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->this$0:Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget-object v1, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget-object v2, v2, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mThemeName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget v3, v3, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mWidgetPreview:I

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/Utilities;->loadSamsungWidgetThemePreview(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->this$0:Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    # getter for: Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget-object v2, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget v3, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mWidgetPreview:I

    move v5, p1

    move v6, p2

    invoke-static/range {v1 .. v7}, Lcom/android/launcher2/Utilities;->loadWidgetPreview(Landroid/content/Context;Ljava/lang/String;IIII[I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 122
    :array_0
    .array-data 4
        0x1
        0x1
    .end array-data
.end method

.method public getWidgetPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mInfo:Lcom/android/launcher2/SamsungWidgetProviderInfo;

    iget-object v0, v0, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isSecret()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mIsSecret:Z

    return v0
.end method

.method public setSecret(Z)V
    .locals 0
    .param p1, "isSecret"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;->mIsSecret:Z

    .line 151
    return-void
.end method
