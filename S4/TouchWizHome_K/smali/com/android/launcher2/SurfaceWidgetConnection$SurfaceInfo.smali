.class final Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;
.super Ljava/lang/Object;
.source "SurfaceWidgetConnection.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/SurfaceWidgetConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;
    }
.end annotation


# instance fields
.field private final mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

.field private mOrientation:I

.field private mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

.field private final mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

.field public mWasDestroyed:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;Lcom/android/launcher2/SurfaceWidgetConnection$Name;Lcom/android/launcher2/SurfaceWidgetView;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;
    .param p2, "name"    # Lcom/android/launcher2/SurfaceWidgetConnection$Name;
    .param p3, "view"    # Lcom/android/launcher2/SurfaceWidgetView;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    .line 234
    iput-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 237
    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    .line 239
    iput-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mWasDestroyed:Z

    .line 248
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    .line 249
    iput-object p2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    .line 250
    iput-object p3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    .line 251
    invoke-virtual {p3}, Lcom/android/launcher2/SurfaceWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    .line 252
    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;)Lcom/android/launcher2/SurfaceWidgetView;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    return-object v0
.end method


# virtual methods
.method public getLatestSurfaceState()Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    return-object v0
.end method

.method isSameOrientation(I)Z
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 394
    iget v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 10
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 257
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->wasTextureDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->updateSurfaceTextureIfNeeded()V

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->releaseSurface()V

    .line 262
    iput-object p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 263
    new-instance v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v0, v1, p2, p3}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;-><init>(Landroid/view/Surface;II)V

    iput-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    .line 266
    const/4 v5, 0x0

    .line 267
    .local v5, "spanX":I
    const/4 v6, 0x0

    .line 268
    .local v6, "spanY":I
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 269
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v0, :cond_2

    move-object v7, v9

    .line 270
    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 271
    .local v7, "clp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v5, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 272
    iget v6, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 275
    .end local v7    # "clp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    const/4 v4, 0x0

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceSizeChanged(Landroid/view/Surface;IIZII)V

    .line 276
    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceTextureAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v8

    .line 280
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 292
    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s surface texture was destroyed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->setDestroyed(Z)V

    .line 321
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 11
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iput p2, v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->width:I

    .line 329
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iput p3, v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->height:I

    .line 331
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v10, v0, Landroid/content/res/Configuration;->orientation:I

    .line 332
    .local v10, "orientation":I
    iput v10, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mOrientation:I

    .line 334
    const/4 v5, 0x0

    .line 335
    .local v5, "spanX":I
    const/4 v6, 0x0

    .line 336
    .local v6, "spanY":I
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 337
    .local v9, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v0, v9, Lcom/android/launcher2/CellLayout$LayoutParams;

    if-eqz v0, :cond_0

    move-object v7, v9

    .line 338
    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 339
    .local v7, "clp":Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v5, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 340
    iget v6, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 343
    .end local v7    # "clp":Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v1, v1, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    const/4 v4, 0x1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceSizeChanged(Landroid/view/Surface;IIZII)V

    .line 344
    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onSurfaceSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :cond_1
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v8

    .line 348
    .local v8, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mServiceConn:Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;

    invoke-virtual {v0, v8}, Lcom/android/launcher2/SurfaceWidgetConnection$ServiceConn;->onSurfaceWidgetError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 357
    return-void
.end method

.method public releaseSurface()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 360
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    if-eqz v0, :cond_1

    .line 361
    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s surface is being released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    iget-object v0, v0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 366
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSavedSurfaceState:Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo$SavedSurfaceState;

    .line 369
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_3

    .line 370
    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 371
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'s surface texture is being released"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 374
    iput-object v3, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 376
    :cond_3
    return-void
.end method

.method setDestroyed(Z)V
    .locals 0
    .param p1, "destroyed"    # Z

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mWasDestroyed:Z

    .line 403
    return-void
.end method

.method public updateSurfaceTextureIfNeeded()V
    .locals 3

    .prologue
    .line 406
    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Checking SurfaceTexture if it needs to be updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->wasTextureDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    iget-object v1, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/SurfaceWidgetView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 410
    # getter for: Lcom/android/launcher2/SurfaceWidgetConnection;->DEBUG:Z
    invoke-static {}, Lcom/android/launcher2/SurfaceWidgetConnection;->access$100()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    const-string v0, "SurfaceWidgetConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mName:Lcom/android/launcher2/SurfaceWidgetConnection$Name;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SurfaceTexture was set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->invalidate()V

    .line 413
    iget-object v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mSurfaceWidgetView:Lcom/android/launcher2/SurfaceWidgetView;

    invoke-virtual {v0}, Lcom/android/launcher2/SurfaceWidgetView;->requestLayout()V

    .line 415
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->setDestroyed(Z)V

    .line 416
    return-void
.end method

.method wasTextureDestroyed()Z
    .locals 1

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/android/launcher2/SurfaceWidgetConnection$SurfaceInfo;->mWasDestroyed:Z

    return v0
.end method
