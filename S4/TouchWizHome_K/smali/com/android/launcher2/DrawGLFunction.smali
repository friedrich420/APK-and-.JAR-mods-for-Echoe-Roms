.class public Lcom/android/launcher2/DrawGLFunction;
.super Ljava/lang/Object;
.source "DrawGLFunction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DrawGLFunction$Callback;
    }
.end annotation


# static fields
.field private static mCallDrawGLFunction:Ljava/lang/reflect/Method;

.field static sICSCompat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "drawglfunction"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v1, "4.0.9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/DrawGLFunction;->sICSCompat:Z

    .line 46
    return-void

    .line 43
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static call(Landroid/graphics/Canvas;Lcom/android/launcher2/DrawGLFunction$Callback;)V
    .locals 8
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "callback"    # Lcom/android/launcher2/DrawGLFunction$Callback;

    .prologue
    .line 65
    # getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 66
    sget-boolean v2, Lcom/android/launcher2/DrawGLFunction;->sICSCompat:Z

    if-eqz v2, :cond_2

    .line 67
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction;->createICS(Lcom/android/launcher2/DrawGLFunction$Callback;)J

    move-result-wide v2

    # setter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J
    invoke-static {p1, v2, v3}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$002(Lcom/android/launcher2/DrawGLFunction$Callback;J)J

    .line 73
    :cond_0
    :goto_0
    :try_start_0
    sget-object v2, Lcom/android/launcher2/DrawGLFunction;->mCallDrawGLFunction:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 74
    const-string v2, "android.view.HardwareCanvas"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 75
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "callDrawGLFunction"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/launcher2/DrawGLFunction;->mCallDrawGLFunction:Ljava/lang/reflect/Method;

    .line 78
    sget-object v2, Lcom/android/launcher2/DrawGLFunction;->mCallDrawGLFunction:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 80
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    sget-object v2, Lcom/android/launcher2/DrawGLFunction;->mCallDrawGLFunction:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    # getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_1
    return-void

    .line 69
    :cond_2
    invoke-static {p1}, Lcom/android/launcher2/DrawGLFunction;->createJB(Lcom/android/launcher2/DrawGLFunction$Callback;)J

    move-result-wide v2

    # setter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J
    invoke-static {p1, v2, v3}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$002(Lcom/android/launcher2/DrawGLFunction$Callback;J)J

    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    .local v1, "e":Ljava/lang/Throwable;
    const-string v2, "DrawGLFunction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static native createICS(Lcom/android/launcher2/DrawGLFunction$Callback;)J
.end method

.method private static native createJB(Lcom/android/launcher2/DrawGLFunction$Callback;)J
.end method

.method public static destroy(Lcom/android/launcher2/DrawGLFunction$Callback;)V
    .locals 4
    .param p0, "callback"    # Lcom/android/launcher2/DrawGLFunction$Callback;

    .prologue
    const-wide/16 v2, 0x0

    .line 99
    # getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J
    invoke-static {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 100
    sget-boolean v0, Lcom/android/launcher2/DrawGLFunction;->sICSCompat:Z

    if-eqz v0, :cond_1

    .line 101
    # getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J
    invoke-static {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/launcher2/DrawGLFunction;->destroyICS(J)V

    .line 106
    :cond_0
    :goto_0
    # setter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J
    invoke-static {p0, v2, v3}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$002(Lcom/android/launcher2/DrawGLFunction$Callback;J)J

    .line 107
    return-void

    .line 103
    :cond_1
    # getter for: Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J
    invoke-static {p0}, Lcom/android/launcher2/DrawGLFunction$Callback;->access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/launcher2/DrawGLFunction;->destroyJB(J)V

    goto :goto_0
.end method

.method private static native destroyICS(J)V
.end method

.method private static native destroyJB(J)V
.end method
