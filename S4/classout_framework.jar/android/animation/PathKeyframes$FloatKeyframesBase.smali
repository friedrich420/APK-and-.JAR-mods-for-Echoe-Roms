.class abstract Landroid/animation/PathKeyframes$FloatKeyframesBase;
.super Landroid/animation/PathKeyframes$SimpleKeyframes;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes$FloatKeyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "FloatKeyframesBase"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 246
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>(Landroid/animation/PathKeyframes$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/animation/PathKeyframes$1;)V
    .registers 2
    .param p1, "x0"    # Landroid/animation/PathKeyframes$1;

    .prologue
    .line 246
    invoke-direct {p0}, <init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .registers 2

    .prologue
    .line 250
    const-class v0, Ljava/lang/Float;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .registers 3
    .param p1, "fraction"    # F

    .prologue
    .line 255
    invoke-virtual {p0, p1}, getFloatValue(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
