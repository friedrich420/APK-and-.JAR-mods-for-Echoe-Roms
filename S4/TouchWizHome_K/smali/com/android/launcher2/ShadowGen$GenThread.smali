.class Lcom/android/launcher2/ShadowGen$GenThread;
.super Ljava/lang/Thread;
.source "ShadowGen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/ShadowGen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GenThread"
.end annotation


# static fields
.field private static final BITMAP_PROCESS_BLK_SIZE:I = 0x4

.field static final EGL_CONTEXT_CLIENT_VERSION:I = 0x3098

.field static final EGL_OPENGL_ES2_BIT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ShadowGen$GenThread"

.field private static final sFragmentSource:Ljava/lang/String; = "precision mediump float;\nvarying vec3 vPosition;\nuniform sampler2D sTexture;\nvec4 light_intersect(vec3 worldPosition, sampler2D texture, float lightRadius, float angle) {\n    vec3 lightCenter = vec3(0., 15., 200.);\n\n    float s = sin(angle);\n    float c = cos(angle);\n\n    vec3 lightPos = lightCenter + vec3(c*lightRadius, s*lightRadius, 0.);\n\n    vec3 lightDir = normalize(worldPosition - lightPos);\n    float d = 0. - worldPosition.z / lightDir.z;\n    vec3 plane = lightDir*d + worldPosition;\n\n    return texture2D(texture, plane.xy*vec2(1, -1) + vec2(.5,.5));\n}\nvoid shadow(out vec4 alpha, in vec3 worldPosition, in sampler2D texture) {\n    vec4 shadow = vec4(0., 0., 0., 0.);\n        shadow = light_intersect(worldPosition, texture, 0., radians(0.));\n    shadow = shadow/(1.);\n\n    alpha = shadow*shadow;\n}\nvoid main() {\n    vec4 alpha;\n    vec3 worldPosition = vPosition;\n\n    shadow(alpha, worldPosition, sTexture);\n\n    gl_FragColor = alpha*.13;\n}\n"

.field private static final sVertexSource:Ljava/lang/String; = "attribute vec2 aPosition;\nvarying vec3 vPosition;\nuniform mat4 uProjMat;\nuniform mat4 uModMat;\nvoid main() {\n  vPosition = (uModMat * vec4(aPosition,0,1.)).xyz;\n  gl_Position = (uProjMat * uModMat) * vec4(aPosition,0,1.);\n}\n"


# instance fields
.field private mContinue:Z

.field private mEgl:Ljavax/microedition/khronos/egl/EGL10;

.field private mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

.field private mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

.field private mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

.field private mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

.field mProgram:I

.field private mShadowHeight:I

.field private mShadowWidth:I

.field private mTmpTex:Landroid/graphics/Bitmap;

.field maPositionHandle:I

.field muModMatHandle:I

.field muProjMatHandle:I

.field final synthetic this$0:Lcom/android/launcher2/ShadowGen;


# direct methods
.method constructor <init>(Lcom/android/launcher2/ShadowGen;)V
    .locals 1

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mContinue:Z

    .line 281
    return-void
.end method

