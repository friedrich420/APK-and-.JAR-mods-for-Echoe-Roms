.class public Lcom/android/launcher2/Outliner;
.super Ljava/lang/Object;
.source "Outliner.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static boxOutline(II)Landroid/graphics/Bitmap;
    .locals 3
    .param p0, "width"    # I
    .param p1, "height"    # I

    .prologue
    .line 29
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 30
    .local v0, "out":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/launcher2/Outliner;->nBoxOutline(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Failed to create box outline."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_0
    return-object v0
.end method

.method private static native nBoxOutline(Landroid/graphics/Bitmap;)Z
.end method
