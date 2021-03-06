.class Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;
.super Ljava/lang/Object;
.source "AvailableShortcutWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AvailableShortcutWidgetListProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvailableShortcutWidget"
.end annotation


# instance fields
.field private final mCanUninstall:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mIsSecret:Z

.field private final mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

.field final synthetic this$0:Lcom/android/launcher2/AvailableShortcutWidgetListProvider;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V
    .locals 4
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->this$0:Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v1}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    .line 109
    iget-object v1, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_2

    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 110
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    .line 111
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/launcher2/AvailableWidgetListProvider$Util;->canUninstall(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mCanUninstall:Z

    .line 112
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mIsSecret:Z

    .line 113
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIsWidget:Z

    .line 114
    # getter for: Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mPkgResCache:Lcom/android/launcher2/PkgResCache;
    invoke-static {p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;)Lcom/android/launcher2/PkgResCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-virtual {v1, v2, p3}, Lcom/android/launcher2/PkgResCache;->getTitleAndIcon(Lcom/android/launcher2/PkgResCache$TitleIconInfo;Landroid/content/pm/ResolveInfo;)V

    .line 115
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    # getter for: Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mPkgResCache:Lcom/android/launcher2/PkgResCache;
    invoke-static {p1}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->access$000(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;)Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getDefaultIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v2, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    .line 119
    :cond_1
    return-void

    .line 109
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_2
    iget-object v0, p3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0
.end method


# virtual methods
.method public canUninstall()Z
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mCanUninstall:Z

    return v0
.end method

.method public cleanupCache()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public createHomePendingItem()Lcom/android/launcher2/HomePendingItem;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/android/launcher2/HomePendingItem;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {v0, v1}, Lcom/android/launcher2/HomePendingItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 134
    .local v0, "createHomeItem":Lcom/android/launcher2/HomePendingItem;
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher2/HomePendingItem;->componentName:Landroid/content/ComponentName;

    .line 135
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIconResId:I

    iput v1, v0, Lcom/android/launcher2/HomePendingItem;->mIconResId:I

    .line 136
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/launcher2/HomePendingItem;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 137
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitleResId:I

    iput v1, v0, Lcom/android/launcher2/HomePendingItem;->mTitleResId:I

    .line 138
    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/launcher2/HomePendingItem;->mTitle:Ljava/lang/String;

    .line 139
    iget-boolean v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mCanUninstall:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/launcher2/HomePendingItem;->mSystemApp:Z

    .line 140
    iget-boolean v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mIsSecret:Z

    iput-boolean v1, v0, Lcom/android/launcher2/HomePendingItem;->mSecretItem:Z

    .line 141
    return-object v0

    .line 139
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 175
    sget-boolean v0, Lcom/android/launcher2/AvailableWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   cn=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v1, v1, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    return-void
.end method

.method public getCellSpan([I)V
    .locals 2
    .param p1, "out"    # [I

    .prologue
    const/4 v1, 0x1

    .line 128
    const/4 v0, 0x0

    aput v1, p1, v0

    aput v1, p1, v1

    .line 129
    return-void
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPreview(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mTitleAndIcon:Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    iget-object v0, v0, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getWidgetPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSecret()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mIsSecret:Z

    return v0
.end method

.method public setSecret(Z)V
    .locals 0
    .param p1, "isSecret"    # Z

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->mIsSecret:Z

    .line 157
    return-void
.end method
