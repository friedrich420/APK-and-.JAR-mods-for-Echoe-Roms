.class Lcom/android/launcher2/LauncherExModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherExModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherExModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private final PAGEINDEX_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mIsFestival:Z

.field private volatile mIsFestivalLoader:Z

.field private volatile mIsFestivalModeChanged:Z

.field private mIsLaunching:Z

.field private volatile mIsModeChanged:Z

.field private volatile mIsSecret:Z

.field private mStep1Finished:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/launcher2/LauncherExModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherExModel;ZZZZ)V
    .locals 3
    .param p2, "isLaunching"    # Z
    .param p3, "isSecret"    # Z
    .param p4, "isModeChanged"    # Z
    .param p5, "isFestivalLoader"    # Z

    .prologue
    .line 237
    iput-object p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1417
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$31;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$31;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    .line 238
    iput-boolean p2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    .line 241
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoaderTask isFestivalLoader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iput-boolean p5, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestivalLoader:Z

    .line 245
    if-eqz p5, :cond_0

    .line 246
    iput-boolean p3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z

    .line 247
    iput-boolean p4, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestivalModeChanged:Z

    .line 252
    :goto_0
    return-void

    .line 249
    :cond_0
    iput-boolean p3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    .line 250
    iput-boolean p4, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsModeChanged:Z

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->runBindFestivalPage()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->runBindSecretPage()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/launcher2/LauncherExModel$LoaderTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel$LoaderTask;
    .param p1, "x1"    # Z

    .prologue
    .line 225
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher2/LauncherExModel$LoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    return v0
.end method

.method private bindFestivalPageModeChange()V
    .locals 2

    .prologue
    .line 1338
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$26;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$26;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1344
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1345
    return-void
.end method

.method private bindFestivalWorkspace()V
    .locals 2

    .prologue
    .line 1349
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z

    if-nez v1, :cond_1

    .line 1350
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1353
    :cond_0
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$27;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$27;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1359
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1363
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_1
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$28;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$28;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1369
    .restart local v0    # "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindSecretAllApps()V
    .locals 3

    .prologue
    .line 1291
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1292
    const-string v1, "LauncherExModel"

    const-string v2, "LoaderTask running with no launcher"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :goto_0
    return-void

    .line 1296
    :cond_0
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$25;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1313
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private bindSecretPageModeChange()V
    .locals 2

    .prologue
    .line 1158
    new-instance v0, Lcom/android/launcher2/LauncherExModel$LoaderTask$17;

    invoke-direct {v0, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$17;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1164
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1165
    return-void
.end method

.method private bindSecretWorkspace()V
    .locals 20

    .prologue
    .line 1232
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-nez v2, :cond_1

    .line 1233
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1287
    :goto_0
    return-void

    .line 1236
    :cond_0
    new-instance v13, Lcom/android/launcher2/LauncherExModel$LoaderTask$23;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$23;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1242
    .local v13, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v2, v13}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1246
    .end local v13    # "r":Ljava/lang/Runnable;
    :cond_1
    new-instance v13, Lcom/android/launcher2/LauncherExModel$LoaderTask$24;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$24;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1252
    .restart local v13    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v2, v13}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1254
    new-instance v3, Ljava/util/ArrayList;

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1255
    .local v3, "secretWorkspace":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/HomeItem;

    .line 1256
    .local v12, "item":Lcom/android/launcher2/HomeItem;
    iget-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x64

    cmp-long v2, v16, v18

    if-nez v2, :cond_2

    .line 1257
    iget-boolean v2, v12, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v2, :cond_2

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1261
    .end local v12    # "item":Lcom/android/launcher2/HomeItem;
    :cond_3
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1262
    .local v4, "secretFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1263
    .local v10, "id":J
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/HomeFolderItem;

    .line 1264
    .local v8, "fi":Lcom/android/launcher2/HomeFolderItem;
    iget-boolean v2, v8, Lcom/android/launcher2/HomeFolderItem;->mSecretItem:Z

    if-eqz v2, :cond_4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1267
    .end local v8    # "fi":Lcom/android/launcher2/HomeFolderItem;
    .end local v10    # "id":J
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1268
    .local v5, "secretAppWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/HomeWidgetItem;

    .line 1269
    .local v14, "secretWidget":Lcom/android/launcher2/HomeWidgetItem;
    iget-boolean v2, v14, Lcom/android/launcher2/HomeWidgetItem;->mSecretItem:Z

    if-eqz v2, :cond_6

    .line 1270
    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1273
    .end local v14    # "secretWidget":Lcom/android/launcher2/HomeWidgetItem;
    :cond_7
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1274
    .local v6, "secretSamsungAppWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/SamsungWidgetItem;>;"
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/SamsungWidgetItem;

    .line 1275
    .local v14, "secretWidget":Lcom/android/launcher2/SamsungWidgetItem;
    iget-boolean v2, v14, Lcom/android/launcher2/SamsungWidgetItem;->mSecretItem:Z

    if-eqz v2, :cond_8

    .line 1276
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1279
    .end local v14    # "secretWidget":Lcom/android/launcher2/SamsungWidgetItem;
    :cond_9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    .local v7, "secretSurfaceWidgetItem":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/SurfaceWidgetItem;>;"
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_a
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 1281
    .local v14, "secretWidget":Lcom/android/launcher2/SurfaceWidgetItem;
    iget-boolean v2, v14, Lcom/android/launcher2/SurfaceWidgetItem;->mSecretItem:Z

    if-eqz v2, :cond_a

    .line 1282
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .end local v14    # "secretWidget":Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_b
    move-object/from16 v2, p0

    .line 1285
    invoke-direct/range {v2 .. v7}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretWorkspace(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private bindSecretWorkspace(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/HomeFolderItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SamsungWidgetItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/SurfaceWidgetItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1173
    .local p1, "secretHomeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    .local p2, "secretFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    .local p3, "secretAppWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    .local p4, "secretSamsungAppWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/SamsungWidgetItem;>;"
    .local p5, "secretSurfaceWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/SurfaceWidgetItem;>;"
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1174
    const-string v7, "LauncherExModel"

    const-string v8, "bindSecretWorkspace running with no launcher"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_0
    return-void

    .line 1178
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 1179
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 1180
    move v6, v2

    .line 1181
    .local v6, "start":I
    add-int/lit8 v7, v2, 0x6

    if-gt v7, v0, :cond_2

    const/4 v1, 0x6

    .line 1182
    .local v1, "chunkSize":I
    :goto_1
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$18;

    invoke-direct {v4, p0, p1, v6, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$18;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;II)V

    .line 1188
    .local v4, "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1179
    add-int/lit8 v2, v2, 0x6

    goto :goto_0

    .line 1181
    .end local v1    # "chunkSize":I
    .end local v4    # "r":Ljava/lang/Runnable;
    :cond_2
    sub-int v1, v0, v2

    goto :goto_1

    .line 1191
    .end local v6    # "start":I
    :cond_3
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$19;

    invoke-direct {v4, p0, p2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$19;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/HashMap;)V

    .line 1197
    .restart local v4    # "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1199
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/HomeWidgetItem;

    .line 1200
    .local v5, "secretWidget":Lcom/android/launcher2/HomeWidgetItem;
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$20;

    .end local v4    # "r":Ljava/lang/Runnable;
    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask$20;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    .line 1206
    .restart local v4    # "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 1209
    .end local v5    # "secretWidget":Lcom/android/launcher2/HomeWidgetItem;
    :cond_4
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/SamsungWidgetItem;

    .line 1210
    .local v5, "secretWidget":Lcom/android/launcher2/SamsungWidgetItem;
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$21;

    .end local v4    # "r":Ljava/lang/Runnable;
    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask$21;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SamsungWidgetItem;)V

    .line 1216
    .restart local v4    # "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_3

    .line 1219
    .end local v5    # "secretWidget":Lcom/android/launcher2/SamsungWidgetItem;
    :cond_5
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 1220
    .local v5, "secretWidget":Lcom/android/launcher2/SurfaceWidgetItem;
    new-instance v4, Lcom/android/launcher2/LauncherExModel$LoaderTask$22;

    .end local v4    # "r":Ljava/lang/Runnable;
    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask$22;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SurfaceWidgetItem;)V

    .line 1226
    .restart local v4    # "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v4}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_4
