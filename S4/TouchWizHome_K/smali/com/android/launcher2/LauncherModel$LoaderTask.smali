.class Lcom/android/launcher2/LauncherModel$LoaderTask;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderTask"
.end annotation


# instance fields
.field private mIsLaunching:Z

.field private mStep1Finished:Z

.field private volatile mStopped:Z

.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Z)V
    .locals 0
    .param p2, "isLaunching"    # Z

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1426
    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    .line 1427
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/LauncherModel$LoaderTask;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel$LoaderTask;
    .param p1, "x1"    # Z

    .prologue
    .line 1420
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel$LoaderTask;

    .prologue
    .line 1420
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherModel$LoaderTask;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/LauncherModel$LoaderTask;

    .prologue
    .line 1420
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    return v0
.end method

.method private bindWorkspace()V
    .locals 24

    .prologue
    .line 2139
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 2141
    .local v16, "t":J
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v20

    if-nez v20, :cond_0

    .line 2143
    const-string v20, "Launcher.Model"

    const-string v21, "LoaderTask running with no launcher"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2301
    :goto_0
    return-void

    .line 2148
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$3;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2158
    new-instance v19, Ljava/util/ArrayList;

    sget-object v20, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Ljava/util/ArrayList;-><init>(I)V

    .line 2159
    .local v19, "workspace":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2160
    .local v9, "hotseat":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher2/HomeItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .line 2161
    .local v14, "res":Landroid/content/res/Resources;
    const/4 v8, 0x0

    .line 2162
    .local v8, "hotSeatCount":I
    const v20, 0x7f0c0025

    move/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    const v21, 0x7f0c0026

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2165
    .local v13, "maxHotseatCellCount":I
    sget-object v20, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/HomeItem;

    .line 2166
    .local v12, "item":Lcom/android/launcher2/HomeItem;
    iget-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x65

    cmp-long v20, v20, v22

    if-nez v20, :cond_2

    add-int/lit8 v20, v13, -0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_2

    .line 2167
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2168
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 2169
    :cond_2
    iget-wide v0, v12, Lcom/android/launcher2/HomeItem;->container:J

    move-wide/from16 v20, v0

    const-wide/16 v22, -0x64

    cmp-long v20, v20, v22

    if-nez v20, :cond_1

    .line 2170
    move-object/from16 v0, v19

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2174
    .end local v12    # "item":Lcom/android/launcher2/HomeItem;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$4;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/android/launcher2/LauncherModel$LoaderTask$4;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/List;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2185
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v4

    .line 2186
    .local v4, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v4, :cond_5

    .line 2187
    move v15, v10

    .line 2188
    .local v15, "start":I
    add-int/lit8 v20, v10, 0x6

    move/from16 v0, v20

    if-gt v0, v4, :cond_4

    const/4 v5, 0x6

    .line 2189
    .local v5, "chunkSize":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$5;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2, v15, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask$5;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/List;II)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2186
    add-int/lit8 v10, v10, 0x6

    goto :goto_2

    .line 2188
    .end local v5    # "chunkSize":I
    :cond_4
    sub-int v5, v4, v10

    goto :goto_3

    .line 2200
    .end local v15    # "start":I
    :cond_5
    new-instance v7, Ljava/util/HashMap;

    sget-object v20, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 2201
    .local v7, "folders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/HomeFolderItem;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$6;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7}, Lcom/android/launcher2/LauncherModel$LoaderTask$6;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/HashMap;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$7;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$7;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2225
    const/4 v6, 0x0

    .line 2227
    .local v6, "currentScreen":I
    sget-object v20, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_6
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/HomeWidgetItem;

    .line 2228
    .local v18, "widget":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 2229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$8;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$8;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 2241
    .end local v18    # "widget":Lcom/android/launcher2/HomeWidgetItem;
    :cond_7
    sget-object v20, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_8
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_9

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/HomeWidgetItem;

    .line 2242
    .restart local v18    # "widget":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    move/from16 v20, v0

    if-eqz v20, :cond_8

    .line 2243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$9;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$9;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/HomeWidgetItem;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 2256
    .end local v18    # "widget":Lcom/android/launcher2/HomeWidgetItem;
    :cond_9
    sget-object v20, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/SamsungWidgetItem;

    .line 2257
    .local v18, "widget":Lcom/android/launcher2/SamsungWidgetItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$10;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$10;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/SamsungWidgetItem;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 2269
    .end local v18    # "widget":Lcom/android/launcher2/SamsungWidgetItem;
    :cond_a
    sget-object v20, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher2/SurfaceWidgetItem;

    .line 2270
    .local v18, "widget":Lcom/android/launcher2/SurfaceWidgetItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$11;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask$11;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Lcom/android/launcher2/SurfaceWidgetItem;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 2282
    .end local v18    # "widget":Lcom/android/launcher2/SurfaceWidgetItem;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$12;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$LoaderTask$12;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    move-object/from16 v20, v0

    new-instance v21, Lcom/android/launcher2/LauncherModel$LoaderTask$13;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$LoaderTask$13;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;J)V

    invoke-virtual/range {v20 .. v21}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z
    .locals 10
    .param p1, "occupied"    # [[[Lcom/android/launcher2/HomeItem;
    .param p2, "item"    # Lcom/android/launcher2/HomeItem;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1637
    iget v0, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 1638
    .local v0, "containerIndex":I
    iget-wide v6, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x65

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1639
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v1

    .line 1640
    .local v1, "maxScreenCount":I
    aget-object v6, p1, v1

    iget v7, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    aget-object v6, v6, v7

    aget-object v6, v6, v4

    if-eqz v6, :cond_1

    .line 1641
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut into hotseat "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into position ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") occupied by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v1

    iget v8, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    aget-object v7, v7, v8

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    .end local v1    # "maxScreenCount":I
    :cond_0
    :goto_0
    return v4

    .line 1646
    .restart local v1    # "maxScreenCount":I
    :cond_1
    aget-object v6, p1, v1

    iget v7, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    aget-object v6, v6, v7

    aput-object p2, v6, v4

    move v4, v5

    .line 1647
    goto :goto_0

    .line 1649
    .end local v1    # "maxScreenCount":I
    :cond_2
    iget-wide v6, p2, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    move v4, v5

    .line 1651
    goto :goto_0

    .line 1655
    :cond_3
    iget v2, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    .local v2, "x":I
    :goto_1
    iget v6, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v7, p2, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_6

    .line 1656
    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    .local v3, "y":I
    :goto_2
    iget v6, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v7, p2, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_5

    .line 1657
    aget-object v6, p1, v0

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    if-eqz v6, :cond_4

    .line 1658
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error loading shortcut "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " into cell ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p2, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") occupied by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p1, v0

    aget-object v7, v7, v2

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1656
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1655
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1667
    .end local v3    # "y":I
    :cond_6
    iget v2, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    :goto_3
    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellX:I

    iget v6, p2, Lcom/android/launcher2/HomeItem;->spanX:I

    add-int/2addr v4, v6

    if-ge v2, v4, :cond_8

    .line 1668
    iget v3, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    .restart local v3    # "y":I
    :goto_4
    iget v4, p2, Lcom/android/launcher2/HomeItem;->cellY:I

    iget v6, p2, Lcom/android/launcher2/HomeItem;->spanY:I

    add-int/2addr v4, v6

    if-ge v3, v4, :cond_7

    .line 1669
    aget-object v4, p1, v0

    aget-object v4, v4, v2

    aput-object p2, v4, v3

    .line 1668
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1667
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v3    # "y":I
    :cond_8
    move v4, v5

    .line 1673
    goto/16 :goto_0
