.class Lcom/android/launcher2/PanelDrawer;
.super Ljava/lang/Object;
.source "PanelDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PanelDrawer$PanelDrawable;,
        Lcom/android/launcher2/PanelDrawer$Functor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PanelDrawer"

.field private static final sFragmentSource:Ljava/lang/String; = "precision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec2 vHighlightCoord;\nuniform sampler2D sTexture;\nuniform sampler2D sHighlight;\nuniform float uAlpha;\nuniform float uBackgroundDarken;\nuniform float uBaseDarken;\nvoid main() {\n  vec4 sampled = texture2D(sTexture, vTextureCoord);\n  float highlight = texture2D(sHighlight, vHighlightCoord).a;\n  float highlightMask = sampled.b; \n  float maskedHighlight = highlight*highlightMask; \n  float value = (sampled.g + maskedHighlight)*uAlpha;\n  float alpha = (sampled.r + maskedHighlight)*uAlpha + mix(uBackgroundDarken, uBaseDarken, sampled.b);\n  gl_FragColor = vec4(value, value, value, alpha);\n}\n"

.field private static final sVertexSource:Ljava/lang/String; = "uniform mat4 uPMatrix;\nuniform mat4 uMVMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec2 vHighlightCoord;\nuniform vec2 uHighlightXMA;\nvoid main() {\n  gl_Position = (uPMatrix*uMVMatrix)*vec4(aPosition,0,1.);\n  vTextureCoord = aTextureCoord;\n  vHighlightCoord.x = (gl_Position.x/gl_Position.w)*uHighlightXMA[0]+uHighlightXMA[1];\n  vHighlightCoord.y = aTextureCoord.y;\n}\n"


# instance fields
.field protected mExpandX:I

.field protected mExpandY:I

.field mHighlightTexture:I

.field mIgnoreDarken:Z

.field private mIndiciesBuffer:I