.method private checkCurrent()V
    .locals 5

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    const/16 v2, 0x3059

    invoke-interface {v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentSurface(I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eglMakeCurrent failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v2}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v2

    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 575
    :cond_1
    return-void
.end method

.method private checkEglError()V
    .locals 4

    .prologue
    .line 545
    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 546
    .local v0, "error":I
    const/16 v1, 0x3000

    if-eq v0, v1, :cond_0

    .line 547
    const-string v1, "ShadowGen$GenThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EGL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    return-void
.end method

.method private checkGlError()V
    .locals 1

    .prologue
    .line 553
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/launcher2/ShadowGen$GenThread;->checkGlError(Ljava/lang/String;)V

    .line 554
    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .line 557
    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 558
    const-string v1, "ShadowGen$GenThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GL error = 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_0
    return-void
.end method

.method private chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 628
    new-array v5, v4, [I

    .line 629
    .local v5, "configsCount":[I
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 630
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen$GenThread;->getConfig()[I

    move-result-object v2

    .line 631
    .local v2, "configSpec":[I
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 632
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eglChooseConfig failed "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v4

    invoke-static {v4}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_0
    aget v0, v5, v6

    if-lez v0, :cond_1

    .line 635
    aget-object v0, v3, v6

    .line 637
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 514
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/android/launcher2/ShadowGen$GenThread;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 515
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 540
    :cond_0
    :goto_0
    return v2

    .line 519
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/android/launcher2/ShadowGen$GenThread;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 520
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 521
    goto :goto_0

    .line 524
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 525
    .local v2, "program":I
    if-eqz v2, :cond_0

    .line 526
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 527
    const-string v5, "glAttachShader"

    invoke-direct {p0, v5}, Lcom/android/launcher2/ShadowGen$GenThread;->checkGlError(Ljava/lang/String;)V

    .line 528
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 529
    const-string v5, "glAttachShader"

    invoke-direct {p0, v5}, Lcom/android/launcher2/ShadowGen$GenThread;->checkGlError(Ljava/lang/String;)V

    .line 530
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 531
    new-array v0, v6, [I

    .line 532
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 533
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 534
    const-string v4, "ShadowGen$GenThread"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v4, "ShadowGen$GenThread"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 537
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private doBitmaps([Lcom/android/launcher2/ShadowGen$QueuedBitmap;[Landroid/graphics/Bitmap;)V
    .locals 7
    .param p1, "sources"    # [Lcom/android/launcher2/ShadowGen$QueuedBitmap;
    .param p2, "res"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 415
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpTex:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 417
    const/4 v1, 0x0

    .line 418
    .local v1, "last_i":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 419
    aget-object v3, p1, v0

    if-nez v3, :cond_1

    .line 424
    :cond_0
    const/16 v3, 0xde1

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpTex:Landroid/graphics/Bitmap;

    invoke-static {v3, v6, v4, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 426
    invoke-static {v5, v5, v5, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 427
    const/16 v3, 0x4000

    invoke-static {v3}, Landroid/opengl/GLES20;->glClear(I)V

    .line 429
    const/4 v3, 0x6

    const/4 v4, 0x4

    invoke-static {v3, v6, v4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 431
    const/4 v0, 0x0

    :goto_1
    if-gt v0, v1, :cond_2

    .line 432
    iget v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowWidth:I

    iget v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowHeight:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 433
    .local v2, "out":Landroid/graphics/Bitmap;
    aput-object v2, p2, v0

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 420
    .end local v2    # "out":Landroid/graphics/Bitmap;
    :cond_1
    aget-object v3, p1, v0

    invoke-virtual {v3}, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpTex:Landroid/graphics/Bitmap;

    invoke-static {v3, v0, v4}, Lcom/android/launcher2/ShadowGen;->nCompositeLayer(Landroid/graphics/Bitmap;ILandroid/graphics/Bitmap;)Z

    .line 421
    move v1, v0

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_2
    add-int/lit8 v3, v1, 0x1

    invoke-static {p2, v3}, Lcom/android/launcher2/ShadowGen;->nExtractLayers([Landroid/graphics/Bitmap;I)Z

    .line 436
    return-void
.end method

.method private finishGL()V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 564
    iget-object v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v1, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v2, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    .line 565
    return-void
.end method

.method private getConfig()[I
    .locals 1

    .prologue
    .line 641
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x0
        0x3023
        0x0
        0x3022
        0x0
        0x3021
        0x8
        0x3025
        0x0
        0x3026
        0x0
        0x3038
    .end array-data
.end method

.method private initGL()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    .line 578
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v3

    check-cast v3, Ljavax/microedition/khronos/egl/EGL10;

    iput-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    .line 580
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    .line 581
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_DISPLAY:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-ne v3, v4, :cond_0

    .line 582
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglGetDisplay failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 586
    :cond_0
    new-array v2, v6, [I

    .line 587
    .local v2, "version":[I
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-interface {v3, v4, v2}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 588
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglInitialize failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher2/ShadowGen$GenThread;->chooseEglConfig()Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    .line 593
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v3, :cond_2

    .line 594
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "eglConfig not initialized"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 597
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/launcher2/ShadowGen$GenThread;->createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    .line 599
    const/4 v3, 0x5

    new-array v1, v3, [I

    const/4 v3, 0x0

    const/16 v4, 0x3057

    aput v4, v1, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowWidth:I

    aput v4, v1, v3

    const/16 v3, 0x3056

    aput v3, v1, v6

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowHeight:I

    aput v4, v1, v3

    const/4 v3, 0x4

    const/16 v4, 0x3038

    aput v4, v1, v3

    .line 603
    .local v1, "pbufferAttribs":[I
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-interface {v3, v4, v5, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 605
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v4, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    if-ne v3, v4, :cond_6

    .line 606
    :cond_3
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v3}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v0

    .line 607
    .local v0, "error":I
    const/16 v3, 0x300b

    if-ne v0, v3, :cond_5

    .line 608
    const-string v3, "ShadowGen$GenThread"

    const-string v4, "createWindowSurface returned EGL_BAD_NATIVE_WINDOW."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    .end local v0    # "error":I
    :cond_4
    return-void

    .line 611
    .restart local v0    # "error":I
    :cond_5
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createWindowSurface failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 615
    .end local v0    # "error":I
    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v4, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v6, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglSurface:Ljavax/microedition/khronos/egl/EGLSurface;

    iget-object v7, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEglContext:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v3, v4, v5, v6, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 616
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "eglMakeCurrent failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mEgl:Ljavax/microedition/khronos/egl/EGL10;

    invoke-interface {v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetError()I

    move-result v5

    invoke-static {v5}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 497
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 498
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 499
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 500
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 501
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 502
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 503
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 504
    const-string v2, "ShadowGen$GenThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v2, "ShadowGen$GenThread"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 507
    const/4 v1, 0x0

    .line 510
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method

.method private notifyCallbacks([Lcom/android/launcher2/ShadowGen$QueuedBitmap;[Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "qbs"    # [Lcom/android/launcher2/ShadowGen$QueuedBitmap;
    .param p2, "res"    # [Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 399
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 400
    aget-object v3, p1, v0

    if-nez v3, :cond_1

    .line 407
    :cond_0
    return-void

    .line 401
    :cond_1
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/android/launcher2/ShadowGen$QueuedBitmap;->callbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ShadowGen$CallbackEntry;

    .line 402
    .local v2, "qe":Lcom/android/launcher2/ShadowGen$CallbackEntry;
    aget-object v3, p2, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/ShadowGen$CallbackEntry;->post(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 404
    .end local v2    # "qe":Lcom/android/launcher2/ShadowGen$CallbackEntry;
    :cond_2
    aput-object v4, p1, v0

    .line 405
    aput-object v4, p2, v0

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public compilePrograms()V
    .locals 2

    .prologue
    .line 489
    const-string v0, "attribute vec2 aPosition;\nvarying vec3 vPosition;\nuniform mat4 uProjMat;\nuniform mat4 uModMat;\nvoid main() {\n  vPosition = (uModMat * vec4(aPosition,0,1.)).xyz;\n  gl_Position = (uProjMat * uModMat) * vec4(aPosition,0,1.);\n}\n"

    const-string v1, "precision mediump float;\nvarying vec3 vPosition;\nuniform sampler2D sTexture;\nvec4 light_intersect(vec3 worldPosition, sampler2D texture, float lightRadius, float angle) {\n    vec3 lightCenter = vec3(0., 15., 200.);\n\n    float s = sin(angle);\n    float c = cos(angle);\n\n    vec3 lightPos = lightCenter + vec3(c*lightRadius, s*lightRadius, 0.);\n\n    vec3 lightDir = normalize(worldPosition - lightPos);\n    float d = 0. - worldPosition.z / lightDir.z;\n    vec3 plane = lightDir*d + worldPosition;\n\n    return texture2D(texture, plane.xy*vec2(1, -1) + vec2(.5,.5));\n}\nvoid shadow(out vec4 alpha, in vec3 worldPosition, in sampler2D texture) {\n    vec4 shadow = vec4(0., 0., 0., 0.);\n        shadow = light_intersect(worldPosition, texture, 0., radians(0.));\n    shadow = shadow/(1.);\n\n    alpha = shadow*shadow;\n}\nvoid main() {\n    vec4 alpha;\n    vec3 worldPosition = vPosition;\n\n    shadow(alpha, worldPosition, sTexture);\n\n    gl_FragColor = alpha*.13;\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/ShadowGen$GenThread;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mProgram:I

    .line 490
    iget v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mProgram:I

    const-string v1, "uProjMat"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->muProjMatHandle:I

    .line 491
    iget v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mProgram:I

    const-string v1, "uModMat"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->muModMatHandle:I

    .line 492
    iget v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/ShadowGen$GenThread;->maPositionHandle:I

    .line 493
    invoke-static {}, Landroid/opengl/GLES20;->glReleaseShaderCompiler()V

    .line 494
    return-void
.end method

.method createContext(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLContext;
    .locals 2
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "eglDisplay"    # Ljavax/microedition/khronos/egl/EGLDisplay;
    .param p3, "eglConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 623
    const/4 v1, 0x3

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 624
    .local v0, "attrib_list":[I
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {p1, p2, p3, v1, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglCreateContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;Ljavax/microedition/khronos/egl/EGLContext;[I)Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    return-object v1

    .line 623
    nop

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data
.end method

.method public run()V
    .locals 43

    .prologue
    .line 285
    const v9, 0x3dcccccd    # 0.1f

    .line 286
    .local v9, "near":F
    const/high16 v10, 0x41200000    # 10.0f

    .line 289
    .local v10, "far":F
    const/16 v4, 0x10

    new-array v3, v4, [F

    .line 290
    .local v3, "proj":[F
    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v10}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 293
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5, v6, v7}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 295
    const/16 v4, 0x10

    new-array v0, v4, [F

    move-object/from16 v33, v0

    .line 296
    .local v33, "modmat":[F
    const/4 v4, 0x0

    move-object/from16 v0, v33

    invoke-static {v0, v4}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 297
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, -0x42333333    # -0.1f

    # getter for: Lcom/android/launcher2/ShadowGen;->mAppShadowOffsetY:I
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->access$200()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    move-object/from16 v0, v33

    invoke-static {v0, v4, v5, v6, v7}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 302
    const/4 v4, 0x4

    new-array v15, v4, [F

    fill-array-data v15, :array_0

    .line 303
    .local v15, "tl":[F
    const/4 v4, 0x4

    new-array v0, v4, [F

    move-object/from16 v20, v0

    fill-array-data v20, :array_1

    .line 304
    .local v20, "br":[F
    const/4 v4, 0x4

    new-array v11, v4, [F

    .line 305
    .local v11, "tlMultRes":[F
    const/4 v4, 0x4

    new-array v0, v4, [F

    move-object/from16 v28, v0

    .line 306
    .local v28, "brMultRes":[F
    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v13, v3

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 307
    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, v28

    move-object/from16 v18, v3

    invoke-static/range {v16 .. v21}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 308
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x3

    aget v5, v11, v5

    div-float v32, v4, v5

    .line 309
    .local v32, "l":F
    const/4 v4, 0x1

    aget v4, v11, v4

    const/4 v5, 0x3

    aget v5, v11, v5

    div-float v37, v4, v5

    .line 310
    .local v37, "t":F
    const/4 v4, 0x0

    aget v4, v28, v4

    const/4 v5, 0x3

    aget v5, v28, v5

    div-float v35, v4, v5

    .line 311
    .local v35, "r":F
    const/4 v4, 0x1

    aget v4, v28, v4

    const/4 v5, 0x3

    aget v5, v28, v5

    div-float v27, v4, v5

    .line 313
    .local v27, "b":F
    const/high16 v4, 0x40000000    # 2.0f

    # getter for: Lcom/android/launcher2/ShadowGen;->mAppIconSize:I
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->access$300()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v35, v32

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowWidth:I

    .line 314
    const/high16 v4, 0x40000000    # 2.0f

    # getter for: Lcom/android/launcher2/ShadowGen;->mAppIconSize:I
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->access$300()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v27, v37

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mShadowHeight:I

    .line 318
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/ShadowGen$GenThread;->initGL()V

    .line 319
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/ShadowGen$GenThread;->compilePrograms()V

    .line 321
    const/16 v4, 0xb44

    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 323
    const/16 v4, 0x20

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v40

    .line 326
    .local v40, "verticies":Ljava/nio/FloatBuffer;
    const/high16 v32, -0x40800000    # -1.0f

    const/high16 v37, 0x3f800000    # 1.0f

    const/high16 v35, 0x3f800000    # 1.0f

    const/high16 v27, -0x40800000    # -1.0f

    .line 327
    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v32, v4, v5

    const/4 v5, 0x1

    aput v37, v4, v5

    const/4 v5, 0x2

    aput v35, v4, v5

    const/4 v5, 0x3

    aput v37, v4, v5

    const/4 v5, 0x4

    aput v35, v4, v5

    const/4 v5, 0x5

    aput v27, v4, v5

    const/4 v5, 0x6

    aput v32, v4, v5

    const/4 v5, 0x7

    aput v27, v4, v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 335
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v38, v0

    .line 336
    .local v38, "temp":[I
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v38

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 337
    const/4 v4, 0x0

    aget v41, v38, v4

    .line 339
    .local v41, "verticiesBuffer":I
    const v4, 0x8892

    move/from16 v0, v41

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 340
    const v4, 0x8892

    invoke-virtual/range {v40 .. v40}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    const v6, 0x88e4

    move-object/from16 v0, v40

    invoke-static {v4, v5, v0, v6}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 342
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mProgram:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 344
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->maPositionHandle:I

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/ShadowGen$GenThread;->maPositionHandle:I

    move/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1406

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-static/range {v21 .. v26}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 347
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->muProjMatHandle:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v3, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 348
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->muModMatHandle:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v33

    invoke-static {v4, v5, v6, v0, v7}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 350
    const/4 v4, 0x4

    new-array v0, v4, [Lcom/android/launcher2/ShadowGen$QueuedBitmap;

    move-object/from16 v34, v0

    .line 351
    .local v34, "qbs":[Lcom/android/launcher2/ShadowGen$QueuedBitmap;
    const/4 v4, 0x4

    new-array v0, v4, [Landroid/graphics/Bitmap;

    move-object/from16 v36, v0

    .line 353
    .local v36, "res":[Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/ShadowGen$GenThread;->checkCurrent()V

    .line 355
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v39, v0

    .line 356
    .local v39, "textures":[I
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 357
    const/16 v4, 0xde1

    const/4 v5, 0x0

    aget v5, v39, v5

    invoke-static {v4, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 359
    const/16 v4, 0xde1

    const/16 v5, 0x2801

    const v6, 0x46180400    # 9729.0f

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 360
    const/16 v4, 0xde1

    const/16 v5, 0x2800

    const v6, 0x46180400    # 9729.0f

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 361
    const/16 v4, 0xde1

    const/16 v5, 0x2802

    const v6, 0x47012f00    # 33071.0f

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 362
    const/16 v4, 0xde1

    const/16 v5, 0x2803

    const v6, 0x47012f00    # 33071.0f

    invoke-static {v4, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 364
    # getter for: Lcom/android/launcher2/ShadowGen;->mAppIconSize:I
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->access$300()I

    move-result v4

    div-int/lit8 v42, v4, 0x2

    .line 365
    .local v42, "w":I
    # getter for: Lcom/android/launcher2/ShadowGen;->mAppIconSize:I
    invoke-static {}, Lcom/android/launcher2/ShadowGen;->access$300()I

    move-result v4

    div-int/lit8 v30, v4, 0x2

    .line 366
    .local v30, "h":I
    add-int/lit8 v4, v42, 0x2

    add-int/lit8 v5, v30, 0x2

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mTmpTex:Landroid/graphics/Bitmap;

    .line 368
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mContinue:Z

    if-eqz v4, :cond_3

    .line 369
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    # getter for: Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/launcher2/ShadowGen;->access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 370
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    # getter for: Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/launcher2/ShadowGen;->access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 372
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    # getter for: Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/launcher2/ShadowGen;->access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 373
    :catch_0
    move-exception v29

    .line 374
    .local v29, "e":Ljava/lang/InterruptedException;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->mContinue:Z

    .line 378
    .end local v29    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/16 v31, 0x0

    .local v31, "i":I
    :goto_2
    move-object/from16 v0, v34

    array-length v4, v0

    move/from16 v0, v31

    if-ge v0, v4, :cond_2

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    # getter for: Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/launcher2/ShadowGen;->access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher2/ShadowGen$GenThread;->this$0:Lcom/android/launcher2/ShadowGen;

    # getter for: Lcom/android/launcher2/ShadowGen;->mQueue:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/launcher2/ShadowGen;->access$400(Lcom/android/launcher2/ShadowGen;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/ShadowGen$QueuedBitmap;

    aput-object v4, v34, v31

    .line 378
    :goto_3
    add-int/lit8 v31, v31, 0x1

    goto :goto_2

    .line 382
    :cond_1
    const/4 v4, 0x0

    aput-object v4, v34, v31

    goto :goto_3

    .line 385
    .end local v31    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v31    # "i":I
    :cond_2
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 387
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ShadowGen$GenThread;->doBitmaps([Lcom/android/launcher2/ShadowGen$QueuedBitmap;[Landroid/graphics/Bitmap;)V

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/ShadowGen$GenThread;->notifyCallbacks([Lcom/android/launcher2/ShadowGen$QueuedBitmap;[Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 393
    .end local v31    # "i":I
    :cond_3
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v39

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 395
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/ShadowGen$GenThread;->finishGL()V

    .line 396
    return-void

    .line 302
    nop

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        0x3f000000    # 0.5f
        0x3e4ccccd    # 0.2f
        0x3f7ae148    # 0.98f
    .end array-data

    .line 303
    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        -0x41000000    # -0.5f
        0x3e4ccccd    # 0.2f
        0x3f7ae148    # 0.98f
    .end array-data
.end method