.end method

.method private getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 4

    .prologue
    .line 2127
    const/4 v1, 0x0

    .line 2128
    .local v1, "callbacks":Lcom/android/launcher2/LauncherModel$Callbacks;
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v2, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2129
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    .line 2130
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v1, v0

    .line 2131
    :cond_0
    monitor-exit v3

    .line 2132
    return-object v1

    .line 2131
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadAllApps()V
    .locals 3

    .prologue
    .line 2353
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppLoader;->loadAllItems(Z)Ljava/util/Map;

    move-result-object v0

    .line 2354
    .local v0, "allApps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Lcom/android/launcher2/AppItem;>;"
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 2357
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    .line 2358
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v2, Lcom/android/launcher2/LauncherModel$LoaderTask$16;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/LauncherModel$LoaderTask$16;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2367
    :cond_0
    return-void
.end method

.method private loadAndBindAllApps()V
    .locals 3

    .prologue
    .line 2305
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindAllApps mAllAppsLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-nez v0, :cond_2

    .line 2308
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAllApps()V

    .line 2309
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->getLoaderTaskCallbacks()Lcom/android/launcher2/LauncherModel$Callbacks;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2311
    const-string v0, "Launcher.Model"

    const-string v1, "LoaderTask aborted or running with no launcher (bindAllApps)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_0
    :goto_0
    return-void

    .line 2314
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$14;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$14;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2324
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    if-eqz v0, :cond_0

    .line 2325
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->refreshAllApps()V

    .line 2326
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_0

    .line 2328
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V

    goto :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 3

    .prologue
    .line 1436
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadAndBindWorkspace mWorkspaceLoaded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mRefreshRequired: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v2, v2, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel;->unbindAllHomeItemsOnMainThread()V

    .line 1445
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    if-eqz v0, :cond_1

    .line 1447
    :cond_0
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1448
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1449
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1450
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1451
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1452
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1453
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1455
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadWorkspace()V

    .line 1460
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v0, :cond_3

    .line 1461
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1467
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v0, :cond_2

    .line 1468
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->bindWorkspace()V

    .line 1469
    :cond_2
    return-void

    .line 1463
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    goto :goto_0
.end method

