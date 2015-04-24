.class public final enum Lcom/android/launcher2/SurfaceWidgetPackageManager;
.super Ljava/lang/Enum;
.source "SurfaceWidgetPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/SurfaceWidgetPackageManager;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/SurfaceWidgetPackageManager;

.field private static final DEBUG:Z = true

.field private static final DEBUGGABLE:Z

.field private static final DEFAULT_WIDGET_NUMBER:I = 0xa

.field public static final enum INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

.field private static final INTENT_ACTION:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

.field private static final INTENT_CATEGORY:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET"

.field private static final LOG_TAG:Ljava/lang/String; = "Launcher.SurfaceWidgetPkgMgr"

.field private static final METADATA_NAME:Ljava/lang/String; = "com.samsung.sec.android.SURFACE_WIDGET"


# instance fields
.field private final mActiveSurfaceWidgetMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private mConfigMccWhenLoaded:I

.field private mConfigMncWhenLoaded:I

.field private final mInfoCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "[",
            "Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLocaleWhenLoaded:Ljava/lang/String;

.field private mSurfaceWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/android/launcher2/SurfaceWidgetPackageManager;

    const-string v1, "INST"

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher2/SurfaceWidgetPackageManager;-><init>(Ljava/lang/String;ILandroid/content/Context;)V

    sput-object v0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher2/SurfaceWidgetPackageManager;

    sget-object v1, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->$VALUES:[Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 109
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->DEBUGGABLE:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 2
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 118
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mInfoCache:Ljava/util/Map;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;

    .line 128
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mAppContext:Landroid/content/Context;

    .line 129
    return-void
.end method

.method private makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 307
    new-instance v1, Landroid/content/ComponentName;

    iget-object v11, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v11, v11, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v12, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v11, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mInfoCache:Ljava/util/Map;

    invoke-interface {v11, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .line 311
    .local v3, "infos":[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-nez v3, :cond_0

    .line 312
    iget-object v11, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v11, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 313
    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 314
    const-string v11, "Launcher.SurfaceWidgetPkgMgr"

    const-string v12, "SurfaceWidget didn\'t provide meta data XML file!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v3

    .line 316
    .restart local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 317
    .local v6, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 318
    .local v4, "key":Ljava/lang/String;
    const-string v11, "com.samsung.sec.android.SURFACE_WIDGET"

    invoke-virtual {v4, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 319
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 323
    .end local v4    # "key":Ljava/lang/String;
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 324
    .local v5, "keySize":I
    if-lez v5, :cond_7

    .line 325
    new-array v3, v5, [Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .line 327
    const/4 v8, 0x0

    .line 328
    .local v8, "storeIndex":I
    const/4 v7, 0x0

    .local v7, "lp":I
    move v9, v8

    .end local v8    # "storeIndex":I
    .local v9, "storeIndex":I
    :goto_2
    if-ge v7, v5, :cond_4

    .line 329
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {p1, p2, v1, v11}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->create(Landroid/content/Context;Landroid/content/pm/ResolveInfo;Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v10

    .line 331
    .local v10, "widget":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-eqz v10, :cond_8

    .line 332
    add-int/lit8 v8, v9, 0x1

    .end local v9    # "storeIndex":I
    .restart local v8    # "storeIndex":I
    aput-object v10, v3, v9

    .line 328
    :goto_3
    add-int/lit8 v7, v7, 0x1

    move v9, v8

    .end local v8    # "storeIndex":I
    .restart local v9    # "storeIndex":I
    goto :goto_2

    .line 335
    .end local v10    # "widget":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :cond_4
    if-gtz v9, :cond_5

    .line 336
    const/4 v3, 0x0

    goto :goto_0

    .line 338
    :cond_5
    if-ge v9, v5, :cond_6

    .line 339
    invoke-static {v3, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "infos":[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    check-cast v3, [Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .line 341
    .restart local v3    # "infos":[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :cond_6
    iget-object v11, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mInfoCache:Ljava/util/Map;

    invoke-interface {v11, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 344
    .end local v7    # "lp":I
    .end local v9    # "storeIndex":I
    :cond_7
    const-string v11, "Launcher.SurfaceWidgetPkgMgr"

    const-string v12, "SurfaceWidget didn\'t provide meta data XML file!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v7    # "lp":I
    .restart local v9    # "storeIndex":I
    .restart local v10    # "widget":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :cond_8
    move v8, v9

    .end local v9    # "storeIndex":I
    .restart local v8    # "storeIndex":I
    goto :goto_3
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetPackageManager;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->$VALUES:[Lcom/android/launcher2/SurfaceWidgetPackageManager;

    invoke-virtual {v0}, [Lcom/android/launcher2/SurfaceWidgetPackageManager;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/SurfaceWidgetPackageManager;

    return-object v0
.end method


# virtual methods
.method public clearWidgetInstanceNumbers(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)V
    .locals 3
    .param p1, "item"    # Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .prologue
    .line 277
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    .line 278
    .local v0, "itemInstances":Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->clear()V

    .line 280
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    :cond_0
    return-void
.end method

.method public declared-synchronized clearWidgets()V
    .locals 1

    .prologue
    .line 286
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 287
    monitor-exit p0

    return-void

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method createWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;)I
    .locals 7
    .param p1, "info"    # Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .prologue
    const/4 v6, 0x1

    const/4 v2, -0x1

    .line 198
    if-nez p1, :cond_0

    .line 199
    const-string v4, "Launcher.SurfaceWidgetPkgMgr"

    const-string v5, "SurfaceWidgetInfo null in createWidgetInstance"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    return v2

    .line 204
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    .line 207
    .local v1, "itemInstances":Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    if-nez v1, :cond_1

    .line 208
    new-instance v1, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    .end local v1    # "itemInstances":Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    iget-object v4, p1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v1    # "itemInstances":Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    iget-object v4, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->isOneInstanceOnly()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->getCount()I

    move-result v4

    if-lt v4, v6, :cond_3

    .line 215
    iget-object v4, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 216
    .local v0, "isLightTheme":Z
    if-eqz v0, :cond_2

    .line 217
    iget-object v4, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mAppContext:Landroid/content/Context;

    const v5, 0x1030132

    invoke-virtual {v4, v5}, Landroid/content/Context;->setTheme(I)V

    .line 218
    :cond_2
    iget-object v4, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mAppContext:Landroid/content/Context;

    const v5, 0x7f100008

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 219
    .local v3, "onlyOneToast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 223
    .end local v0    # "isLightTheme":Z
    .end local v3    # "onlyOneToast":Landroid/widget/Toast;
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->createNextInstance()I

    move-result v2

    .line 224
    .local v2, "newInstance":I
    const-string v4, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createWidgetInstance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", updated list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .locals 4
    .param p1, "compName"    # Landroid/content/ComponentName;
    .param p2, "themeName"    # Ljava/lang/String;

    .prologue
    .line 290
    if-eqz p1, :cond_2

    .line 292
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->getWidgetItems(Z)Ljava/util/List;

    move-result-object v2

    .line 294
    .local v2, "localWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    .line 295
    .local v1, "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getThemeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 302
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .end local v2    # "localWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;>;"
    :cond_1
    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getWidgetItems(Z)Ljava/util/List;
    .locals 10
    .param p1, "forceReload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;

    if-eqz v7, :cond_0

    if-eqz p1, :cond_7

    .line 153
    :cond_0
    iget-object v7, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mInfoCache:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v7, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 157
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.samsung.sec.android.SURFACE_WIDGET_ACTION"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v8, "com.samsung.sec.android.SURFACE_WIDGET"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v7, Lcom/android/launcher2/SurfaceWidgetPackageManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_1

    .line 162
    const-string v7, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Query the installed surface widgets from surface widget package manager: list obtained with size= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v6, "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 169
    .local v0, "app":Landroid/content/pm/ResolveInfo;
    sget-boolean v7, Lcom/android/launcher2/SurfaceWidgetPackageManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_3

    const-string v7, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_3
    iget-object v7, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v7, v0}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->makeWidgetItem(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v4

    .line 171
    .local v4, "item":[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    if-nez v4, :cond_4

    .line 172
    sget-boolean v7, Lcom/android/launcher2/SurfaceWidgetPackageManager;->DEBUGGABLE:Z

    if-eqz v7, :cond_2

    const-string v7, "Launcher.SurfaceWidgetPkgMgr"

    const-string v8, "failed to load SurfaceWidgetInfos!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 152
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "item":[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 174
    .restart local v0    # "app":Landroid/content/pm/ResolveInfo;
    .restart local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "item":[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;>;"
    :cond_4
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_1
    array-length v7, v4

    if-ge v2, v7, :cond_2

    .line 175
    aget-object v7, v4, v2

    if-eqz v7, :cond_5

    .line 176
    aget-object v7, v4, v2

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 182
    .end local v0    # "app":Landroid/content/pm/ResolveInfo;
    .end local v2    # "i":I
    .end local v4    # "item":[Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :cond_6
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    iput-object v7, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;

    .line 185
    .end local v1    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v6    # "widgets":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;>;"
    :cond_7
    iget-object v7, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v7
.end method

.method hasWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)Z
    .locals 3
    .param p1, "item"    # Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .param p2, "instanceNumber"    # I

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    .line 190
    .local v0, "itemInstances":Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->instanceExists(I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method declared-synchronized loadIfNeeded(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 359
    .local v0, "config":Landroid/content/res/Configuration;
    iget v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mConfigMccWhenLoaded:I

    iget v2, v0, Landroid/content/res/Configuration;->mcc:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mConfigMncWhenLoaded:I

    iget v2, v0, Landroid/content/res/Configuration;->mnc:I

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mLocaleWhenLoaded:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 362
    :cond_0
    iget v1, v0, Landroid/content/res/Configuration;->mcc:I

    iput v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mConfigMccWhenLoaded:I

    .line 363
    iget v1, v0, Landroid/content/res/Configuration;->mnc:I

    iput v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mConfigMncWhenLoaded:I

    .line 364
    iget-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mLocaleWhenLoaded:Ljava/lang/String;

    .line 365
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mSurfaceWidgets:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    :cond_1
    monitor-exit p0

    return-void

    .line 358
    .end local v0    # "config":Landroid/content/res/Configuration;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)V
    .locals 4
    .param p1, "item"    # Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .param p2, "instanceNumber"    # I

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    const-string v2, "SurfaceWidgetInfo null in removeWidgetInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    .line 258
    .local v0, "itemInstances":Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->hasWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 259
    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWidgetInstance -- Instance does not exist instanceNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz v0, :cond_1

    .line 261
    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWidgetInstance -- Instance does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_1
    if-eqz v0, :cond_2

    .line 266
    invoke-virtual {v0, p2}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->removeInstance(I)Z

    .line 268
    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->getCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 269
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_2
    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeWidgetInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", updated list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method updateWidgetInstance(Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;I)V
    .locals 4
    .param p1, "info"    # Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .param p2, "instanceNumber"    # I

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    .line 236
    .local v0, "itemInstances":Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;

    .end local v0    # "itemInstances":Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    iget-object v1, p1, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;-><init>(Ljava/lang/String;)V

    .line 238
    .restart local v0    # "itemInstances":Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;
    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetPackageManager;->mActiveSurfaceWidgetMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->instanceExists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createWidgetInstance(update) instance number already exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/launcher2/SurfaceWidgetPackageManager$SurfaceWidgetInfoInstances;->addInstance(I)Z

    .line 248
    const-string v1, "Launcher.SurfaceWidgetPkgMgr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWidgetInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", updated list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    return-void
.end method
