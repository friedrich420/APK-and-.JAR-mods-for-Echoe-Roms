.class public Lcom/android/internal/view/animation/FallbackLUTInterpolator;
.super Ljava/lang/Object;
.source "FallbackLUTInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;
.implements Lcom/android/internal/view/animation/NativeInterpolatorFactory;


# annotations
.annotation runtime Lcom/android/internal/view/animation/HasNativeInterpolator;
.end annotation


# instance fields
.field private final mLut:[F

.field private mSourceInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method public constructor <init>(Landroid/animation/TimeInterpolator;J)V
    .registers 6
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p2, "duration"    # J

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, mSourceInterpolator:Landroid/animation/TimeInterpolator;

    .line 42
    invoke-static {p1, p2, p3}, createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object v0

    iput-object v0, p0, mLut:[F

    .line 43
    return-void
.end method

.method private static createLUT(Landroid/animation/TimeInterpolator;J)[F
    .registers 14
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    .prologue
    .line 46
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Choreographer;->getFrameIntervalNanos()J

    move-result-wide v2

    .line 47
    .local v2, "frameIntervalNanos":J
    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    long-to-int v0, v8

    .line 48
    .local v0, "animIntervalMs":I
    int-to-long v8, v0

    div-long v8, p1, v8

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v6, v8

    .line 49
    .local v6, "numAnimFrames":I
    new-array v7, v6, [F

    .line 50
    .local v7, "values":[F
    add-int/lit8 v8, v6, -0x1

    int-to-float v5, v8

    .line 51
    .local v5, "lastFrame":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    if-ge v1, v6, :cond_2b

    .line 52
    int-to-float v8, v1

    div-float v4, v8, v5

    .line 53
    .local v4, "inValue":F
    invoke-interface {p0, v4}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v8

    aput v8, v7, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 55
    .end local v4    # "inValue":F
    :cond_2b
    return-object v7
.end method

.method public static createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J
    .registers 8
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p1, "duration"    # J

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, createLUT(Landroid/animation/TimeInterpolator;J)[F

    move-result-object v0

    .line 68
    .local v0, "lut":[F
    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLutInterpolator([F)J

    move-result-wide v2

    return-wide v2
.end method


# virtual methods
.method public createNativeInterpolator()J
    .registers 3

    .prologue
    .line 60
    iget-object v0, p0, mLut:[F

    invoke-static {v0}, Lcom/android/internal/view/animation/NativeInterpolatorFactoryHelper;->createLutInterpolator([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInterpolation(F)F
    .registers 3
    .param p1, "input"    # F

    .prologue
    .line 73
    iget-object v0, p0, mSourceInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method
