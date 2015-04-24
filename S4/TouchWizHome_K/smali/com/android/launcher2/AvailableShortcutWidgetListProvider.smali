.class public Lcom/android/launcher2/AvailableShortcutWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableShortcutWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidgetListProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final SETTINGS_SHORTCUT_WIDGET_PACKAGE:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mPkgResCache:Lcom/android/launcher2/PkgResCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->SETTINGS_SHORTCUT_WIDGET_PACKAGE:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mContext:Landroid/content/Context;

    .line 44
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;)Lcom/android/launcher2/PkgResCache;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/AvailableShortcutWidgetListProvider;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    return-object v0
.end method


# virtual methods
.method public getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;
    .locals 4
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 82
    .local v0, "asw":Lcom/android/launcher2/AvailableWidget;
    instance-of v3, v0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;

    invoke-virtual {v3}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 86
    .end local v0    # "asw":Lcom/android/launcher2/AvailableWidget;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAvailableWidgets()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v2, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 52
    .local v4, "shortcutsIntent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 53
    .local v3, "shortcut":Landroid/content/pm/ResolveInfo;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 54
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v5, :cond_2

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 55
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    :goto_1
    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.android.settings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 63
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_1
    new-instance v5, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;

    iget-object v6, p0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-direct {v5, p0, v6, v3}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;-><init>(Lcom/android/launcher2/AvailableShortcutWidgetListProvider;Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    sget-boolean v5, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    .line 65
    sget-object v6, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Shortcut "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_1

    .line 65
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v7}, Landroid/content/pm/ServiceInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " added"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 70
    .end local v3    # "shortcut":Landroid/content/pm/ResolveInfo;
    :cond_4
    sget-boolean v5, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 71
    sget-object v5, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->TAG:Ljava/lang/String;

    const-string v6, "No shortcuts were loaded"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_5
    return-object v2
.end method

.method public isShortcutWidget(Ljava/lang/String;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider;->getAvailableWidgets()Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, "out":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/AvailableWidget;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AvailableWidget;

    .line 94
    .local v0, "asw":Lcom/android/launcher2/AvailableWidget;
    instance-of v3, v0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;

    .end local v0    # "asw":Lcom/android/launcher2/AvailableWidget;
    invoke-virtual {v0}, Lcom/android/launcher2/AvailableShortcutWidgetListProvider$AvailableShortcutWidget;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    const/4 v3, 0x1

    .line 98
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method