.field private mIndiciesData:[S

.field private mInitialized:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mPaused:Z

.field mProgram:I

.field mProjectionMatrix:[F

.field private mRes:Landroid/content/res/Resources;

.field mTexture:I

.field protected mTextureHeight:I

.field protected mTextureWidth:I

.field private mVerticiesBuffer:I

.field private mVerticiesData:[F

.field mViewportHeight:I

.field mViewportWidth:I

.field maPositionHandle:I

.field maTextureCoordHandle:I

.field msHighlightHandle:I

.field msTextureHandle:I

.field muAlpha:I

.field muBackgroundDarken:I

.field muBaseDarken:I

.field muHighlightXMLHandle:I

.field muMVMatrixHandle:I

.field muPMatrixHandle:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-boolean v0, p0, Lcom/android/launcher2/PanelDrawer;->mIgnoreDarken:Z

    .line 121
    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mLastWidth:I

    .line 122
    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mLastHeight:I

    .line 125
    iput-boolean v0, p0, Lcom/android/launcher2/PanelDrawer;->mInitialized:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PanelDrawer;->mPaused:Z

    .line 496
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/PanelDrawer;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/PanelDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer;->mPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/PanelDrawer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/launcher2/PanelDrawer;->mInitialized:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher2/PanelDrawer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/launcher2/PanelDrawer;->mInitialized:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher2/PanelDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/PanelDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mLastWidth:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/launcher2/PanelDrawer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/launcher2/PanelDrawer;->mLastWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher2/PanelDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mLastHeight:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/PanelDrawer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/launcher2/PanelDrawer;->mLastHeight:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher2/PanelDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/launcher2/PanelDrawer;->loadVBOs()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher2/PanelDrawer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/PanelDrawer;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesBuffer:I

    return v0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 459
    const v5, 0x8b31

    invoke-direct {p0, v5, p1}, Lcom/android/launcher2/PanelDrawer;->loadShader(ILjava/lang/String;)I

    move-result v3

    .line 460
    .local v3, "vertexShader":I
    if-nez v3, :cond_1

    move v2, v4

    .line 485
    :cond_0
    :goto_0
    return v2

    .line 464
    :cond_1
    const v5, 0x8b30

    invoke-direct {p0, v5, p2}, Lcom/android/launcher2/PanelDrawer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 465
    .local v1, "pixelShader":I
    if-nez v1, :cond_2

    move v2, v4

    .line 466
    goto :goto_0

    .line 469
    :cond_2
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 470
    .local v2, "program":I
    if-eqz v2, :cond_0

    .line 471
    invoke-static {v2, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 472
    const-string v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PanelDrawer;->checkGlError(Ljava/lang/String;)V

    .line 473
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 474
    const-string v5, "glAttachShader"

    invoke-virtual {p0, v5}, Lcom/android/launcher2/PanelDrawer;->checkGlError(Ljava/lang/String;)V

    .line 475
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 476
    new-array v0, v6, [I

    .line 477
    .local v0, "linkStatus":[I
    const v5, 0x8b82

    invoke-static {v2, v5, v0, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 478
    aget v4, v0, v4

    if-eq v4, v6, :cond_0

    .line 479
    const-string v4, "PanelDrawer"

    const-string v5, "Could not link program: "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v4, "PanelDrawer"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 482
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 442
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 443
    .local v1, "shader":I
    if-eqz v1, :cond_0

    .line 444
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 445
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 446
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 447
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 448
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 449
    const-string v2, "PanelDrawer"

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

    .line 450
    const-string v2, "PanelDrawer"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 452
    const/4 v1, 0x0

    .line 455
    .end local v0    # "compiled":[I
    :cond_0
    return v1
.end method

.method private loadTexture(Landroid/content/res/Resources;I)I
    .locals 11
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "resourceId"    # I

    .prologue
    const/4 v5, 0x1

    const v10, 0x47012f00    # 33071.0f

    const v9, 0x46180400    # 9729.0f

    const/4 v1, 0x0

    const/16 v0, 0xde1

    .line 171
    new-array v7, v5, [I

    .line 172
    .local v7, "temp":[I
    invoke-static {v5, v7, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 173
    aget v8, v7, v1

    .line 174
    .local v8, "texture":I
    invoke-static {v0, v8}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 175
    const/16 v5, 0x2801

    invoke-static {v0, v5, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 177
    const/16 v5, 0x2800

    invoke-static {v0, v5, v9}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 180
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 181
    .local v6, "opts":Landroid/graphics/BitmapFactory$Options;
    invoke-static {p1, p2, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 182
    .local v3, "b":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_1

    .line 183
    const v5, 0x7f020102

    if-ne p2, v5, :cond_0

    .line 184
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->extractAlpha()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 185
    :cond_0
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v5, p0, Lcom/android/launcher2/PanelDrawer;->mTextureWidth:I

    .line 186
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v5, p0, Lcom/android/launcher2/PanelDrawer;->mTextureHeight:I

    .line 187
    invoke-static {v3}, Landroid/opengl/GLUtils;->getInternalFormat(Landroid/graphics/Bitmap;)I

    move-result v2

    .line 188
    .local v2, "internalFormat":I
    invoke-static {v3}, Landroid/opengl/GLUtils;->getType(Landroid/graphics/Bitmap;)I

    move-result v4

    .local v4, "type":I
    move v5, v1

    .line 189
    invoke-static/range {v0 .. v5}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;II)V

    .line 190
    const/16 v1, 0x2802

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 192
    const/16 v1, 0x2803

    invoke-static {v0, v1, v10}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 196
    .end local v2    # "internalFormat":I
    .end local v4    # "type":I
    :cond_1
    return v8
.end method

.method private loadVBOs()V
    .locals 10

    .prologue
    const v9, 0x88e4

    const v8, 0x8893

    const v7, 0x8892

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 299
    invoke-direct {p0}, Lcom/android/launcher2/PanelDrawer;->setNinePatch()V

    .line 304
    iget-object v3, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    .line 306
    .local v0, "indicies":Ljava/nio/ShortBuffer;
    iget-object v3, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 308
    iget-object v3, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 310
    .local v2, "verticies":Ljava/nio/FloatBuffer;
    iget-object v3, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    invoke-virtual {v2, v3}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 312
    iget v3, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I

    if-nez v3, :cond_0

    .line 313
    new-array v1, v6, [I

    .line 314
    .local v1, "vboIds":[I
    invoke-static {v6, v1, v5}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 315
    aget v3, v1, v5

    iput v3, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I

    .line 316
    const/4 v3, 0x1

    aget v3, v1, v3

    iput v3, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesBuffer:I

    .line 319
    .end local v1    # "vboIds":[I
    :cond_0
    iget v3, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I

    invoke-static {v7, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 320
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v7, v3, v2, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 322
    iget v3, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesBuffer:I

    invoke-static {v8, v3}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 323
    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v8, v3, v0, v9}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 324
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/android/launcher2/PanelDrawer;->mInitialized:Z

    .line 140
    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesBuffer:I

    .line 141
    return-void
.end method

.method private setNinePatch()V
    .locals 43

    .prologue
    .line 230
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->mLastWidth:I

    move/from16 v42, v0

    .line 231
    .local v42, "w":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->mLastHeight:I

    move/from16 v33, v0

    .line 233
    .local v33, "h":I
    const/16 v2, 0x90

    new-array v2, v2, [F

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    .line 234
    const/16 v2, 0x36

    new-array v2, v2, [S

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    .line 246
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->mTextureWidth:I

    move/from16 v37, v0

    .line 247
    .local v37, "surfaceWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PanelDrawer;->mTextureHeight:I

    move/from16 v36, v0

    .line 248
    .local v36, "surfaceHeight":I
    move/from16 v35, v37

    .line 249
    .local v35, "insetWidth":I
    move/from16 v34, v36

    .line 251
    .local v34, "insetHeight":I
    const/16 v38, 0x0

    .line 252
    .local v38, "vx0":F
    const/16 v40, 0x0

    .line 253
    .local v40, "vy0":F
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v39, v0

    .line 254
    .local v39, "vx3":F
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v41, v0

    .line 259
    .local v41, "vy3":F
    move/from16 v0, v42

    move/from16 v1, v35

    if-gt v0, v1, :cond_0

    .line 261
    const/4 v10, 0x0

    .line 262
    .local v10, "tx1":F
    move/from16 v0, v37

    int-to-float v2, v0

    move/from16 v0, v37

    int-to-float v3, v0

    div-float v20, v2, v3

    .line 263
    .local v20, "tx2":F
    const/4 v6, 0x0

    .line 264
    .local v6, "vx1":F
    move/from16 v0, v42

    int-to-float v0, v0

    move/from16 v16, v0

    .line 272
    .local v16, "vx2":F
    :goto_0
    move/from16 v0, v33

    move/from16 v1, v34

    if-gt v0, v1, :cond_1

    .line 274
    const/4 v11, 0x0

    .line 275
    .local v11, "ty1":F
    move/from16 v0, v36

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    div-float v30, v2, v3

    .line 276
    .local v30, "ty2":F
    const/4 v7, 0x0

    .line 277
    .local v7, "vy1":F
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v26, v0

    .line 285
    .local v26, "vy2":F
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 286
    const/4 v13, 0x1

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 v12, p0

    move v14, v6

    move/from16 v17, v7

    move/from16 v18, v10

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 287
    const/4 v15, 0x2

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v14, p0

    move/from16 v18, v39

    move/from16 v19, v7

    move/from16 v23, v11

    invoke-direct/range {v14 .. v23}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 289
    const/16 v22, 0x3

    const/16 v23, 0x0

    const/16 v27, 0x0

    move-object/from16 v21, p0

    move/from16 v24, v7

    move/from16 v25, v6

    move/from16 v28, v11

    move/from16 v29, v10

    invoke-direct/range {v21 .. v30}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 290
    const/4 v5, 0x4

    move-object/from16 v4, p0

    move/from16 v8, v16

    move/from16 v9, v26

    move/from16 v12, v20

    move/from16 v13, v30

    invoke-direct/range {v4 .. v13}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 291
    const/4 v15, 0x5

    const/high16 v22, 0x3f800000    # 1.0f

    move-object/from16 v14, p0

    move/from16 v17, v7

    move/from16 v18, v39

    move/from16 v19, v26

    move/from16 v21, v11

    move/from16 v23, v30

    invoke-direct/range {v14 .. v23}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 293
    const/16 v24, 0x6

    const/16 v25, 0x0

    const/16 v29, 0x0

    const/high16 v32, 0x3f800000    # 1.0f

    move-object/from16 v23, p0

    move/from16 v27, v6

    move/from16 v28, v41

    move/from16 v31, v10

    invoke-direct/range {v23 .. v32}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 294
    const/16 v24, 0x7

    const/high16 v32, 0x3f800000    # 1.0f

    move-object/from16 v23, p0

    move/from16 v25, v6

    move/from16 v27, v16

    move/from16 v28, v41

    move/from16 v29, v10

    move/from16 v31, v20

    invoke-direct/range {v23 .. v32}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 295
    const/16 v15, 0x8

    const/high16 v22, 0x3f800000    # 1.0f

    const/high16 v23, 0x3f800000    # 1.0f

    move-object/from16 v14, p0

    move/from16 v17, v26

    move/from16 v18, v39

    move/from16 v19, v41

    move/from16 v21, v30

    invoke-direct/range {v14 .. v23}, Lcom/android/launcher2/PanelDrawer;->setQuad(IFFFFFFFF)V

    .line 296
    return-void

    .line 268
    .end local v6    # "vx1":F
    .end local v7    # "vy1":F
    .end local v10    # "tx1":F
    .end local v11    # "ty1":F
    .end local v16    # "vx2":F
    .end local v20    # "tx2":F
    .end local v26    # "vy2":F
    .end local v30    # "ty2":F
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PanelDrawer;->mExpandX:I

    int-to-float v2, v2

    move/from16 v0, v37

    int-to-float v3, v0

    div-float v20, v2, v3

    .restart local v20    # "tx2":F
    move/from16 v10, v20

    .line 269
    .restart local v10    # "tx1":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PanelDrawer;->mExpandX:I

    int-to-float v3, v3

    add-float v6, v2, v3

    .line 270
    .restart local v6    # "vx1":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PanelDrawer;->mExpandX:I

    sub-int v2, v37, v2

    int-to-float v2, v2

    sub-float v16, v39, v2

    .restart local v16    # "vx2":F
    goto/16 :goto_0

    .line 281
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PanelDrawer;->mExpandY:I

    int-to-float v2, v2

    move/from16 v0, v36

    int-to-float v3, v0

    div-float v30, v2, v3

    .restart local v30    # "ty2":F
    move/from16 v11, v30

    .line 282
    .restart local v11    # "ty1":F
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher2/PanelDrawer;->mExpandY:I

    int-to-float v3, v3

    add-float v7, v2, v3

    .line 283
    .restart local v7    # "vy1":F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher2/PanelDrawer;->mExpandY:I

    sub-int v2, v36, v2

    int-to-float v2, v2

    sub-float v26, v41, v2

    .restart local v26    # "vy2":F
    goto/16 :goto_1
.end method

.method private setQuad(IFFFFFFFF)V
    .locals 8
    .param p1, "quadNumber"    # I
    .param p2, "left"    # F
    .param p3, "top"    # F
    .param p4, "right"    # F
    .param p5, "bottom"    # F
    .param p6, "tl"    # F
    .param p7, "tt"    # F
    .param p8, "tr"    # F
    .param p9, "tb"    # F

    .prologue
    .line 213
    mul-int/lit8 v0, p1, 0x4

    mul-int/lit8 v7, v0, 0x4

    .line 216
    .local v7, "o":I
    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    add-int/lit8 v2, v7, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PanelDrawer;->setVertex([FIFFFF)V

    .line 217
    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    add-int/lit8 v2, v7, 0x4

    move-object v0, p0

    move v3, p4

    move v4, p3

    move/from16 v5, p8

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PanelDrawer;->setVertex([FIFFFF)V

    .line 218
    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    add-int/lit8 v2, v7, 0x8

    move-object v0, p0

    move v3, p4

    move v4, p5

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PanelDrawer;->setVertex([FIFFFF)V

    .line 219
    iget-object v1, p0, Lcom/android/launcher2/PanelDrawer;->mVerticiesData:[F

    add-int/lit8 v2, v7, 0xc

    move-object v0, p0

    move v3, p2

    move v4, p5

    move v5, p6

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/PanelDrawer;->setVertex([FIFFFF)V

    .line 221
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x0

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 222
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 223
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 224
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x0

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 225
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 226
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mIndiciesData:[S

    mul-int/lit8 v1, p1, 0x6

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v2, p1, 0x4

    add-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    aput-short v2, v0, v1

    .line 227
    return-void
.end method

.method private setVertex([FIFFFF)V
    .locals 1
    .param p1, "data"    # [F
    .param p2, "offset"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "tx"    # F
    .param p6, "ty"    # F

    .prologue
    .line 205
    add-int/lit8 v0, p2, 0x0

    aput p3, p1, v0

    .line 206
    add-int/lit8 v0, p2, 0x1

    aput p4, p1, v0

    .line 207
    add-int/lit8 v0, p2, 0x2

    aput p5, p1, v0

    .line 208
    add-int/lit8 v0, p2, 0x3

    aput p6, p1, v0

    .line 209
    return-void
.end method


# virtual methods
.method public checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;

    .prologue
    .line 490
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    .local v0, "error":I
    if-eqz v0, :cond_0

    .line 491
    const-string v1, "PanelDrawer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 494
    :cond_0
    return-void
.end method

.method public compilePrograms()V
    .locals 2

    .prologue
    .line 428
    const-string v0, "uniform mat4 uPMatrix;\nuniform mat4 uMVMatrix;\nattribute vec2 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvarying vec2 vHighlightCoord;\nuniform vec2 uHighlightXMA;\nvoid main() {\n  gl_Position = (uPMatrix*uMVMatrix)*vec4(aPosition,0,1.);\n  vTextureCoord = aTextureCoord;\n  vHighlightCoord.x = (gl_Position.x/gl_Position.w)*uHighlightXMA[0]+uHighlightXMA[1];\n  vHighlightCoord.y = aTextureCoord.y;\n}\n"

    const-string v1, "precision mediump float;\nvarying vec2 vTextureCoord;\nvarying vec2 vHighlightCoord;\nuniform sampler2D sTexture;\nuniform sampler2D sHighlight;\nuniform float uAlpha;\nuniform float uBackgroundDarken;\nuniform float uBaseDarken;\nvoid main() {\n  vec4 sampled = texture2D(sTexture, vTextureCoord);\n  float highlight = texture2D(sHighlight, vHighlightCoord).a;\n  float highlightMask = sampled.b; \n  float maskedHighlight = highlight*highlightMask; \n  float value = (sampled.g + maskedHighlight)*uAlpha;\n  float alpha = (sampled.r + maskedHighlight)*uAlpha + mix(uBackgroundDarken, uBaseDarken, sampled.b);\n  gl_FragColor = vec4(value, value, value, alpha);\n}\n"

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/PanelDrawer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    .line 429
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muPMatrixHandle:I

    .line 430
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uMVMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muMVMatrixHandle:I

    .line 431
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->maPositionHandle:I

    .line 432
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "aTextureCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->maTextureCoordHandle:I

    .line 433
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "sTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->msTextureHandle:I

    .line 434
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "sHighlight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->msHighlightHandle:I

    .line 435
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muAlpha:I

    .line 436
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uBaseDarken"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muBaseDarken:I

    .line 437
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uBackgroundDarken"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muBackgroundDarken:I

    .line 438
    iget v0, p0, Lcom/android/launcher2/PanelDrawer;->mProgram:I

    const-string v1, "uHighlightXMA"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->muHighlightXMLHandle:I

    .line 439
    return-void
.end method

.method public hasLoadedResources()Z
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadResourceOnRenderThread()V
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/launcher2/PanelDrawer;->compilePrograms()V

    .line 160
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020102

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/PanelDrawer;->loadTexture(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mHighlightTexture:I

    .line 161
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f020101

    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/PanelDrawer;->loadTexture(Landroid/content/res/Resources;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mTexture:I

    .line 162
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0101

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mExpandX:I

    .line 163
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0e0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PanelDrawer;->mExpandY:I

    .line 164
    return-void
.end method

.method public loadResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/launcher2/PanelDrawer;->mRes:Landroid/content/res/Resources;

    .line 156
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 609
    new-instance v0, Lcom/android/launcher2/PanelDrawer$PanelDrawable;

    invoke-direct {v0, p0}, Lcom/android/launcher2/PanelDrawer$PanelDrawable;-><init>(Lcom/android/launcher2/PanelDrawer;)V

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PanelDrawer;->mPaused:Z

    .line 131
    invoke-direct {p0}, Lcom/android/launcher2/PanelDrawer;->reset()V

    .line 132
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PanelDrawer;->mPaused:Z

    .line 136
    return-void
.end method

.method public setViewport(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 144
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 145
    :cond_0
    const-string v0, "PanelDrawer"

    const-string v1, "SetViewport, width or height is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    return-void

    .line 148
    :cond_1
    iput p1, p0, Lcom/android/launcher2/PanelDrawer;->mViewportWidth:I

    .line 149
    iput p2, p0, Lcom/android/launcher2/PanelDrawer;->mViewportHeight:I

    .line 150
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mProjectionMatrix:[F

    .line 151
    iget-object v0, p0, Lcom/android/launcher2/PanelDrawer;->mProjectionMatrix:[F

    const/4 v1, 0x0

    int-to-float v3, p1

    int-to-float v4, p2

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    goto :goto_0
.end method
