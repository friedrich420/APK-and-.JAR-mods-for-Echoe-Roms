.class Lcom/android/launcher2/DarkenView$Drawer;
.super Lcom/android/launcher2/DrawGLFunction$Callback;
.source "DarkenView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DarkenView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Drawer"
.end annotation


# instance fields
.field private mAlpha:F


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DarkenView$Drawer;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DarkenView$Drawer;

    .prologue
    .line 61
    iget v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    return v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/DarkenView$Drawer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher2/DarkenView$Drawer;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    return p1
.end method


# virtual methods
.method public drawGL([F)V
    .locals 2
    .param p1, "transform"    # [F

    .prologue
    const/4 v1, 0x0

    .line 68
    iget v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    iget v0, p0, Lcom/android/launcher2/DarkenView$Drawer;->mAlpha:F

    invoke-static {v1, v1, v1, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 73
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    goto :goto_0
.end method
