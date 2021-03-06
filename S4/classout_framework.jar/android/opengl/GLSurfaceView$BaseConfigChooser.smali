.class abstract Landroid/opengl/GLSurfaceView$BaseConfigChooser;
.super Ljava/lang/Object;
.source "GLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "BaseConfigChooser"
.end annotation


# instance fields
.field protected mConfigSpec:[I

.field final synthetic this$0:Landroid/opengl/GLSurfaceView;


# direct methods
.method public constructor <init>(Landroid/opengl/GLSurfaceView;[I)V
    .registers 4
    .param p2, "configSpec"    # [I

    .prologue
    .line 853
    iput-object p1, p0, this$0:Landroid/opengl/GLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    invoke-direct {p0, p2}, filterConfigSpec([I)[I

    move-result-object v0

    iput-object v0, p0, mConfigSpec:[I

    .line 855
    return-void
.end method

.method private filterConfigSpec([I)[I
    .registers 8
    .param p1, "configSpec"    # [I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 889
    iget-object v2, p0, this$0:Landroid/opengl/GLSurfaceView;

    # getter for: Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->access$200(Landroid/opengl/GLSurfaceView;)I

    move-result v2

    if-eq v2, v5, :cond_14

    iget-object v2, p0, this$0:Landroid/opengl/GLSurfaceView;

    # getter for: Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->access$200(Landroid/opengl/GLSurfaceView;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_14

    .line 905
    .end local p1    # "configSpec":[I
    :goto_13
    return-object p1

    .line 895
    .restart local p1    # "configSpec":[I
    :cond_14
    array-length v0, p1

    .line 896
    .local v0, "len":I
    add-int/lit8 v2, v0, 0x2

    new-array v1, v2, [I

    .line 897
    .local v1, "newConfigSpec":[I
    add-int/lit8 v2, v0, -0x1

    invoke-static {p1, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 898
    add-int/lit8 v2, v0, -0x1

    const/16 v3, 0x3040

    aput v3, v1, v2

    .line 899
    iget-object v2, p0, this$0:Landroid/opengl/GLSurfaceView;

    # getter for: Landroid/opengl/GLSurfaceView;->mEGLContextClientVersion:I
    invoke-static {v2}, Landroid/opengl/GLSurfaceView;->access$200(Landroid/opengl/GLSurfaceView;)I

    move-result v2

    if-ne v2, v5, :cond_37

    .line 900
    const/4 v2, 0x4

    aput v2, v1, v0

    .line 904
    :goto_2f
    add-int/lit8 v2, v0, 0x1

    const/16 v3, 0x3038

    aput v3, v1, v2

    move-object p1, v1

    .line 905
    goto :goto_13

    .line 902
    :cond_37
    const/16 v2, 0x40

    aput v2, v1, v0

    goto :goto_2f
.end method


# virtual methods
.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .registers 10
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    const/4 v4, 0x0

    .line 858
    const/4 v0, 0x1

    new-array v5, v0, [I

    .line 859
    .local v5, "num_config":[I
    iget-object v2, p0, mConfigSpec:[I

    const/4 v3, 0x0

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 861
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_17
    aget v4, v5, v4

    .line 866
    .local v4, "numConfigs":I
    if-gtz v4, :cond_23

    .line 867
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No configs match configSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_23
    new-array v3, v4, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 872
    .local v3, "configs":[Ljavax/microedition/khronos/egl/EGLConfig;
    iget-object v2, p0, mConfigSpec:[I

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_37

    .line 874
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "eglChooseConfig#2 failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 876
    :cond_37
    invoke-virtual {p0, p1, p2, v3}, chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v6

    .line 877
    .local v6, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-nez v6, :cond_45

    .line 878
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No config chosen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_45
    return-object v6
.end method

.method abstract chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;)Ljavax/microedition/khronos/egl/EGLConfig;
.end method