.method private loadWorkspace()V
    .locals 76

    .prologue
    .line 1678
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v68

    .line 1680
    .local v68, "t":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1681
    .local v4, "contentResolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 1682
    .local v20, "manager":Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v73

    .line 1683
    .local v73, "widgets":Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v45

    .line 1685
    .local v45, "isSafeMode":Z
    new-instance v49, Ljava/util/ArrayList;

    invoke-direct/range {v49 .. v49}, Ljava/util/ArrayList;-><init>()V

    .line 1687
    .local v49, "itemsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1693
    .local v9, "c":Landroid/database/Cursor;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getMaxScreenCount()I

    move-result v52

    .line 1694
    .local v52, "maxScreenCount":I
    add-int/lit8 v5, v52, 0x1

    sget v6, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    add-int/lit8 v6, v6, 0x1

    sget v8, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    add-int/lit8 v8, v8, 0x1

    filled-new-array {v5, v6, v8}, [I

    move-result-object v5

    const-class v6, Lcom/android/launcher2/HomeItem;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, [[[Lcom/android/launcher2/HomeItem;

    .line 1697
    .local v54, "occupied":[[[Lcom/android/launcher2/HomeItem;
    const/16 v44, 0x0

    .line 1700
    .local v44, "isHotseatDataCorrupt":Z
    :try_start_0
    const-string v5, "_id"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v37

    .line 1701
    .local v37, "idIndex":I
    const-string v5, "intent"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v43

    .line 1703
    .local v43, "intentIndex":I
    const-string v5, "title"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 1705
    .local v11, "titleIndex":I
    const-string v5, "iconType"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 1707
    .local v15, "iconTypeIndex":I
    const-string v5, "icon"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 1708
    .local v10, "iconIndex":I
    const-string v5, "iconPackage"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 1710
    .local v16, "iconPackageIndex":I
    const-string v5, "iconResource"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    .line 1712
    .local v17, "iconResourceIndex":I
    const-string v5, "container"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v32

    .line 1714
    .local v32, "containerIndex":I
    const-string v5, "itemType"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v48

    .line 1716
    .local v48, "itemTypeIndex":I
    const-string v5, "appWidgetId"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 1718
    .local v24, "appWidgetIdIndex":I
    const-string v5, "screen"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v63

    .line 1720
    .local v63, "screenIndex":I
    const-string v5, "cellX"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 1722
    .local v26, "cellXIndex":I
    const-string v5, "cellY"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 1724
    .local v27, "cellYIndex":I
    const-string v5, "spanX"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v64

    .line 1726
    .local v64, "spanXIndex":I
    const-string v5, "spanY"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v65

    .line 1728
    .local v65, "spanYIndex":I
    const-string v5, "color"

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v29

    .line 1737
    .local v29, "colorIndex":I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v5, :cond_16

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_16

    .line 1739
    :try_start_1
    move/from16 v0, v48

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    .line 1741
    .local v47, "itemType":I
    sparse-switch v47, :sswitch_data_0

    goto :goto_0

    .line 1744
    :sswitch_0
    move/from16 v0, v43

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v42

    .line 1746
    .local v42, "intentDescription":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_2
    move-object/from16 v0, v42

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 1751
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v45, :cond_1

    .line 1752
    const/4 v5, 0x0

    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v58

    .line 1753
    .local v58, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v58, :cond_0

    .line 1755
    move-object/from16 v0, v58

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    .line 1756
    .local v22, "activity":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 1760
    .end local v22    # "activity":Landroid/content/pm/ActivityInfo;
    .end local v58    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_1
    if-nez v47, :cond_4

    .line 1761
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v8, v6, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const/4 v12, -0x1

    move-object/from16 v6, v20

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;III)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v41

    .line 1779
    .local v41, "info":Lcom/android/launcher2/HomeShortcutItem;
    :goto_1
    if-eqz v41, :cond_8

    .line 1780
    move-object/from16 v0, v41

    iput-object v7, v0, Lcom/android/launcher2/HomeShortcutItem;->intent:Landroid/content/Intent;

    .line 1781
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    move-object/from16 v0, v41

    iput-wide v12, v0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    .line 1782
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1783
    .local v30, "container":J
    move-wide/from16 v0, v30

    move-object/from16 v2, v41

    iput-wide v0, v2, Lcom/android/launcher2/HomeShortcutItem;->container:J

    .line 1784
    move/from16 v0, v63

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v41

    iput v5, v0, Lcom/android/launcher2/HomeShortcutItem;->mScreen:I

    .line 1785
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v41

    iput v5, v0, Lcom/android/launcher2/HomeShortcutItem;->cellX:I

    .line 1786
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v41

    iput v5, v0, Lcom/android/launcher2/HomeShortcutItem;->cellY:I

    .line 1789
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1790
    move-object/from16 v0, v41

    iget-wide v12, v0, Lcom/android/launcher2/HomeShortcutItem;->container:J

    const-wide/16 v18, -0x65

    cmp-long v5, v12, v18

    if-nez v5, :cond_2

    .line 1791
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "wrong hotseat item : we remove the item in launcher.db - item="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 1794
    .local v38, "id":J
    const/16 v44, 0x1

    .line 1799
    .end local v38    # "id":J
    :cond_2
    const-wide/16 v12, -0x64

    cmp-long v5, v30, v12

    if-eqz v5, :cond_3

    const-wide/16 v12, -0x65

    cmp-long v5, v30, v12

    if-nez v5, :cond_7

    .line 1801
    :cond_3
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1809
    :goto_2
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v41

    iget-wide v12, v0, Lcom/android/launcher2/HomeShortcutItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v41

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1813
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    sget-object v6, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    move-object/from16 v0, v41

    invoke-virtual {v5, v6, v0, v9, v10}, Lcom/android/launcher2/LauncherModel;->queueIconToBeChecked(Ljava/util/HashMap;Lcom/android/launcher2/HomeShortcutItem;Landroid/database/Cursor;I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 2050
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v30    # "container":J
    .end local v41    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v42    # "intentDescription":Ljava/lang/String;
    .end local v47    # "itemType":I
    :catch_0
    move-exception v33

    .line 2051
    .local v33, "e":Ljava/lang/Exception;
    :try_start_4
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "Launcher.Model"

    const-string v6, "Desktop items loading interrupted:"

    move-object/from16 v0, v33

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 2055
    .end local v10    # "iconIndex":I
    .end local v11    # "titleIndex":I
    .end local v15    # "iconTypeIndex":I
    .end local v16    # "iconPackageIndex":I
    .end local v17    # "iconResourceIndex":I
    .end local v24    # "appWidgetIdIndex":I
    .end local v26    # "cellXIndex":I
    .end local v27    # "cellYIndex":I
    .end local v29    # "colorIndex":I
    .end local v32    # "containerIndex":I
    .end local v33    # "e":Ljava/lang/Exception;
    .end local v37    # "idIndex":I
    .end local v43    # "intentIndex":I
    .end local v48    # "itemTypeIndex":I
    .end local v63    # "screenIndex":I
    .end local v64    # "spanXIndex":I
    .end local v65    # "spanYIndex":I
    :catchall_0
    move-exception v5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v5

    .line 1747
    .restart local v10    # "iconIndex":I
    .restart local v11    # "titleIndex":I
    .restart local v15    # "iconTypeIndex":I
    .restart local v16    # "iconPackageIndex":I
    .restart local v17    # "iconResourceIndex":I
    .restart local v24    # "appWidgetIdIndex":I
    .restart local v26    # "cellXIndex":I
    .restart local v27    # "cellYIndex":I
    .restart local v29    # "colorIndex":I
    .restart local v32    # "containerIndex":I
    .restart local v37    # "idIndex":I
    .restart local v42    # "intentDescription":Ljava/lang/String;
    .restart local v43    # "intentIndex":I
    .restart local v47    # "itemType":I
    .restart local v48    # "itemTypeIndex":I
    .restart local v63    # "screenIndex":I
    .restart local v64    # "spanXIndex":I
    .restart local v65    # "spanYIndex":I
    :catch_1
    move-exception v33

    .local v33, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 1763
    .end local v33    # "e":Ljava/net/URISyntaxException;
    .restart local v7    # "intent":Landroid/content/Intent;
    :cond_4
    if-eqz v7, :cond_6

    :try_start_5
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1765
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_5

    .line 1766
    const-string v5, "Launcher.Model"

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

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadWorkspace : intent.getExtras().isEmpty = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v8, v6, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v6, v20

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfoExtra(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v41

    .restart local v41    # "info":Lcom/android/launcher2/HomeShortcutItem;
    goto/16 :goto_1

    .line 1775
    .end local v41    # "info":Lcom/android/launcher2/HomeShortcutItem;
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v14, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v13, v9

    move/from16 v18, v10

    move/from16 v19, v11

    move-object/from16 v21, v7

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIIILandroid/content/pm/PackageManager;Landroid/content/Intent;)Lcom/android/launcher2/HomeShortcutItem;

    move-result-object v41

    .restart local v41    # "info":Lcom/android/launcher2/HomeShortcutItem;
    goto/16 :goto_1

    .line 1805
    .restart local v30    # "container":J
    :cond_7
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v30

    invoke-static {v5, v0, v1}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v34

    .line 1807
    .local v34, "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    move-object/from16 v0, v34

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/launcher2/HomeFolderItem;->loadItem(Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_2

    .line 1819
    .end local v30    # "container":J
    .end local v34    # "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    :cond_8
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 1820
    .restart local v38    # "id":J
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1821
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error loading shortcut "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", removing it"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1826
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v38    # "id":J
    .end local v41    # "info":Lcom/android/launcher2/HomeShortcutItem;
    .end local v42    # "intentDescription":Ljava/lang/String;
    :sswitch_1
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 1827
    .restart local v38    # "id":J
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-wide/from16 v0, v38

    invoke-static {v5, v0, v1}, Lcom/android/launcher2/LauncherModel;->findOrMakeFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/HomeFolderItem;

    move-result-object v34

    .line 1829
    .restart local v34    # "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v34

    iput-object v5, v0, Lcom/android/launcher2/HomeFolderItem;->mTitle:Ljava/lang/String;

    .line 1830
    move-wide/from16 v0, v38

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/android/launcher2/HomeFolderItem;->mId:J

    .line 1831
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 1832
    .restart local v30    # "container":J
    move-wide/from16 v0, v30

    move-object/from16 v2, v34

    iput-wide v0, v2, Lcom/android/launcher2/HomeFolderItem;->container:J

    .line 1833
    move/from16 v0, v63

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v34

    iput v5, v0, Lcom/android/launcher2/HomeFolderItem;->mScreen:I

    .line 1834
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v34

    iput v5, v0, Lcom/android/launcher2/HomeFolderItem;->cellX:I

    .line 1835
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v34

    iput v5, v0, Lcom/android/launcher2/HomeFolderItem;->cellY:I

    .line 1836
    const/4 v5, -0x1

    move-object/from16 v0, v34

    iput v5, v0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    .line 1837
    sget-boolean v5, Lcom/android/launcher2/LauncherApplication;->sIsFolderColorSupport:Z

    if-eqz v5, :cond_9

    .line 1838
    move/from16 v0, v29

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v34

    iput v5, v0, Lcom/android/launcher2/HomeFolderItem;->mColor:I

    .line 1841
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1844
    const-wide/16 v12, -0x64

    cmp-long v5, v30, v12

    if-eqz v5, :cond_a

    const-wide/16 v12, -0x65

    cmp-long v5, v30, v12

    if-nez v5, :cond_b

    .line 1846
    :cond_a
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1848
    :cond_b
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v34

    iget-wide v12, v0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeFolders:Ljava/util/HashMap;

    move-object/from16 v0, v34

    iget-wide v12, v0, Lcom/android/launcher2/HomeFolderItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v34

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1854
    .end local v30    # "container":J
    .end local v34    # "folderInfo":Lcom/android/launcher2/HomeFolderItem;
    .end local v38    # "id":J
    :sswitch_2
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1855
    .local v23, "appWidgetId":I
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 1857
    .restart local v38    # "id":J
    move-object/from16 v0, v73

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v57

    .line 1859
    .local v57, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v45, :cond_d

    const/4 v5, -0x1

    move/from16 v0, v23

    if-eq v0, v5, :cond_d

    if-nez v57, :cond_d

    .line 1860
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting widget that isn\'t installed anymore: id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v38

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    .line 1861
    .local v51, "log":Ljava/lang/String;
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_c

    .line 1862
    const-string v5, "Launcher.Model"

    move-object/from16 v0, v51

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_c
    sget-object v5, Lcom/android/launcher2/HomeView;->sDumpLogs:Ljava/util/ArrayList;

    move-object/from16 v0, v51

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1864
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1866
    .end local v51    # "log":Ljava/lang/String;
    :cond_d
    const/16 v35, 0x0

    .line 1867
    .local v35, "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    const/16 v46, 0x0

    .line 1868
    .local v46, "isWidgetOnRoamingPage":Z
    if-nez v35, :cond_e

    if-eqz v57, :cond_e

    .line 1869
    new-instance v35, Lcom/android/launcher2/HomeWidgetItem;

    .end local v35    # "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    move-object/from16 v0, v35

    move-object/from16 v1, v57

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/HomeWidgetItem;-><init>(Landroid/appwidget/AppWidgetProviderInfo;I)V

    .line 1873
    .restart local v35    # "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    :cond_e
    if-eqz v35, :cond_0

    .line 1874
    move-wide/from16 v0, v38

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    .line 1875
    move/from16 v0, v63

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v35

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->mScreen:I

    .line 1876
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v35

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->cellX:I

    .line 1877
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v35

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->cellY:I

    .line 1878
    move/from16 v0, v64

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v35

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->spanX:I

    .line 1879
    move/from16 v0, v65

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v35

    iput v5, v0, Lcom/android/launcher2/HomeWidgetItem;->spanY:I

    .line 1882
    move/from16 v0, v43

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v42

    .line 1883
    .restart local v42    # "intentDescription":Ljava/lang/String;
    if-eqz v42, :cond_f

    .line 1885
    const-string v5, ":"

    move-object/from16 v0, v42

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v66

    .line 1886
    .local v66, "str_array":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v56, v66, v5

    .line 1888
    .local v56, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v25

    .line 1889
    .local v25, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v60, Landroid/widget/RemoteViews;

    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher2/HomeWidgetItem;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030009

    move-object/from16 v0, v60

    invoke-direct {v0, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1890
    .local v60, "rv1":Landroid/widget/RemoteViews;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v70

    .line 1891
    .local v70, "title":Ljava/lang/String;
    const v5, 0x7f0f0031

    move-object/from16 v0, v60

    move-object/from16 v1, v70

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1892
    new-instance v40, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    move-object/from16 v0, v40

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1893
    .local v40, "in1":Landroid/content/Intent;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v56

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1894
    const-string v5, "pkgName"

    move-object/from16 v0, v40

    move-object/from16 v1, v56

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1895
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v5}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v40

    invoke-static {v5, v6, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v55

    .line 1896
    .local v55, "pi":Landroid/app/PendingIntent;
    const v5, 0x7f0f0030

    move-object/from16 v0, v60

    move-object/from16 v1, v55

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1897
    move-object/from16 v0, v25

    move/from16 v1, v23

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 1901
    .end local v25    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    .end local v40    # "in1":Landroid/content/Intent;
    .end local v55    # "pi":Landroid/app/PendingIntent;
    .end local v56    # "pkgName":Ljava/lang/String;
    .end local v60    # "rv1":Landroid/widget/RemoteViews;
    .end local v66    # "str_array":[Ljava/lang/String;
    .end local v70    # "title":Ljava/lang/String;
    :cond_f
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v30, v0

    .line 1902
    .restart local v30    # "container":J
    const-wide/16 v12, -0x64

    cmp-long v5, v30, v12

    if-eqz v5, :cond_10

    const-wide/16 v12, -0x65

    cmp-long v5, v30, v12

    if-eqz v5, :cond_10

    .line 1903
    const-string v5, "Launcher.Model"

    const-string v6, "Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1906
    :cond_10
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, v35

    iput-wide v12, v0, Lcom/android/launcher2/HomeWidgetItem;->container:J

    .line 1909
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1912
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v35

    iget-wide v12, v0, Lcom/android/launcher2/HomeWidgetItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v35

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1913
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sAppWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1915
    if-eqz v46, :cond_0

    .line 1916
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object/from16 v0, v35

    invoke-static {v5, v0}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    goto/16 :goto_0

    .line 1923
    .end local v23    # "appWidgetId":I
    .end local v30    # "container":J
    .end local v35    # "homeWidgetItem":Lcom/android/launcher2/HomeWidgetItem;
    .end local v38    # "id":J
    .end local v42    # "intentDescription":Ljava/lang/String;
    .end local v46    # "isWidgetOnRoamingPage":Z
    .end local v57    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_3
    new-instance v72, Lcom/android/launcher2/SamsungWidgetItem;

    invoke-direct/range {v72 .. v72}, Lcom/android/launcher2/SamsungWidgetItem;-><init>()V

    .line 1924
    .local v72, "widgetItem":Lcom/android/launcher2/SamsungWidgetItem;
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 1925
    .restart local v38    # "id":J
    move-wide/from16 v0, v38

    move-object/from16 v2, v72

    iput-wide v0, v2, Lcom/android/launcher2/SamsungWidgetItem;->mId:J

    .line 1926
    move/from16 v0, v63

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v72

    iput v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->mScreen:I

    .line 1927
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v72

    iput v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->cellX:I

    .line 1928
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v72

    iput v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->cellY:I

    .line 1929
    move/from16 v0, v64

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v72

    iput v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->spanX:I

    .line 1930
    move/from16 v0, v65

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v72

    iput v5, v0, Lcom/android/launcher2/SamsungWidgetItem;->spanY:I

    .line 1931
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, v72

    iput-wide v12, v0, Lcom/android/launcher2/SamsungWidgetItem;->widgetId:J

    .line 1933
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v30, v0

    .line 1934
    .restart local v30    # "container":J
    const-wide/16 v12, -0x64

    cmp-long v5, v30, v12

    if-eqz v5, :cond_11

    const-wide/16 v12, -0x65

    cmp-long v5, v30, v12

    if-eqz v5, :cond_11

    .line 1936
    const-string v5, "Launcher.Model"

    const-string v6, "Samsung Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1940
    :cond_11
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, v72

    iput-wide v12, v0, Lcom/android/launcher2/SamsungWidgetItem;->container:J

    .line 1942
    move/from16 v0, v43

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v71

    .line 1943
    .local v71, "uri":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1945
    .restart local v7    # "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_6
    move-object/from16 v0, v71

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v7

    .line 1949
    :try_start_7
    move-object/from16 v0, v72

    iput-object v7, v0, Lcom/android/launcher2/SamsungWidgetItem;->intent:Landroid/content/Intent;

    .line 1952
    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v7, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v59

    .line 1953
    .local v59, "ri":Landroid/content/pm/ResolveInfo;
    if-nez v59, :cond_12

    .line 1954
    const-string v5, "Launcher.Model"

    const-string v6, "Can\'t resolve SamsungWidget\'s activity. Deleting it."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 1946
    .end local v59    # "ri":Landroid/content/pm/ResolveInfo;
    :catch_2
    move-exception v33

    .restart local v33    # "e":Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 1959
    .end local v33    # "e":Ljava/net/URISyntaxException;
    .restart local v59    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_12
    :try_start_8
    move-object/from16 v0, v59

    iget-object v5, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1968
    :try_start_9
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v72

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1971
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v72

    iget-wide v12, v0, Lcom/android/launcher2/SamsungWidgetItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v72

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1972
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sSamsungWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v72

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1960
    :catch_3
    move-exception v33

    .line 1961
    .local v33, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Launcher.Model"

    const-string v6, "SamsungWidget\'s apk has move to sdcard and unmounted. Deleting it."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1963
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1976
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v30    # "container":J
    .end local v33    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v38    # "id":J
    .end local v59    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v71    # "uri":Ljava/lang/String;
    .end local v72    # "widgetItem":Lcom/android/launcher2/SamsungWidgetItem;
    :sswitch_4
    move/from16 v0, v43

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v71

    .line 1977
    .restart local v71    # "uri":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1979
    .restart local v7    # "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_a
    move-object/from16 v0, v71

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_a
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v7

    .line 1983
    :try_start_b
    sget-object v53, Lcom/android/launcher2/SurfaceWidgetPackageManager;->INST:Lcom/android/launcher2/SurfaceWidgetPackageManager;

    .line 1984
    .local v53, "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v53

    invoke-virtual {v0, v5, v6}, Lcom/android/launcher2/SurfaceWidgetPackageManager;->findWidget(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;

    move-result-object v67

    .line 1988
    .local v67, "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    move/from16 v0, v37

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 1989
    .restart local v38    # "id":J
    if-nez v67, :cond_13

    .line 1990
    const-string v5, "Launcher.Model"

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

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v49

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1980
    .end local v38    # "id":J
    .end local v53    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v67    # "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :catch_4
    move-exception v33

    .local v33, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 1995
    .end local v33    # "e":Ljava/net/URISyntaxException;
    .restart local v38    # "id":J
    .restart local v53    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .restart local v67    # "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    :cond_13
    new-instance v62, Lcom/android/launcher2/SurfaceWidgetItem;

    invoke-direct/range {v62 .. v62}, Lcom/android/launcher2/SurfaceWidgetItem;-><init>()V

    .line 1996
    .local v62, "sSurfaceWidgetItem":Lcom/android/launcher2/SurfaceWidgetItem;
    move-wide/from16 v0, v38

    move-object/from16 v2, v62

    iput-wide v0, v2, Lcom/android/launcher2/SurfaceWidgetItem;->mId:J

    .line 1997
    move/from16 v0, v63

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v62

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mScreen:I

    .line 1998
    move/from16 v0, v26

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v62

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->cellX:I

    .line 1999
    move/from16 v0, v27

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v62

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->cellY:I

    .line 2000
    move/from16 v0, v64

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v62

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->spanX:I

    .line 2001
    move/from16 v0, v65

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, v62

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->spanY:I

    .line 2002
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, v62

    iput-wide v12, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mWidgetId:J

    .line 2003
    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "com.samsung.sec.android.SURFACE_WIDGET.themename"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v62

    iput-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mThemeName:Ljava/lang/String;

    .line 2006
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v30, v0

    .line 2007
    .restart local v30    # "container":J
    const-wide/16 v12, -0x64

    cmp-long v5, v30, v12

    if-eqz v5, :cond_14

    const-wide/16 v12, -0x65

    cmp-long v5, v30, v12

    if-eqz v5, :cond_14

    .line 2009
    const-string v5, "Launcher.Model"

    const-string v6, "Surface Widget found where container != CONTAINER_DESKTOP nor CONTAINER_HOTSEAT - ignoring!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2013
    :cond_14
    move/from16 v0, v32

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    int-to-long v12, v5

    move-object/from16 v0, v62

    iput-wide v12, v0, Lcom/android/launcher2/SurfaceWidgetItem;->container:J

    .line 2014
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    move-object/from16 v0, v62

    iput-object v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mComponentName:Landroid/content/ComponentName;

    .line 2015
    const-string v5, "instance"

    const/4 v6, -0x1

    invoke-virtual {v7, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, v62

    iput v5, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    .line 2017
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_15

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LauncherModel read out SurfaceWidgetItem mInstance = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v62

    iget v8, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mInstance:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, v54

    move-object/from16 v2, v62

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$LoaderTask;->checkItemPlacement([[[Lcom/android/launcher2/HomeItem;Lcom/android/launcher2/HomeItem;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2046
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItemIdMap:Ljava/util/HashMap;

    move-object/from16 v0, v62

    iget-wide v12, v0, Lcom/android/launcher2/SurfaceWidgetItem;->mId:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v62

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2047
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sSurfaceWidgets:Ljava/util/ArrayList;

    move-object/from16 v0, v62

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 2055
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v30    # "container":J
    .end local v38    # "id":J
    .end local v47    # "itemType":I
    .end local v53    # "mgr":Lcom/android/launcher2/SurfaceWidgetPackageManager;
    .end local v62    # "sSurfaceWidgetItem":Lcom/android/launcher2/SurfaceWidgetItem;
    .end local v67    # "swpinfo":Lcom/samsung/surfacewidget/SurfaceWidgetProviderInfo;
    .end local v71    # "uri":Ljava/lang/String;
    :cond_16
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2058
    if-eqz v44, :cond_17

    .line 2059
    sget-object v5, Lcom/android/launcher2/LauncherModel;->sHomeItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher2/LauncherModel$LoaderTask;->rearrangeHotseatData(Ljava/util/ArrayList;)V

    .line 2062
    :cond_17
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_19

    .line 2063
    invoke-static {}, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v28

    .line 2066
    .local v28, "client":Landroid/content/ContentProviderClient;
    invoke-virtual/range {v49 .. v49}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v36

    .local v36, "i$":Ljava/util/Iterator;
    :cond_18
    :goto_3
    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface/range {v36 .. v36}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v38

    .line 2068
    .restart local v38    # "id":J
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removed id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    if-eqz v28, :cond_18

    .line 2073
    const/4 v5, 0x0

    :try_start_c
    move-wide/from16 v0, v38

    invoke-static {v0, v1, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v5, v6, v8}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    .line 2076
    :catch_5
    move-exception v33

    .line 2077
    .local v33, "e":Landroid/os/RemoteException;
    sget-boolean v5, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v5, :cond_18

    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not remove id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v38

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2083
    .end local v28    # "client":Landroid/content/ContentProviderClient;
    .end local v33    # "e":Landroid/os/RemoteException;
    .end local v36    # "i$":Ljava/util/Iterator;
    .end local v38    # "id":J
    :cond_19
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loaded workspace in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v68

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    const-string v5, "Launcher.Model"

    const-string v6, "workspace layout: "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    const/16 v75, 0x0

    .local v75, "y":I
    :goto_4
    sget v5, Lcom/android/launcher2/LauncherModel;->sCellCountY:I

    move/from16 v0, v75

    if-ge v0, v5, :cond_1e

    .line 2086
    const-string v50, ""

    .line 2087
    .local v50, "line":Ljava/lang/String;
    const/16 v61, 0x0

    .local v61, "s":I
    :goto_5
    move/from16 v0, v61

    move/from16 v1, v52

    if-ge v0, v1, :cond_1d

    .line 2088
    if-lez v61, :cond_1a

    .line 2089
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 2091
    :cond_1a
    const/16 v74, 0x0

    .local v74, "x":I
    :goto_6
    sget v5, Lcom/android/launcher2/LauncherModel;->sCellCountX:I

    move/from16 v0, v74

    if-ge v0, v5, :cond_1c

    .line 2092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v5, v54, v61

    aget-object v5, v5, v74

    aget-object v5, v5, v75

    if-eqz v5, :cond_1b

    const-string v5, "#"

    :goto_7
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    .line 2091
    add-int/lit8 v74, v74, 0x1

    goto :goto_6

    .line 2092
    :cond_1b
    const-string v5, "."

    goto :goto_7

    .line 2087
    :cond_1c
    add-int/lit8 v61, v61, 0x1

    goto :goto_5

    .line 2095
    .end local v74    # "x":I
    :cond_1d
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " ]"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    add-int/lit8 v75, v75, 0x1

    goto :goto_4

    .line 2098
    .end local v50    # "line":Ljava/lang/String;
    .end local v61    # "s":I
    :cond_1e
    return-void

    .line 1741
    nop

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
    .line 2334
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v1, Lcom/android/launcher2/LauncherModel$LoaderTask$15;

    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$15;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 2350
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
    .line 2101
    .local p1, "homeItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2102
    .local v0, "hotseatItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher2/HomeItem;>;"
    const/4 v2, 0x0

    .line 2103
    .local v2, "itemPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 2104
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iget-wide v4, v3, Lcom/android/launcher2/HomeItem;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 2105
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2106
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    iput v2, v3, Lcom/android/launcher2/HomeItem;->mScreen:I

    .line 2107
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/HomeItem;

    invoke-static {v4, v3}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/HomeItem;)V

    .line 2108
    add-int/lit8 v2, v2, 0x1

    .line 2103
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2115
    :cond_1
    return-void
.end method

.method private waitForIdle()V
    .locals 6

    .prologue
    .line 1475
    monitor-enter p0

    .line 1476
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1478
    .local v0, "workspaceWaitTime":J
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$LoaderTask$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$1;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher2/DeferredHandler;->postIdle(Ljava/lang/Runnable;)V

    .line 1491
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 1493
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1494
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1499
    :cond_0
    :try_start_2
    const-string v2, "Launcher.Model"

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

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    monitor-exit p0

    .line 1504
    return-void

    .line 1503
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
    .line 2370
    sget-boolean v0, Lcom/android/launcher2/LauncherModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_0

    .line 2371
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mIsLaunching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2372
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStopped="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2373
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLoaderTask.mStep1Finished="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStep1Finished:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const-string v0, "Launcher.Model"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    :cond_0
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 1430
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/16 v4, 0xa

    const/4 v5, 0x0

    .line 1514
    const-string v3, "Launcher.Model"

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

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/4 v2, 0x1

    .line 1518
    .local v2, "loadWorkspaceFirst":Z
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-eqz v3, :cond_1

    .line 1599
    :cond_0
    :goto_0
    const-string v3, "Launcher.Model"

    const-string v4, "Comparing loaded icons to database icons"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1601
    .local v1, "key":Ljava/lang/Object;
    iget-object v6, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v7, v3, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    move-object v3, v1

    check-cast v3, Lcom/android/launcher2/HomeShortcutItem;

    sget-object v4, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v6, v7, v3, v4}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/HomeShortcutItem;[B)V

    goto :goto_1

    .line 1526
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "key":Ljava/lang/Object;
    :cond_1
    const-string v6, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting thread priority to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_5

    const-string v3, "DEFAULT"

    :goto_2
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v6, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1529
    :try_start_0
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_6

    .line 1530
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1536
    :goto_3
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherModel;->hasLocaleChangedLocked()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1537
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-virtual {v3}, Lcom/android/launcher2/LauncherModel;->setLocaleLocked()V

    .line 1538
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    .line 1539
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mPkgResCache:Lcom/android/launcher2/PkgResCache;

    invoke-virtual {v3}, Lcom/android/launcher2/PkgResCache;->clear()V

    .line 1554
    :cond_3
    :goto_4
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1557
    const-string v3, "Launcher.Model"

    const-string v4, "step 1: loading workspace"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindWorkspace()V

    .line 1564
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_0

    .line 1570
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_4

    .line 1571
    const-string v3, "Launcher.Model"

    const-string v4, "Setting thread priority to BACKGROUND"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1573
    :try_start_1
    sget-boolean v3, Lcom/android/launcher2/LauncherModel;->UseLauncherHighPriority:Z

    if-eqz v3, :cond_9

    .line 1574
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1579
    :goto_5
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1581
    :cond_4
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->waitForIdle()V

    .line 1585
    const-string v3, "Launcher.Model"

    const-string v4, "step 2: loading all apps"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->loadAndBindAllApps()V

    .line 1593
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v4, v3, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1594
    const/4 v3, 0x0

    :try_start_2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1595
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1526
    :cond_5
    const-string v3, "BACKGROUND"

    goto :goto_2

    .line 1533
    :cond_6
    :try_start_3
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mIsLaunching:Z

    if-eqz v3, :cond_7

    move v3, v5

    :goto_6
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_3

    .line 1554
    :catchall_1
    move-exception v3

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_7
    move v3, v4

    .line 1533
    goto :goto_6

    .line 1540
    :cond_8
    :try_start_4
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v3, v3, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    if-nez v3, :cond_3

    .line 1552
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->postModelRefreshed()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 1577
    :cond_9
    const/16 v3, 0xa

    :try_start_5
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_5

    .line 1579
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 1603
    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_a
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sDbIconCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1605
    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    if-nez v3, :cond_b

    .line 1607
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-boolean v5, v3, Lcom/android/launcher2/LauncherModel;->mRefreshRequired:Z

    .line 1608
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v3, v3, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    new-instance v4, Lcom/android/launcher2/LauncherModel$LoaderTask$2;

    invoke-direct {v4, p0}, Lcom/android/launcher2/LauncherModel$LoaderTask$2;-><init>(Lcom/android/launcher2/LauncherModel$LoaderTask;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1623
    :cond_b
    return-void
.end method

.method public stopLocked()V
    .locals 3

    .prologue
    .line 1626
    const-string v0, "Launcher.Model"

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

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->mStopped:Z

    .line 1628
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$LoaderTask;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mMenuAppLoader:Lcom/android/launcher2/MenuAppLoader;

    invoke-virtual {v0}, Lcom/android/launcher2/MenuAppLoader;->abortLoader()V

    .line 1630
    monitor-enter p0

    .line 1631
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1632
    monitor-exit p0

    .line 1633
    return-void

    .line 1632
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