.end method

.method private bindWorkspace()V
    .locals 35

    .prologue
    .line 879
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 882
    .local v32, "t":J
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v4

    if-nez v4, :cond_0

    .line 883
    const-string v4, "LauncherExModel"

    const-string v5, "LoaderTask running with no launcher"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :goto_0
    return-void

    .line 887
    :cond_0
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$2;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 893
    .local v24, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 895
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v4, :cond_1

    .line 896
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$3;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 902
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 905
    :cond_1
    new-instance v34, Ljava/util/ArrayList;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, v34

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 906
    .local v34, "workspace":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v17, "hotseat":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 908
    .local v27, "secretHomeItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/HomeItem;

    .line 909
    .local v22, "item":Lcom/android/launcher2/HomeItem;
    move-object/from16 v0, v22

    iget-boolean v4, v0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v4, :cond_3

    .line 910
    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 912
    :cond_3
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 913
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 914
    :cond_4
    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x64

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    .line 915
    move-object/from16 v0, v34

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 918
    .end local v22    # "item":Lcom/android/launcher2/HomeItem;
    :cond_5
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$4;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;)V

    .line 925
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 927
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v11

    .line 928
    .local v11, "N":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    if-ge v0, v11, :cond_7

    .line 929
    move/from16 v30, v18

    .line 930
    .local v30, "start":I
    add-int/lit8 v4, v18, 0x6

    if-gt v4, v11, :cond_6

    const/4 v12, 0x6

    .line 931
    .local v12, "chunkSize":I
    :goto_3
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move/from16 v3, v30

    invoke-direct {v0, v1, v2, v3, v12}, Lcom/android/launcher2/LauncherExModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;II)V

    .line 937
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 928
    add-int/lit8 v18, v18, 0x6

    goto :goto_2

    .line 930
    .end local v12    # "chunkSize":I
    :cond_6
    sub-int v12, v11, v18

    goto :goto_3

    .line 940
    .end local v30    # "start":I
    :cond_7
    new-instance v23, Ljava/util/HashMap;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashMap;-><init>()V

    .line 941
    .local v23, "normalFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 942
    .local v26, "secretFolders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 943
    .local v20, "id":J
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher2/HomeFolderItem;

    .line 944
    .local v15, "fi":Lcom/android/launcher2/HomeFolderItem;
    iget-boolean v4, v15, Lcom/android/launcher2/HomeFolderItem;->mSecretItem:Z

    if-eqz v4, :cond_8

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 945
    :cond_8
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 947
    .end local v15    # "fi":Lcom/android/launcher2/HomeFolderItem;
    .end local v20    # "id":J
    :cond_9
    new-instance v16, Ljava/util/HashMap;

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 948
    .local v16, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$6;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/HashMap;)V

    .line 956
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 958
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$7;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 962
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 964
    const/4 v13, 0x0

    .line 965
    .local v13, "currentScreen":I
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 966
    .local v25, "secretAppWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 967
    .local v14, "festivalAppWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_a
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/HomeWidgetItem;

    .line 968
    .local v31, "widget":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    if-nez v4, :cond_a

    .line 969
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/launcher2/HomeWidgetItem;->mSecretItem:Z

    if-eqz v4, :cond_b

    .line 970
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 972
    :cond_b
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    if-lez v4, :cond_c

    .line 973
    move-object/from16 v0, v31

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 975
    :cond_c
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$8;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    .line 981
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_5

    .line 984
    .end local v31    # "widget":Lcom/android/launcher2/HomeWidgetItem;
    :cond_d
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_e
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/HomeWidgetItem;

    .line 985
    .restart local v31    # "widget":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    if-eqz v4, :cond_e

    .line 986
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/launcher2/HomeWidgetItem;->mSecretItem:Z

    if-eqz v4, :cond_f

    .line 987
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 989
    :cond_f
    move-object/from16 v0, v31

    iget v4, v0, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    if-lez v4, :cond_10

    .line 990
    move-object/from16 v0, v31

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 992
    :cond_10
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$9;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    .line 998
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_6

    .line 1002
    .end local v31    # "widget":Lcom/android/launcher2/HomeWidgetItem;
    :cond_11
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v28, "secretSamsungAppWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/SamsungWidgetItem;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/SamsungWidgetItem;

    .line 1004
    .local v31, "widget":Lcom/android/launcher2/SamsungWidgetItem;
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/launcher2/SamsungWidgetItem;->mSecretItem:Z

    if-eqz v4, :cond_12

    .line 1005
    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1007
    :cond_12
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$10;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SamsungWidgetItem;)V

    .line 1013
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_7

    .line 1016
    .end local v31    # "widget":Lcom/android/launcher2/SamsungWidgetItem;
    :cond_13
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1017
    .local v29, "secretSurfaceWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/SurfaceWidgetItem;>;"
    sget-object v4, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 1018
    .local v31, "widget":Lcom/android/launcher2/SurfaceWidgetItem;
    move-object/from16 v0, v31

    iget-boolean v4, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mSecretItem:Z

    if-eqz v4, :cond_14

    .line 1019
    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1021
    :cond_14
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$11;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherExModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Lcom/android/launcher2/SurfaceWidgetItem;)V

    .line 1028
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_8

    .line 1031
    .end local v31    # "widget":Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_15
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sIsTheFisrt:Z

    if-eqz v4, :cond_16

    .line 1032
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v5

    const-string v6, "WGCT"

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v4, v4, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherModel;->WidgetCount()I

    move-result v4

    int-to-long v8, v4

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher2/LauncherApplication;->insertLog(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 1033
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/launcher2/LauncherApplication;->sIsTheFisrt:Z

    .line 1035
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v4, :cond_17

    move-object/from16 v4, p0

    move-object/from16 v5, v27

    move-object/from16 v6, v26

    move-object/from16 v7, v25

    move-object/from16 v8, v28

    move-object/from16 v9, v29

    .line 1036
    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretWorkspace(Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 1039
    :cond_17
    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z

    if-nez v4, :cond_18

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestivalModeChanged:Z

    if-nez v4, :cond_18

    .line 1040
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkBindFestivalWorkspace(Ljava/util/List;)V

    .line 1042
    :cond_18
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$12;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$12;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1048
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1050
    new-instance v24, Lcom/android/launcher2/LauncherExModel$LoaderTask$13;

    .end local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-wide/from16 v2, v32

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask$13;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;J)V

    .line 1055
    .restart local v24    # "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, v24

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v4, v0}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private changeScreenIdInAppsDataBase(Ljava/util/Map;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1425
    .local p1, "allApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsModeChanged:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 1550
    :goto_0
    return-void

    .line 1427
    :cond_0
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1428
    .local v17, "normalPageIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1429
    .local v21, "resultNormalPageIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1430
    .local v18, "normalPageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1432
    .local v14, "needUpdateItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    move/from16 v26, v0

    if-eqz v26, :cond_12

    .line 1434
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 1435
    .local v22, "secretPageIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1437
    .local v23, "secretPageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1438
    .local v6, "id":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1439
    .local v2, "ai":Lcom/android/launcher2/AppItem;
    iget-boolean v0, v2, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1440
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 1441
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1442
    :cond_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1444
    :cond_2
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 1445
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1446
    :cond_3
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1449
    .end local v2    # "ai":Lcom/android/launcher2/AppItem;
    .end local v6    # "id":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v26, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1453
    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1455
    .local v19, "prevSecretPageIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v27

    add-int v25, v26, v27

    .line 1456
    .local v25, "totalPageCount":I
    move/from16 v0, v25

    new-array v5, v0, [Z

    .line 1459
    .local v5, "isOccupiedPage":[Z
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1460
    .local v24, "size":I
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_2
    move/from16 v0, v24

    if-gt v3, v0, :cond_5

    .line 1461
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    add-int/lit8 v11, v26, -0x1

    .line 1462
    .local v11, "lastIndex":I
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    array-length v0, v5

    move/from16 v27, v0

    sub-int v27, v27, v3

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_5

    .line 1463
    array-length v0, v5

    move/from16 v26, v0

    sub-int v26, v26, v3

    const/16 v27, 0x1

    aput-boolean v27, v5, v26

    .line 1464
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1460
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1469
    .end local v11    # "lastIndex":I
    :cond_5
    const/4 v3, 0x0

    :goto_3
    array-length v0, v5

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v3, v0, :cond_7

    .line 1470
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_6

    .line 1471
    const/16 v26, 0x1

    aput-boolean v26, v5, v3

    .line 1472
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1469
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1475
    :cond_7
    const/4 v3, 0x0

    :goto_4
    array-length v0, v5

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v3, v0, :cond_9

    .line 1476
    aget-boolean v26, v5, v3

    if-eqz v26, :cond_8

    .line 1477
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1475
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1481
    :cond_9
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 1482
    .local v12, "log":Ljava/lang/String;
    const/4 v3, 0x0

    :goto_5
    array-length v0, v5

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v3, v0, :cond_b

    .line 1483
    aget-boolean v26, v5, v3

    if-eqz v26, :cond_a

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "S"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1482
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1484
    :cond_a
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "N"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    .line 1486
    :cond_b
    const-string v26, "LauncherExModel"

    move-object/from16 v0, v26

    invoke-static {v0, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    const/4 v3, 0x0

    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v3, v0, :cond_e

    .line 1491
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_8
    array-length v0, v5

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_c

    .line 1492
    aget-boolean v26, v5, v10

    if-nez v26, :cond_d

    .line 1493
    const/16 v26, 0x1

    aput-boolean v26, v5, v10

    .line 1497
    :cond_c
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1489
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 1491
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 1502
    .end local v10    # "j":I
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_f
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1503
    .restart local v2    # "ai":Lcom/android/launcher2/AppItem;
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v0, v21

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1504
    .local v13, "matchingIndex":I
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v0, v13, :cond_f

    .line 1505
    iput v13, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 1506
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1509
    .end local v2    # "ai":Lcom/android/launcher2/AppItem;
    .end local v13    # "matchingIndex":I
    :cond_10
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1510
    .restart local v2    # "ai":Lcom/android/launcher2/AppItem;
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Integer;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1511
    .local v16, "newScreen":I
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v16

    if-eq v0, v1, :cond_11

    .line 1512
    move/from16 v0, v16

    iput v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 1513
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1519
    .end local v2    # "ai":Lcom/android/launcher2/AppItem;
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "isOccupiedPage":[Z
    .end local v12    # "log":Ljava/lang/String;
    .end local v16    # "newScreen":I
    .end local v19    # "prevSecretPageIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v22    # "secretPageIndex":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23    # "secretPageItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/AppItem;>;"
    .end local v24    # "size":I
    .end local v25    # "totalPageCount":I
    :cond_12
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_13
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Long;

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1520
    .restart local v6    # "id":J
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1521
    .restart local v2    # "ai":Lcom/android/launcher2/AppItem;
    iget-boolean v0, v2, Lcom/android/launcher2/AppItem;->mSecretItem:Z

    move/from16 v26, v0

    if-nez v26, :cond_13

    .line 1522
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_14

    .line 1523
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_14
    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1527
    .end local v2    # "ai":Lcom/android/launcher2/AppItem;
    .end local v6    # "id":J
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->PAGEINDEX_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v26, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1528
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/AppItem;

    .line 1529
    .restart local v2    # "ai":Lcom/android/launcher2/AppItem;
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 1530
    .restart local v13    # "matchingIndex":I
    iget v0, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v0, v13, :cond_16

    .line 1531
    iput v13, v2, Lcom/android/launcher2/AppItem;->mScreen:I

    .line 1532
    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 1538
    .end local v2    # "ai":Lcom/android/launcher2/AppItem;
    .end local v13    # "matchingIndex":I
    :cond_17
    new-instance v15, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1539
    .local v15, "newPositions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/LauncherSettings$AppOrderModify;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    .line 1540
    .local v8, "item":Lcom/android/launcher2/AppItem;
    new-instance v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v9}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    .line 1541
    .local v9, "itemPos":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    iget-wide v0, v8, Lcom/android/launcher2/AppItem;->mId:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    iput-wide v0, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    .line 1542
    iget v0, v8, Lcom/android/launcher2/AppItem;->mScreen:I

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    .line 1543
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1545
    .end local v8    # "item":Lcom/android/launcher2/AppItem;
    .end local v9    # "itemPos":Lcom/android/launcher2/LauncherSettings$AppOrderModify;
    :cond_18
    new-instance v20, Lcom/android/launcher2/LauncherExModel$LoaderTask$32;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v15}, Lcom/android/launcher2/LauncherExModel$LoaderTask$32;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/ArrayList;)V

    .line 1549
    .local v20, "r":Ljava/lang/Runnable;
    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnWorkerThread(Ljava/lang/Runnable;)V
    invoke-static/range {v20 .. v20}, Lcom/android/launcher2/LauncherExModel;->access$1200(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private changeScreenIdInHomeDataBase()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1554
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenModeForSecret()I

    move-result v1

    if-eq v1, v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenModeForSecret()I

    move-result v1

    if-nez v1, :cond_2

    .line 1560
    :cond_1
    :goto_0
    return-void

    .line 1558
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    invoke-virtual {v1, v2}, Lcom/android/launcher2/LauncherExModel;->updateHomeDataBase(Z)V

    .line 1559
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v2, :cond_3

    :goto_1
    invoke-static {v1, v0}, Lcom/android/launcher2/LauncherApplication;->setScreenModeForSecret(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private checkBindFestivalWorkspace(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/HomeWidgetItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "festivalAppWidgets":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeWidgetItem;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1373
    iget-object v9, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "festival_effect_enabled"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_2

    move v1, v7

    .line 1374
    .local v1, "isFestivalEnabled":Z
    :goto_0
    iget-object v9, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "festival_effect_festival_home"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_3

    move v2, v7

    .line 1376
    .local v2, "isFestivalHomeEnabled":Z
    :goto_1
    iget-object v9, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "FestivalList"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1377
    .local v0, "festivalList":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v9, v9, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const-string v10, "com.sec.android.app.launcher.prefs"

    invoke-virtual {v9, v10, v8}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1378
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const-string v9, "festivalstring"

    const/4 v10, 0x0

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1379
    .local v5, "prevFestivalList":Ljava/lang/String;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move v3, v7

    .line 1381
    .local v3, "isSameFestival":Z
    :goto_2
    if-nez v3, :cond_0

    .line 1382
    iget-object v8, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v8, v8, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v8, v0}, Lcom/android/launcher2/FestivalPageManager;->setFestivalString(Lcom/android/launcher2/LauncherApplication;Ljava/lang/String;)V

    .line 1385
    :cond_0
    const-string v8, "LauncherExModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkBindFestivalWorkspace:: festivalWidgets : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v8

    if-nez v8, :cond_5

    .line 1415
    :cond_1
    :goto_3
    return-void

    .end local v0    # "festivalList":Ljava/lang/String;
    .end local v1    # "isFestivalEnabled":Z
    .end local v2    # "isFestivalHomeEnabled":Z
    .end local v3    # "isSameFestival":Z
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    .end local v5    # "prevFestivalList":Ljava/lang/String;
    :cond_2
    move v1, v8

    .line 1373
    goto :goto_0

    .restart local v1    # "isFestivalEnabled":Z
    :cond_3
    move v2, v8

    .line 1374
    goto :goto_1

    .restart local v0    # "festivalList":Ljava/lang/String;
    .restart local v2    # "isFestivalHomeEnabled":Z
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    .restart local v5    # "prevFestivalList":Ljava/lang/String;
    :cond_4
    move v3, v8

    .line 1379
    goto :goto_2

    .line 1390
    .restart local v3    # "isSameFestival":Z
    :cond_5
    new-instance v6, Lcom/android/launcher2/LauncherExModel$LoaderTask$29;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher2/LauncherExModel$LoaderTask$29;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/List;)V

    .line 1396
    .local v6, "r":Ljava/lang/Runnable;
    iget-object v8, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v8, v6}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    .line 1399
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 1400
    const-string v8, "LauncherExModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkBindFestivalWorkspace:: insert festivalList : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1402
    iput-boolean v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestival:Z

    .line 1403
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindFestivalPageModeChange()V

    .line 1404
    iget-object v8, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # setter for: Lcom/android/launcher2/LauncherExModel;->mIsCurrentFestivalMode:Z
    invoke-static {v8, v7}, Lcom/android/launcher2/LauncherExModel;->access$1102(Lcom/android/launcher2/LauncherExModel;Z)Z

    .line 1406
    new-instance v6, Lcom/android/launcher2/LauncherExModel$LoaderTask$30;

    .end local v6    # "r":Ljava/lang/Runnable;
    invoke-direct {v6, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$30;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    .line 1412
    .restart local v6    # "r":Ljava/lang/Runnable;
    iget-object v7, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # invokes: Lcom/android/launcher2/LauncherExModel;->runOnMainThread(Ljava/lang/Runnable;)V
    invoke-static {v7, v6}, Lcom/android/launcher2/LauncherExModel;->access$700(Lcom/android/launcher2/LauncherExModel;Ljava/lang/Runnable;)V

    goto :goto_3
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z
    .locals 12
    .param p1, "occupied"    # [[[Lcom/android/launcher2/HomeItem;
    .param p2, "occupiedSecret"    # [[[Lcom/android/launcher2/HomeItem;
    .param p3, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 418
    iget v0, p3, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 419
    .local v0, "containerIndex":I
    iget-wide v8, p3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v10, -0x65

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    .line 420
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v8

    add-int v1, v7, v8

    .line 421
    .local v1, "maxScreenCount":I
    aget-object v7, p1, v1

    iget v8, p3, Lcom/android/launcher2/HomeItem;->mScreen:I

    aget-object v7, v7, v8

    aget-object v7, v7, v5

    if-eqz v7, :cond_1

    .line 422
    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "LauncherExModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut into hotseat "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into position ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") occupied by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, p1, v1

    iget v9, p3, Lcom/android/launcher2/HomeItem;->mScreen:I

    aget-object v8, v8, v9

    aget-object v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v1    # "maxScreenCount":I
    :cond_0
    :goto_0
    return v5

    .line 427
    .restart local v1    # "maxScreenCount":I
    :cond_1
    aget-object v7, p1, v1

    iget v8, p3, Lcom/android/launcher2/HomeItem;->mScreen:I

    aget-object v7, v7, v8

    aput-object p3, v7, v5

    move v5, v6

    .line 428
    goto :goto_0

    .line 430
    .end local v1    # "maxScreenCount":I
    :cond_2
    iget-wide v8, p3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v10, -0x64

    cmp-long v7, v8, v10

    if-eqz v7, :cond_3

    move v5, v6

    .line 431
    goto :goto_0

    .line 434
    :cond_3
    iget-boolean v7, p3, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v7, :cond_4

    move-object v2, p2

    .line 435
    .local v2, "occupiedLocal":[[[Lcom/android/launcher2/HomeItem;
    :goto_1
    iget v3, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    .local v3, "x":I
    :goto_2
    iget v7, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v8, p3, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v7, v8

    if-ge v3, v7, :cond_7

    .line 436
    iget v4, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    .local v4, "y":I
    :goto_3
    iget v7, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v8, p3, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v7, v8

    if-ge v4, v7, :cond_6

    .line 437
    aget-object v7, v2, v0

    aget-object v7, v7, v3

    aget-object v7, v7, v4

    if-eqz v7, :cond_5

    .line 438
    sget-boolean v6, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v6, :cond_0

    const-string v6, "LauncherExModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " into cell ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p3, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") occupied by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v0

    aget-object v8, v8, v3

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2    # "occupiedLocal":[[[Lcom/android/launcher2/HomeItem;
    .end local v3    # "x":I
    .end local v4    # "y":I
    :cond_4
    move-object v2, p1

    .line 434
    goto :goto_1

    .line 436
    .restart local v2    # "occupiedLocal":[[[Lcom/android/launcher2/HomeItem;
    .restart local v3    # "x":I
    .restart local v4    # "y":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 435
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 447
    .end local v4    # "y":I
    :cond_7
    iget v3, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    :goto_4
    iget v5, p3, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v7, p3, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v5, v7

    if-ge v3, v5, :cond_9

    .line 448
    iget v4, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    .restart local v4    # "y":I
    :goto_5
    iget v5, p3, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v7, p3, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v5, v7

    if-ge v4, v5, :cond_8

    .line 449
    aget-object v5, v2, v0

    aget-object v5, v5, v3

    aput-object p3, v5, v4

    .line 448
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 447
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .end local v4    # "y":I
    :cond_9
    move v5, v6

    .line 452
    goto/16 :goto_0
.end method

.method private getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 4

    .prologue
    .line 870
    const/4 v1, 0x0

    .line 871
    .local v1, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, v2, Lcom/android/launcher2/LauncherExModel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 872
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    .line 873
    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherExModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v1, v0

    .line 874
    :cond_0
    monitor-exit v3

    .line 875
    return-object v1

    .line 874
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadAllApps()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1117
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherExModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppLoader;->loadAllItems(Z)Ljava/util/Map;

    move-result-object v0

    .line 1118
    .local v0, "allApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    .line 1121
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherExModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherExModel$LoaderTask$16;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$16;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1130
    :cond_0
    return-object v0
.end method

.method private loadAndBindAllApps()V
    .locals 4

    .prologue
    .line 1060
    const-string v1, "LauncherExModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAndBindAllApps mAllAppsLoaded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRefreshRequired: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v1, v1, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-nez v1, :cond_3

    .line 1063
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadAllApps()Ljava/util/Map;

    move-result-object v0

    .line 1064
    .local v0, "allApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1066
    const-string v1, "LauncherExModel"

    const-string v2, "LoaderTask aborted or running with no launcher (bindAllApps)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    .end local v0    # "allApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 1069
    .restart local v0    # "allApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherExModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherExModel$LoaderTask$14;

    invoke-direct {v2, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$14;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1079
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1080
    invoke-direct {p0, v0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->changeScreenIdInAppsDataBase(Ljava/util/Map;)V

    .line 1082
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v1, :cond_0

    .line 1083
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretAllApps()V

    goto :goto_0

    .line 1086
    .end local v0    # "allApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v1, v1, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-eqz v1, :cond_4

    .line 1087
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherExModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v1}, Lcom/android/launcher2/MenuAppLoader;->refreshAllApps()V

    .line 1088
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    .line 1090
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->postModelRefreshed()V

    goto :goto_0

    .line 1092
    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v1, v1, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsSecret:Z

    if-eqz v1, :cond_0

    .line 1093
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretAllApps()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 3

    .prologue
    .line 258
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherExModel;->unbindAllHomeItemsOnMainThread()V

    .line 267
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-eqz v0, :cond_1

    .line 269
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 270
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 272
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 273
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 274
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 275
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 277
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadWorkspace()V

    .line 279
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_3

    .line 280
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 285
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_2

    .line 286
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->changeScreenIdInHomeDataBase()V

    .line 287
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindWorkspace()V

    .line 289
    :cond_2
    return-void

    .line 282
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    goto :goto_0
.end method

.method private loadWorkspace()V
    .locals 78

    .prologue
    .line 456
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v70

    .line 458
    .local v70, "t":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 459
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 460
    .local v21, "manager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v73

    .line 461
    .local v73, "widgets":Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v21 .. v21}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v47

    .line 463
    .local v47, "isSafeMode":Z
    new-instance v51, Ljava/util/ArrayList;

    invoke-direct/range {v51 .. v51}, Ljava/util/ArrayList;-><init>()V

    .line 465
    .local v51, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 466
    .local v9, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v5

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxSecretScreenCount()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxFestivalScreenCount()I

    move-result v6

    add-int v54, v5, v6

    .line 467
    .local v54, "maxScreenCount":I
    add-int/lit8 v5, v54, 0x1

    sget v6, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    add-int/lit8 v6, v6, 0x1

    sget v8, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    add-int/lit8 v8, v8, 0x1

    filled-new-array {v5, v6, v8}, [I

    move-result-object v5

    const-class v6, Lcom/android/launcher2/HomeItem;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, [[[Lcom/android/launcher2/HomeItem;

    .line 469
    .local v56, "occupied":[[[Lcom/android/launcher2/HomeItem;
    add-int/lit8 v5, v54, 0x1

    sget v6, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    add-int/lit8 v6, v6, 0x1

    sget v8, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    add-int/lit8 v8, v8, 0x1

    filled-new-array {v5, v6, v8}, [I

    move-result-object v5

    const-class v6, Lcom/android/launcher2/HomeItem;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v57

    check-cast v57, [[[Lcom/android/launcher2/HomeItem;

    .line 472
    .local v57, "occupiedSecret":[[[Lcom/android/launcher2/HomeItem;
    const/16 v46, 0x0

    .line 475
    .local v46, "isHotseatDataCorrupt":Z
    :try_start_0
    const-string v5, "_id"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 476
    .local v42, "idIndex":I
    const-string v5, "intent"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v45

    .line 478
    .local v45, "intentIndex":I
    const-string v5, "title"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 480
    .local v11, "titleIndex":I
    const-string v5, "iconType"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 482
    .local v16, "iconTypeIndex":I
    const-string v5, "icon"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 483
    .local v10, "iconIndex":I
    const-string v5, "iconPackage"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 485
    .local v17, "iconPackageIndex":I
    const-string v5, "iconResource"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 487
    .local v18, "iconResourceIndex":I
    const-string v5, "container"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v34

    .line 489
    .local v34, "containerIndex":I
    const-string v5, "itemType"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v50

    .line 491
    .local v50, "itemTypeIndex":I
    const-string v5, "appWidgetId"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 493
    .local v25, "appWidgetIdIndex":I
    const-string v5, "screen"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v65

    .line 495
    .local v65, "screenIndex":I
    const-string v5, "cellX"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 497
    .local v26, "cellXIndex":I
    const-string v5, "cellY"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 499
    .local v27, "cellYIndex":I
    const-string v5, "spanX"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v66

    .line 501
    .local v66, "spanXIndex":I
    const-string v5, "spanY"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v67

    .line 503
    .local v67, "spanYIndex":I
    const-string v5, "color"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v30

    .line 505
    .local v30, "colorIndex":I
    const-string v5, "secret"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 507
    .local v12, "secretIndex":I
    const-string v5, "festival"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v36

    .line 516
    .local v36, "festivalIndex":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_20

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_20

    .line 518
    :try_start_1
    move/from16 v0, v50

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    .line 520
    .local v49, "itemType":I
    sparse-switch v49, :sswitch_data_0

    goto :goto_0

    .line 523
    :sswitch_0
    move/from16 v0, v45

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v44

    .line 525
    .local v44, "intentDescription":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, v44

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 530
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v47, :cond_1

    .line 531
    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v61

    .line 532
    .local v61, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v61, :cond_0

    .line 534
    move-object/from16 v0, v61

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    .line 535
    .local v23, "activity":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v23

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 539
    .end local v23    # "activity":Landroid/content/pm/ActivityInfo;
    .end local v61    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v49, :cond_5

    .line 540
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v8, v6, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v6, v21

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher2/LauncherExModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;III)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v43

    .line 561
    .local v43, "info":Lcom/android/launcher2/HomeShortcutItem;
    :goto_1
    if-eqz v43, :cond_a

    .line 562
    move-object/from16 v0, v43

    iput-object v7, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 563
    move/from16 v0, v42

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    move-object/from16 v0, v43

    iput-wide v14, v0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    .line 564
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 565
    .local v32, "container":J
    move-wide/from16 v0, v32

    move-object/from16 v2, v43

    iput-wide v0, v2, Lcom/android/launcher2/HomeShortcutItem;->container:J

    .line 566
    move/from16 v0, v65

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v43

    iput v5, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    .line 567
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v43

    iput v5, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    .line 568
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v43

    iput v5, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    .line 569
    if-lez v12, :cond_8

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, v43

    iput-boolean v5, v0, Lcom/android/launcher2/HomeShortcutItem;->mSecretItem:Z

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    move-object/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 572
    move-object/from16 v0, v43

    iget-wide v14, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v76, -0x65

    cmp-long v5, v14, v76

    if-nez v5, :cond_2

    .line 573
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wrong hotseat item : we remove the item in launcher.db - item="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    move/from16 v0, v42

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 575
    .local v40, "id":J
    const/16 v46, 0x1

    .line 579
    .end local v40    # "id":J
    :cond_2
    const-wide/16 v14, -0x64

    cmp-long v5, v32, v14

    if-eqz v5, :cond_3

    const-wide/16 v14, -0x65

    cmp-long v5, v32, v14

    if-nez v5, :cond_9

    .line 581
    :cond_3
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :goto_3
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v43

    iget-wide v14, v0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v43

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v43

    invoke-virtual {v5, v6, v0, v9, v10}, Lcom/android/launcher2/LauncherExModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 801
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v32    # "container":J
    .end local v43    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v44    # "intentDescription":Ljava/lang/String;
    .end local v49    # "itemType":I
    :catch_0
    move-exception v35

    .line 802
    .local v35, "e":Ljava/lang/Exception;
    :try_start_4
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "LauncherExModel"

    const-string v6, "Desktop items loading interrupted:"

    move-object/from16 v0, v35

    invoke-static {v5, v6, v0}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 806
    .end local v10    # "iconIndex":I
    .end local v11    # "titleIndex":I
    .end local v12    # "secretIndex":I
    .end local v16    # "iconTypeIndex":I
    .end local v17    # "iconPackageIndex":I
    .end local v18    # "iconResourceIndex":I
    .end local v25    # "appWidgetIdIndex":I
    .end local v26    # "cellXIndex":I
    .end local v27    # "cellYIndex":I
    .end local v30    # "colorIndex":I
    .end local v34    # "containerIndex":I
    .end local v35    # "e":Ljava/lang/Exception;
    .end local v36    # "festivalIndex":I
    .end local v42    # "idIndex":I
    .end local v45    # "intentIndex":I
    .end local v50    # "itemTypeIndex":I
    .end local v65    # "screenIndex":I
    .end local v66    # "spanXIndex":I
    .end local v67    # "spanYIndex":I
    :catchall_0
    move-exception v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v6, :cond_4

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 807
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v8, 0x0

    iput-boolean v8, v6, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    .line 808
    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5

    .line 526
    .restart local v10    # "iconIndex":I
    .restart local v11    # "titleIndex":I
    .restart local v12    # "secretIndex":I
    .restart local v16    # "iconTypeIndex":I
    .restart local v17    # "iconPackageIndex":I
    .restart local v18    # "iconResourceIndex":I
    .restart local v25    # "appWidgetIdIndex":I
    .restart local v26    # "cellXIndex":I
    .restart local v27    # "cellYIndex":I
    .restart local v30    # "colorIndex":I
    .restart local v34    # "containerIndex":I
    .restart local v36    # "festivalIndex":I
    .restart local v42    # "idIndex":I
    .restart local v44    # "intentDescription":Ljava/lang/String;
    .restart local v45    # "intentIndex":I
    .restart local v49    # "itemType":I
    .restart local v50    # "itemTypeIndex":I
    .restart local v65    # "screenIndex":I
    .restart local v66    # "spanXIndex":I
    .restart local v67    # "spanYIndex":I
    :catch_1
    move-exception v35

    .local v35, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 543
    .end local v35    # "e":Ljava/net/URISyntaxException;
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_5
    if-eqz v7, :cond_7

    :try_start_5
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 544
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_6

    .line 545
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadWorkspace : intent.getExtras().isEmpty = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadWorkspace : intent.getExtras().isEmpty = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v8, v6, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v6, v21

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher2/LauncherExModel;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v43

    .restart local v43    # "info":Lcom/android/launcher2/HomeShortcutItem;
    goto/16 :goto_1

    .line 555
    .end local v43    # "info":Lcom/android/launcher2/HomeShortcutItem;
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v15, v5, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v14, v9

    move/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v22, v7

    invoke-virtual/range {v13 .. v22}, Lcom/android/launcher2/LauncherExModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v43

    .restart local v43    # "info":Lcom/android/launcher2/HomeShortcutItem;
    goto/16 :goto_1

    .line 569
    .restart local v32    # "container":J
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 583
    :cond_9
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v32

    invoke-static {v5, v0, v1}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v37

    .line 585
    .local v37, "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    move-object/from16 v0, v37

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->loadItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_3

    .line 592
    .end local v32    # "container":J
    .end local v37    # "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    :cond_a
    move/from16 v0, v42

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 593
    .restart local v40    # "id":J
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v40

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", removing it"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 599
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v40    # "id":J
    .end local v43    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v44    # "intentDescription":Ljava/lang/String;
    :sswitch_1
    move/from16 v0, v42

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 600
    .restart local v40    # "id":J
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v40

    invoke-static {v5, v0, v1}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v37

    .line 602
    .restart local v37    # "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v37

    iput-object v5, v0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    .line 603
    move-wide/from16 v0, v40

    move-object/from16 v2, v37

    iput-wide v0, v2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    .line 604
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v32

    .line 605
    .restart local v32    # "container":J
    move-wide/from16 v0, v32

    move-object/from16 v2, v37

    iput-wide v0, v2, Lcom/android/launcher2/HomeFolderItem;->container:J

    .line 606
    move/from16 v0, v65

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v37

    iput v5, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    .line 607
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v37

    iput v5, v0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    .line 608
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v37

    iput v5, v0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    .line 609
    move/from16 v0, v30

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v37

    iput v5, v0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    .line 610
    if-lez v12, :cond_d

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    :goto_4
    move-object/from16 v0, v37

    iput-boolean v5, v0, Lcom/android/launcher2/HomeFolderItem;->mSecretItem:Z

    .line 612
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 615
    const-wide/16 v14, -0x64

    cmp-long v5, v32, v14

    if-eqz v5, :cond_b

    const-wide/16 v14, -0x65

    cmp-long v5, v32, v14

    if-nez v5, :cond_c

    .line 617
    :cond_b
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    :cond_c
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v37

    iget-wide v14, v0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-object/from16 v0, v37

    iget-wide v14, v0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 610
    :cond_d
    const/4 v5, 0x0

    goto :goto_4

    .line 624
    .end local v32    # "container":J
    .end local v37    # "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    .end local v40    # "id":J
    :sswitch_2
    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 625
    .local v24, "appWidgetId":I
    move/from16 v0, v42

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 627
    .restart local v40    # "id":J
    move-object/from16 v0, v73

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v60

    .line 629
    .local v60, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v60, :cond_e

    if-lez v12, :cond_e

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_e

    .line 630
    const/16 v60, 0x0

    .line 632
    :cond_e
    if-nez v60, :cond_f

    const/4 v5, -0x1

    move/from16 v0, v24

    if-eq v0, v5, :cond_f

    if-lez v36, :cond_f

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_f

    .line 634
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_f
    if-nez v47, :cond_11

    const/4 v5, -0x1

    move/from16 v0, v24

    if-eq v0, v5, :cond_11

    if-nez v60, :cond_11

    .line 638
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v40

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 640
    .local v53, "log":Ljava/lang/String;
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_10

    const-string v5, "LauncherExModel"

    move-object/from16 v0, v53

    invoke-static {v5, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    :cond_10
    sget-object v5, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v53

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 644
    .end local v53    # "log":Ljava/lang/String;
    :cond_11
    const/16 v38, 0x0

    .line 646
    .local v38, "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    if-lez v12, :cond_16

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v48, 0x1

    .line 648
    .local v48, "isSecret":Z
    :goto_5
    if-eqz v48, :cond_12

    .line 649
    sget-object v5, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/MenuAppModel;->setHasPreSecretWidget(Z)V

    .line 652
    :cond_12
    if-eqz v48, :cond_13

    const/4 v5, -0x1

    move/from16 v0, v24

    if-ne v0, v5, :cond_13

    .line 653
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const-string v6, "com.sec.android.app.launcher.prefs"

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v59

    .line 654
    .local v59, "prefs":Landroid/content/SharedPreferences;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PrefsPreSecret"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v59

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 656
    .local v58, "preSecretWidgetName":Ljava/lang/String;
    if-eqz v58, :cond_13

    .line 657
    const-string v5, ":"

    move-object/from16 v0, v58

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 658
    .local v31, "componentName":[Ljava/lang/String;
    new-instance v29, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v31, v5

    const/4 v6, 0x1

    aget-object v6, v31, v6

    move-object/from16 v0, v29

    invoke-direct {v0, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    .local v29, "cn":Landroid/content/ComponentName;
    if-nez v29, :cond_17

    const/16 v38, 0x0

    .line 663
    .end local v29    # "cn":Landroid/content/ComponentName;
    .end local v31    # "componentName":[Ljava/lang/String;
    .end local v58    # "preSecretWidgetName":Ljava/lang/String;
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    :cond_13
    :goto_6
    if-nez v38, :cond_14

    if-eqz v60, :cond_14

    .line 664
    new-instance v38, Lcom/android/launcher2/HomeWidgetItem;

    .end local v38    # "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v38

    move-object/from16 v1, v60

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    .line 666
    .restart local v38    # "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    :cond_14
    if-eqz v38, :cond_0

    .line 668
    move-wide/from16 v0, v40

    move-object/from16 v2, v38

    iput-wide v0, v2, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    .line 669
    move/from16 v0, v65

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    .line 670
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    .line 671
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    .line 672
    move/from16 v0, v66

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    .line 673
    move/from16 v0, v67

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    .line 675
    move/from16 v0, v48

    move-object/from16 v1, v38

    iput-boolean v0, v1, Lcom/android/launcher2/HomeWidgetItem;->mSecretItem:Z

    .line 677
    if-lez v36, :cond_15

    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_15

    .line 678
    move/from16 v0, v36

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->mFestivalType:I

    .line 681
    :cond_15
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v32, v0

    .line 682
    .restart local v32    # "container":J
    const-wide/16 v14, -0x64

    cmp-long v5, v32, v14

    if-eqz v5, :cond_18

    const-wide/16 v14, -0x65

    cmp-long v5, v32, v14

    if-eqz v5, :cond_18

    .line 684
    const-string v5, "LauncherExModel"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 646
    .end local v32    # "container":J
    .end local v48    # "isSecret":Z
    :cond_16
    const/16 v48, 0x0

    goto/16 :goto_5

    .line 659
    .restart local v29    # "cn":Landroid/content/ComponentName;
    .restart local v31    # "componentName":[Ljava/lang/String;
    .restart local v48    # "isSecret":Z
    .restart local v58    # "preSecretWidgetName":Ljava/lang/String;
    .restart local v59    # "prefs":Landroid/content/SharedPreferences;
    :cond_17
    new-instance v38, Lcom/android/launcher2/HomeWidgetItem;

    .end local v38    # "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v38

    move-object/from16 v1, v29

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/content/ComponentName;I)V

    goto/16 :goto_6

    .line 688
    .end local v29    # "cn":Landroid/content/ComponentName;
    .end local v31    # "componentName":[Ljava/lang/String;
    .end local v58    # "preSecretWidgetName":Ljava/lang/String;
    .end local v59    # "prefs":Landroid/content/SharedPreferences;
    .restart local v32    # "container":J
    .restart local v38    # "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    :cond_18
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v14, v5

    move-object/from16 v0, v38

    iput-wide v14, v0, Lcom/android/launcher2/HomeWidgetItem;->container:J

    .line 690
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 693
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v38

    iget-wide v14, v0, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v38

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 700
    .end local v24    # "appWidgetId":I
    .end local v32    # "container":J
    .end local v38    # "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    .end local v40    # "id":J
    .end local v48    # "isSecret":Z
    .end local v60    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_3
    new-instance v72, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-direct/range {v72 .. v72}, Lcom/android/launcher2/SamsungWidgetItem;-><init>()V

    .line 701
    .local v72, "widgetItem":Lcom/android/launcher2/SamsungWidgetItem;
    move/from16 v0, v42

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 702
    .restart local v40    # "id":J
    move-wide/from16 v0, v40

    move-object/from16 v2, v72

    iput-wide v0, v2, Lcom/android/launcher2/SamsungWidgetItem;->mId:J

    .line 703
    move/from16 v0, v65

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v72

    iput v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->mScreen:I

    .line 704
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v72

    iput v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->cellX:I

    .line 705
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v72

    iput v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->cellY:I

    .line 706
    move/from16 v0, v66

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v72

    iput v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->spanX:I

    .line 707
    move/from16 v0, v67

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v72

    iput v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->spanY:I

    .line 708
    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v14, v5

    move-object/from16 v0, v72

    iput-wide v14, v0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    .line 710
    if-lez v12, :cond_19

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    :goto_7
    move-object/from16 v0, v72

    iput-boolean v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->mSecretItem:Z

    .line 712
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v32, v0

    .line 713
    .restart local v32    # "container":J
    const-wide/16 v14, -0x64

    cmp-long v5, v32, v14

    if-eqz v5, :cond_1a

    const-wide/16 v14, -0x65

    cmp-long v5, v32, v14

    if-eqz v5, :cond_1a

    .line 715
    const-string v5, "LauncherExModel"

    const-string v6, "Samsung Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 710
    .end local v32    # "container":J
    :cond_19
    const/4 v5, 0x0

    goto :goto_7

    .line 719
    .restart local v32    # "container":J
    :cond_1a
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v14, v5

    move-object/from16 v0, v72

    iput-wide v14, v0, Lcom/android/launcher2/SamsungWidgetItem;->container:J

    .line 721
    move/from16 v0, v45

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v69

    .line 722
    .local v69, "uri":Ljava/lang/String;
    const/4 v7, 0x0

    .line 724
    .restart local v7    # "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, v69

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    .line 728
    :try_start_7
    move-object/from16 v0, v72

    iput-object v7, v0, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    .line 730
    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v62

    .line 731
    .local v62, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v62, :cond_1b

    .line 732
    const-string v5, "LauncherExModel"

    const-string v6, "Can\'t resolve SamsungWidget\'s activity. Deleting it."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 725
    .end local v62    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v35

    .restart local v35    # "e":Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 737
    .end local v35    # "e":Ljava/net/URISyntaxException;
    .restart local v62    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_1b
    :try_start_8
    move-object/from16 v0, v62

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 745
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    move-object/from16 v3, v72

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 748
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v72

    iget-wide v14, v0, Lcom/android/launcher2/SamsungWidgetItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v72

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v72

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 738
    :catch_3
    move-exception v35

    .line 739
    .local v35, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "LauncherExModel"

    const-string v6, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 753
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v32    # "container":J
    .end local v35    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v40    # "id":J
    .end local v62    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v69    # "uri":Ljava/lang/String;
    .end local v72    # "widgetItem":Lcom/android/launcher2/SamsungWidgetItem;
    :sswitch_4
    move/from16 v0, v45

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v69

    .line 754
    .restart local v69    # "uri":Ljava/lang/String;
    const/4 v7, 0x0

    .line 756
    .restart local v7    # "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_a
    move-object/from16 v0, v69

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v7

    .line 760
    :try_start_b
    sget-object v55, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 761
    .local v55, "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v55

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v68

    .line 762
    .local v68, "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    move/from16 v0, v42

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v40

    .line 763
    .restart local v40    # "id":J
    if-nez v68, :cond_1c

    .line 764
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SurfaceWidget-"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\'s provider info could not be found. Deleting it."

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 757
    .end local v40    # "id":J
    .end local v55    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v68    # "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :catch_4
    move-exception v35

    .local v35, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 769
    .end local v35    # "e":Ljava/net/URISyntaxException;
    .restart local v40    # "id":J
    .restart local v55    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .restart local v68    # "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :cond_1c
    new-instance v64, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-direct/range {v64 .. v64}, Lcom/android/launcher2/SurfaceWidgetItem;-><init>()V

    .line 770
    .local v64, "sSurfaceWidgetItem":Lcom/android/launcher2/SurfaceWidgetItem;
    move-wide/from16 v0, v40

    move-object/from16 v2, v64

    iput-wide v0, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mId:J

    .line 771
    move/from16 v0, v65

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v64

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    .line 772
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v64

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->cellX:I

    .line 773
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v64

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->cellY:I

    .line 774
    move/from16 v0, v66

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v64

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->spanX:I

    .line 775
    move/from16 v0, v67

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v64

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->spanY:I

    .line 776
    move/from16 v0, v25

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v14, v5

    move-object/from16 v0, v64

    iput-wide v14, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    .line 777
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v64

    iput-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mThemeName:Ljava/lang/String;

    .line 779
    if-lez v12, :cond_1d

    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, v64

    iput-boolean v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mSecretItem:Z

    .line 781
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v32, v0

    .line 782
    .restart local v32    # "container":J
    const-wide/16 v14, -0x64

    cmp-long v5, v32, v14

    if-eqz v5, :cond_1e

    const-wide/16 v14, -0x65

    cmp-long v5, v32, v14

    if-eqz v5, :cond_1e

    .line 784
    const-string v5, "LauncherExModel"

    const-string v6, "Surface Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 779
    .end local v32    # "container":J
    :cond_1d
    const/4 v5, 0x0

    goto :goto_8

    .line 788
    .restart local v32    # "container":J
    :cond_1e
    move/from16 v0, v34

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v14, v5

    move-object/from16 v0, v64

    iput-wide v14, v0, Lcom/android/launcher2/SurfaceWidgetItem;->container:J

    .line 789
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v64

    iput-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    .line 790
    const-string v5, "instance"

    const/4 v6, -0x1

    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v64

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    .line 792
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_1f

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LauncherModel read out SurfaceWidgetItem mInstance = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v64

    iget v8, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_1f
    move-object/from16 v0, p0

    move-object/from16 v1, v56

    move-object/from16 v2, v57

    move-object/from16 v3, v64

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;[[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 797
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v64

    iget-wide v14, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v64

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v64

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 806
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v32    # "container":J
    .end local v40    # "id":J
    .end local v49    # "itemType":I
    .end local v55    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v64    # "sSurfaceWidgetItem":Lcom/android/launcher2/SurfaceWidgetItem;
    .end local v68    # "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .end local v69    # "uri":Ljava/lang/String;
    :cond_20
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v5, :cond_21

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_21

    .line 807
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    .line 808
    :cond_21
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 811
    if-eqz v46, :cond_22

    .line 812
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->rearrangeHotseatData(Ljava/util/ArrayList;)V

    .line 815
    :cond_22
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Lcom/android/launcher2/LauncherExModel;->updateHiddenAddButtonInHomeFolder(Ljava/util/Map;)V

    .line 817
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_24

    .line 818
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v28

    .line 821
    .local v28, "client":Landroid/content/ContentProviderClient;
    invoke-virtual/range {v51 .. v51}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "i$":Ljava/util/Iterator;
    :cond_23
    :goto_9
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v40

    .line 823
    .restart local v40    # "id":J
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v40

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-eqz v28, :cond_23

    .line 828
    const/4 v5, 0x0

    :try_start_c
    move-wide/from16 v0, v40

    invoke-static {v0, v1, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6, v8}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_9

    .line 829
    :catch_5
    move-exception v35

    .line 830
    .local v35, "e":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_23

    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not remove id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v40

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 836
    .end local v28    # "client":Landroid/content/ContentProviderClient;
    .end local v35    # "e":Landroid/os/RemoteException;
    .end local v39    # "i$":Ljava/util/Iterator;
    .end local v40    # "id":J
    :cond_24
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loaded workspace in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long v14, v14, v70

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const-string v5, "LauncherExModel"

    const-string v6, "workspace layout: "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/16 v75, 0x0

    .local v75, "y":I
    :goto_a
    sget v5, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    move/from16 v0, v75

    if-ge v0, v5, :cond_29

    .line 839
    const-string v52, ""

    .line 840
    .local v52, "line":Ljava/lang/String;
    const/16 v63, 0x0

    .local v63, "s":I
    :goto_b
    move/from16 v0, v63

    move/from16 v1, v54

    if-ge v0, v1, :cond_28

    .line 841
    if-lez v63, :cond_25

    .line 842
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 844
    :cond_25
    const/16 v74, 0x0

    .local v74, "x":I
    :goto_c
    sget v5, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    move/from16 v0, v74

    if-ge v0, v5, :cond_27

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v5, v56, v63

    aget-object v5, v5, v74

    aget-object v5, v5, v75

    if-eqz v5, :cond_26

    const-string v5, "#"

    :goto_d
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 844
    add-int/lit8 v74, v74, 0x1

    goto :goto_c

    .line 845
    :cond_26
    const-string v5, "."

    goto :goto_d

    .line 840
    :cond_27
    add-int/lit8 v63, v63, 0x1

    goto :goto_b

    .line 848
    .end local v74    # "x":I
    :cond_28
    const-string v5, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    add-int/lit8 v75, v75, 0x1

    goto :goto_a

    .line 851
    .end local v52    # "line":Ljava/lang/String;
    .end local v63    # "s":I
    :cond_29
    return-void

    .line 520
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x384 -> :sswitch_3
        0x385 -> :sswitch_4
    .end sparse-switch
.end method

.method private postModelRefreshed()V
    .locals 2

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v1, Lcom/android/launcher2/LauncherExModel$LoaderTask$15;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$15;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1114
    return-void
.end method

.method private rearrangeHotseatData(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/HomeItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 854
    .local p1, "homeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 855
    .local v0, "hotseatItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    const/4 v2, 0x0

    .line 856
    .local v2, "itemPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 857
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 858
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iput v2, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 860
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    invoke-static {v4, v3}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 861
    add-int/lit8 v2, v2, 0x1

    .line 856
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 867
    :cond_1
    return-void
.end method

.method private runBindFestivalPage()V
    .locals 3

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-nez v0, :cond_0

    .line 1319
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v0, Lcom/android/launcher2/LauncherExModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1322
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # getter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherExModel;->access$400(Lcom/android/launcher2/LauncherExModel;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1329
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindFestivalPageModeChange()V

    .line 1332
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindFestivalWorkspace()V

    .line 1333
    return-void
.end method

.method private runBindSecretPage()V
    .locals 3

    .prologue
    .line 1134
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherExModel;->mWorkspaceLoaded:Z

    if-nez v0, :cond_1

    .line 1135
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Expecting AllApps and Workspace to be loaded"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1137
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v1, v0, Lcom/android/launcher2/LauncherExModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1138
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # getter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v0}, Lcom/android/launcher2/LauncherExModel;->access$400(Lcom/android/launcher2/LauncherExModel;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Error! Background loading is already running"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1140
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1145
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretPageModeChange()V

    .line 1147
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->changeScreenIdInHomeDataBase()V

    .line 1148
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretWorkspace()V

    .line 1152
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretAllApps()V

    .line 1153
    return-void
.end method

.method private waitForIdle()V
    .locals 6

    .prologue
    .line 292
    monitor-enter p0

    .line 293
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 294
    .local v0, "workspaceWaitTime":J
    iget-object v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherExModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherExModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 306
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 308
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    :catch_0
    move-exception v2

    goto :goto_0

    .line 314
    :cond_0
    :try_start_2
    const-string v2, "LauncherExModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "waited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms for previous step to finish binding"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    monitor-exit p0

    .line 319
    return-void

    .line 318
    .end local v0    # "workspaceWaitTime":J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    .line 1563
    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 1564
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStep1Finished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStep1Finished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_0
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 323
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v6, v3, Lcom/android/launcher2/LauncherExModel;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 324
    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v7, 0x1

    # setter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v3, v7}, Lcom/android/launcher2/LauncherExModel;->access$402(Lcom/android/launcher2/LauncherExModel;Z)Z

    .line 325
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    const-string v3, "LauncherExModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Begin LoaderTask: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v2, 0x1

    .line 330
    .local v2, "loadWorkspaceFirst":Z
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_1

    .line 392
    :cond_0
    :goto_0
    const-string v3, "LauncherExModel"

    const-string v4, "Comparing loaded icons to database icons"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 394
    .local v1, "key":Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v7, v3, Lcom/android/launcher2/LauncherExModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v6, v7, v3, v4}, Lcom/android/launcher2/LauncherExModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V

    goto :goto_1

    .line 325
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/Object;
    .end local v2    # "loadWorkspaceFirst":Z
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 332
    .restart local v2    # "loadWorkspaceFirst":Z
    :cond_1
    const-string v6, "LauncherExModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting thread priority to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_7

    const-string v3, "DEFAULT"

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v6, v3, Lcom/android/launcher2/LauncherExModel;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 335
    :try_start_2
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_8

    .line 336
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 342
    :goto_3
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherExModel;->hasLocaleChangedLocked()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 343
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherExModel;->setLocaleLocked()V

    .line 344
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    .line 345
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v4, 0x1

    # setter for: Lcom/android/launcher2/LauncherExModel;->mRefreshRequiredInSecretModeChange:Z
    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherExModel;->access$502(Lcom/android/launcher2/LauncherExModel;Z)Z

    .line 346
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherExModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v3}, Lcom/android/launcher2/PkgResCache;->clear()V

    .line 350
    :cond_3
    :goto_4
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 352
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsModeChanged:Z

    if-eqz v3, :cond_4

    .line 353
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindSecretPageModeChange()V

    .line 355
    :cond_4
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsFestivalModeChanged:Z

    if-eqz v3, :cond_5

    .line 356
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->bindFestivalPageModeChange()V

    .line 359
    :cond_5
    const-string v3, "LauncherExModel"

    const-string v4, "step 1: loading workspace"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadAndBindWorkspace()V

    .line 366
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_0

    .line 369
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_6

    .line 370
    const-string v3, "LauncherExModel"

    const-string v4, "Setting thread priority to BACKGROUND"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherExModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 372
    :try_start_3
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_b

    .line 373
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 376
    :goto_5
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 378
    :cond_6
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->waitForIdle()V

    .line 381
    const-string v3, "LauncherExModel"

    const-string v4, "step 2: loading all apps"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->loadAndBindAllApps()V

    .line 387
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherExModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 388
    const/4 v3, 0x0

    :try_start_4
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 389
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 332
    :cond_7
    const-string v3, "BACKGROUND"

    goto/16 :goto_2

    .line 339
    :cond_8
    :try_start_5
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_9

    move v3, v5

    :goto_6
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_3

    .line 350
    :catchall_2
    move-exception v3

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    :cond_9
    move v3, v4

    .line 339
    goto :goto_6

    .line 347
    :cond_a
    :try_start_6
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mAllAppsLoaded:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    if-nez v3, :cond_3

    .line 348
    invoke-direct {p0}, Lcom/android/launcher2/LauncherExModel$LoaderTask;->postModelRefreshed()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 375
    :cond_b
    const/16 v3, 0xa

    :try_start_7
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_5

    .line 376
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v3

    .line 395
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_c
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 397
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherExModel;->mRefreshRequired:Z

    .line 398
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherExModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 400
    :try_start_8
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    # getter for: Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;
    invoke-static {v3}, Lcom/android/launcher2/LauncherExModel;->access$000(Lcom/android/launcher2/LauncherExModel;)Lcom/android/launcher2/LauncherExModel$LoaderTask;

    move-result-object v3

    if-ne v3, p0, :cond_d

    .line 401
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v5, 0x0

    # setter for: Lcom/android/launcher2/LauncherExModel;->mLoaderTask:Lcom/android/launcher2/LauncherExModel$LoaderTask;
    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherExModel;->access$002(Lcom/android/launcher2/LauncherExModel;Lcom/android/launcher2/LauncherExModel$LoaderTask;)Lcom/android/launcher2/LauncherExModel$LoaderTask;

    .line 403
    :cond_d
    iget-object v3, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    const/4 v5, 0x0

    # setter for: Lcom/android/launcher2/LauncherExModel;->mIsLoaderTaskRunning:Z
    invoke-static {v3, v5}, Lcom/android/launcher2/LauncherExModel;->access$402(Lcom/android/launcher2/LauncherExModel;Z)Z

    .line 404
    monitor-exit v4

    .line 405
    return-void

    .line 404
    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v3
.end method

.method public stopLocked()V
    .locals 3

    .prologue
    .line 408
    const-string v0, "LauncherExModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping LoaderTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->mStopped:Z

    .line 410
    iget-object v0, p0, Lcom/android/launcher2/LauncherExModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherExModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherExModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->abortLoader()V

    .line 411
    monitor-enter p0

    .line 412
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 413
    monitor-exit p0

    .line 414
    return-void

    .line 413
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
