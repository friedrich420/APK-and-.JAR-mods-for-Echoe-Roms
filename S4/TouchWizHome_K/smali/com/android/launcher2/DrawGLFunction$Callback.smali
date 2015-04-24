.class public abstract Lcom/android/launcher2/DrawGLFunction$Callback;
.super Ljava/lang/Object;
.source "DrawGLFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/DrawGLFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private functor:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/DrawGLFunction$Callback;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/launcher2/DrawGLFunction$Callback;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/launcher2/DrawGLFunction$Callback;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher2/DrawGLFunction$Callback;
    .param p1, "x1"    # J

    .prologue
    .line 26
    iput-wide p1, p0, Lcom/android/launcher2/DrawGLFunction$Callback;->functor:J

    return-wide p1
.end method


# virtual methods
.method public abstract drawGL([F)V
.end method
