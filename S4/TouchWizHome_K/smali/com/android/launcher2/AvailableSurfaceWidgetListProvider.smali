.class public Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;
.super Ljava/lang/Object;
.source "AvailableSurfaceWidgetListProvider.java"

# interfaces
.implements Lcom/android/launcher2/AvailableWidgetListProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AvailableSurfaceWidgetListProvider"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->mContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getAvailableWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/AvailableWidget;
    .locals 9
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    const/4 v5, 0x1

    .line 73
    monitor-enter p0

    :try_start_0
    sget-boolean v6, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "AvailableSurfaceWidgetListProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SurfaceWidget getAvailableWidgets on thread"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 76
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    .line 80
    .local v4, "secretList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->getWidgetItems(Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .line 81
    .local v1, "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 84
    .local v2, "isSecret":Z
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 85
    new-instance v5, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/launcher2/AvailableWidgetListProvider$Util;->canUninstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v6

    invoke-direct {v5, p0, v1, v6, v2}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;-><init>(Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v1    # "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .end local v2    # "isSecret":Z
    :goto_1
    monitor-exit p0

    return-object v5

    .restart local v1    # "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :cond_3
    move v2, v5

    .line 81
    goto :goto_0

    .line 89
    .end local v1    # "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 73
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "secretList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized getAvailableWidgets()Ljava/util/List;
    .locals 10
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
    const/4 v6, 0x1

    .line 45
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .local v3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    sget-boolean v7, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v7, :cond_0

    const-string v7, "AvailableSurfaceWidgetListProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SurfaceWidget getAvailableWidgets on thread"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 50
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    .line 54
    .local v5, "secretList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v7, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->getWidgetItems(Z)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .line 55
    .local v1, "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_2
    const/4 v2, 0x0

    .line 57
    .local v2, "isSecret":Z
    :goto_1
    new-instance v7, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lcom/android/launcher2/AvailableWidgetListProvider$Util;->canUninstall(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v8

    invoke-direct {v7, p0, v1, v8, v2}, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider$AvailableSurfaceWidget;-><init>(Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;ZZ)V

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    sget-boolean v7, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v7, :cond_1

    .line 59
    const-string v7, "AvailableSurfaceWidgetListProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Surface Widget{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}  ComponentInfo{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "} added"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 45
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .end local v2    # "isSecret":Z
    .end local v3    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "secretList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .restart local v3    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AvailableWidget;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "secretList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move v2, v6

    .line 55
    goto :goto_1

    .line 64
    .end local v1    # "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :cond_4
    :try_start_1
    sget-boolean v6, Lcom/android/launcher2/AvailableSurfaceWidgetListProvider;->DEBUGGABLE:Z

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 65
    const-string v6, "AvailableSurfaceWidgetListProvider"

    const-string v7, "No Surface Widgets were loaded"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :cond_5
    monitor-exit p0

    return-object v3
.end method

.method public isShortcutWidget(Ljava/lang/String;)Z
    .locals 1
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method
