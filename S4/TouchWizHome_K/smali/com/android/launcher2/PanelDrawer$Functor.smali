.class Lcom/android/launcher2/PanelDrawer$Functor;
.super Lcom/android/launcher2/DrawGLFunction$Callback;
.source "PanelDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/PanelDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Functor"
.end annotation


# instance fields
.field mAlpha:F

.field mBackgroundDarken:F

.field mBaseDarken:F

.field mBlend:Z

.field mHeight:I

.field mWidth:I

.field final synthetic this$0:Lcom/android/launcher2/PanelDrawer;


# direct methods
.method constructor <init>(Lcom/android/launcher2/PanelDrawer;FFZ)V
    .locals 1
    .param p2, "backgroundDarken"    # F
    .param p3, "baseDarken"    # F
    .param p4, "blend"    # Z

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    invoke-direct {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;-><init>()V

    .line 331
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mAlpha:F

    .line 332
    iput p2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBackgroundDarken:F

    .line 333
    iput p3, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBaseDarken:F

    .line 334
    iput-boolean p4, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBlend:Z

    .line 335
    return-void
.end method


# virtual methods
.method public drawGL([F)V
    .locals 9
    .param p1, "transform"    # [F

    .prologue
    const/4 v1, 0x2

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 347
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    # getter for: Lcom/android/launcher2/PanelDrawer;->mRes:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/android/launcher2/PanelDrawer;->access$000(Lcom/android/launcher2/PanelDrawer;)Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    # getter for: Lcom/android/launcher2/PanelDrawer;->mPaused:Z
    invoke-static {v0}, Lcom/android/launcher2/PanelDrawer;->access$100(Lcom/android/launcher2/PanelDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    # getter for: Lcom/android/launcher2/PanelDrawer;->mInitialized:Z
    invoke-static {v0}, Lcom/android/launcher2/PanelDrawer;->access$200(Lcom/android/launcher2/PanelDrawer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 351
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    invoke-virtual {v0}, Lcom/android/launcher2/PanelDrawer;->loadResourceOnRenderThread()V

    .line 352
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    # setter for: Lcom/android/launcher2/PanelDrawer;->mInitialized:Z
    invoke-static {v0, v6}, Lcom/android/launcher2/PanelDrawer;->access$202(Lcom/android/launcher2/PanelDrawer;Z)Z

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    # getter for: Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I
    invoke-static {v0}, Lcom/android/launcher2/PanelDrawer;->access$300(Lcom/android/launcher2/PanelDrawer;)I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mWidth:I

    iget-object v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    # getter for: Lcom/android/launcher2/PanelDrawer;->mLastWidth:I
    invoke-static {v2}, Lcom/android/launcher2/PanelDrawer;->access$400(Lcom/android/launcher2/PanelDrawer;)I

    move-result v2

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mHeight:I

    iget-object v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    # getter for: Lcom/android/launcher2/PanelDrawer;->mLastHeight:I
    invoke-static {v2}, Lcom/android/launcher2/PanelDrawer;->access$500(Lcom/android/launcher2/PanelDrawer;)I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 356
    :cond_3
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mWidth:I

    # setter for: Lcom/android/launcher2/PanelDrawer;->mLastWidth:I
    invoke-static {v0, v2}, Lcom/android/launcher2/PanelDrawer;->access$402(Lcom/android/launcher2/PanelDrawer;I)I

    .line 357
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mHeight:I

    # setter for: Lcom/android/launcher2/PanelDrawer;->mLastHeight:I
    invoke-static {v0, v2}, Lcom/android/launcher2/PanelDrawer;->access$502(Lcom/android/launcher2/PanelDrawer;I)I

    .line 358
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    # invokes: Lcom/android/launcher2/PanelDrawer;->loadVBOs()V
    invoke-static {v0}, Lcom/android/launcher2/PanelDrawer;->access$600(Lcom/android/launcher2/PanelDrawer;)V

    .line 361
    :cond_4
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBlend:Z

    if-eqz v0, :cond_7

    .line 362
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 363
    const v0, 0x8006

    invoke-static {v0}, Landroid/opengl/GLES20;->glBlendEquation(I)V

    .line 364
    const/16 v0, 0x303

    invoke-static {v6, v0}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 369
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 371
    const v0, 0x8892

    iget-object v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    # getter for: Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I
    invoke-static {v2}, Lcom/android/launcher2/PanelDrawer;->access$300(Lcom/android/launcher2/PanelDrawer;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 372
    const v0, 0x8893

    iget-object v2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    # getter for: Lcom/android/launcher2/PanelDrawer;->mIndiciesBuffer:I
    invoke-static {v2}, Lcom/android/launcher2/PanelDrawer;->access$700(Lcom/android/launcher2/PanelDrawer;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 374
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 375
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maTextureCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 377
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maPositionHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x10

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 379
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maTextureCoordHandle:I

    const/16 v2, 0x1406

    const/16 v4, 0x10

    const/16 v5, 0x8

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 382
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muMVMatrixHandle:I

    invoke-static {v0, v6, v3, p1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 383
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muPMatrixHandle:I

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget-object v1, v1, Lcom/android/launcher2/PanelDrawer;->mProjectionMatrix:[F

    invoke-static {v0, v6, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 384
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muAlpha:I

    iget v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mAlpha:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 385
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBlend:Z

    if-eqz v0, :cond_8

    .line 386
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muBaseDarken:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 387
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muBackgroundDarken:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 397
    :goto_2
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muHighlightXMLHandle:I

    invoke-static {v0, v8, v8}, Landroid/opengl/GLES20;->glUniform2f(IFF)V

    .line 399
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->msTextureHandle:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 400
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->msHighlightHandle:I

    invoke-static {v0, v6}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 402
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 403
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v1, v1, Lcom/android/launcher2/PanelDrawer;->mTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 404
    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 405
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v1, v1, Lcom/android/launcher2/PanelDrawer;->mHighlightTexture:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 409
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 411
    const/4 v0, 0x4

    const/16 v1, 0x36

    const/16 v2, 0x1403

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    .line 416
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maTextureCoordHandle:I

    if-eqz v0, :cond_5

    .line 417
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maTextureCoordHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 418
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maPositionHandle:I

    if-eqz v0, :cond_6

    .line 419
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->maPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 422
    :cond_6
    const v0, 0x8892

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 423
    const v0, 0x8893

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    goto/16 :goto_0

    .line 366
    :cond_7
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto/16 :goto_1

    .line 389
    :cond_8
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget-boolean v0, v0, Lcom/android/launcher2/PanelDrawer;->mIgnoreDarken:Z

    if-eqz v0, :cond_9

    .line 390
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muBackgroundDarken:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 391
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muBaseDarken:I

    invoke-static {v0, v7}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/16 :goto_2

    .line 393
    :cond_9
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muBackgroundDarken:I

    iget v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBackgroundDarken:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 394
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer$Functor;->this$0:Lcom/android/launcher2/PanelDrawer;

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->muBaseDarken:I

    iget v1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBaseDarken:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    goto/16 :goto_2
.end method

.method public set(IIFFFZ)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "alpha"    # F
    .param p4, "backgroundDarken"    # F
    .param p5, "baseDarken"    # F
    .param p6, "blend"    # Z

    .prologue
    .line 338
    iput p3, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mAlpha:F

    .line 339
    iput p4, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBackgroundDarken:F

    .line 340
    iput p5, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBaseDarken:F

    .line 341
    iput-boolean p6, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mBlend:Z

    .line 342
    iput p1, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mWidth:I

    .line 343
    iput p2, p0, Lcom/android/launcher2/PanelDrawer$Functor;->mHeight:I

    .line 344
    return-void
.end method
