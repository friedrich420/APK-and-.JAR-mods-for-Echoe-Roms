.class public Lcom/android/launcher2/AvailableSamsungWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableSamsungWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidgetListProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AvailableSamsungWidgetListProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mContext:Landroid/content/Context;

    .line 43
    sget-object v0, Lcom/android/launcher2/SamsungWidgetPackageManager;->INSTANCE:Lcom/android/launcher2/SamsungWidgetPackageManager;

    iput-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/AvailableSamsungWidgetListProvider;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;
    .locals 5
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 73
    const/4 v3, 0x0

    .line 77
    .local v3, "secretList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v4}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;

    .line 78
    .local v1, "info":Lcom/android/launcher2/SamsungWidgetProviderInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 81
    .local v2, "isSecret":Z
    :goto_0
    invoke-virtual {v1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 82
    new-instance v4, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;-><init>(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;Lcom/android/launcher2/SamsungWidgetProviderInfo;Z)V

    .line 85
    .end local v1    # "info":Lcom/android/launcher2/SamsungWidgetProviderInfo;
    .end local v2    # "isSecret":Z
    :goto_1
    return-object v4

    .line 78
    .restart local v1    # "info":Lcom/android/launcher2/SamsungWidgetProviderInfo;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "info":Lcom/android/launcher2/SamsungWidgetProviderInfo;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
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
    .line 48
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .local v3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    const/4 v4, 0x0

    .line 53
    .local v4, "secretList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->mPackageManager:Lcom/android/launcher2/SamsungWidgetPackageManager;

    invoke-virtual {v5}, Lcom/android/launcher2/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;

    .line 54
    .local v1, "info":Lcom/android/launcher2/SamsungWidgetProviderInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher2/SamsungWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v2, 0x0

    .line 57
    .local v2, "isSecret":Z
    :goto_1
    new-instance v5, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/launcher2/AvailableSamsungWidgetListProvider$AvailableSamsungWidget;-><init>(Lcom/android/launcher2/AvailableSamsungWidgetListProvider;Lcom/android/launcher2/SamsungWidgetProviderInfo;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-boolean v5, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    .line 59
    const-string v5, "AvailableSamsungWidgetListProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Samsung Widget{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mWidgetTitle:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "}  ComponentInfo{"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher2/SamsungWidgetProviderInfo;->mClassName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "} added"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    .end local v2    # "isSecret":Z
    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    .line 64
    .end local v1    # "info":Lcom/android/launcher2/SamsungWidgetProviderInfo;
    :cond_3
    sget-boolean v5, Lcom/android/launcher2/AvailableSamsungWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v5, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 65
    const-string v5, "AvailableSamsungWidgetListProvider"

    const-string v6, "No Samsung App Widgets were loaded"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_4
    return-object v3
.end method

.method public isShortcutWidget(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method
