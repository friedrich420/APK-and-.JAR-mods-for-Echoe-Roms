.class public final Lcom/sec/dtl/launcher/GyroForShadow;
.super Ljava/lang/Object;
.source "GyroForShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;
    }
.end annotation


# static fields
.field public static final MAX_OFFSET:F = 70.0f

.field private static mListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;",
            ">;"
        }
    .end annotation
.end field

.field static mPrevX:F

.field static mPrevY:F

.field private static sDisplay:Landroid/view/Display;

.field private static sSensorManager:Landroid/hardware/SensorManager;

.field private static final sel:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    .line 110
    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    .line 111
    sput v1, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    .line 113
    new-instance v0, Lcom/sec/dtl/launcher/GyroForShadow$2;

    invoke-direct {v0}, Lcom/sec/dtl/launcher/GyroForShadow$2;-><init>()V

    sput-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/hardware/SensorEventListener;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$100()Landroid/hardware/SensorManager;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$300(FFF)V
    .locals 0
    .param p0, "x0"    # F
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/sec/dtl/launcher/GyroForShadow;->onAccelerometerChanged(FFF)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    const-string v1, "sensor"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    sput-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    .line 53
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 55
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    sput-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->sDisplay:Landroid/view/Display;

    .line 56
    return-void
.end method

.method private static onAccelerometerChanged(FFF)V
    .locals 12
    .param p0, "gx"    # F
    .param p1, "gy"    # F
    .param p2, "gz"    # F

    .prologue
    const v11, 0x3e99999a    # 0.3f

    .line 158
    move v5, p0

    .local v5, "x":F
    move v6, p1

    .local v6, "y":F
    move v7, p2

    .line 159
    .local v7, "z":F
    sget-object v8, Lcom/sec/dtl/launcher/GyroForShadow;->sDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 166
    :goto_0
    mul-float v8, v5, v5

    mul-float v9, v6, v6

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 167
    .local v1, "length":F
    div-float/2addr v5, v1

    .line 168
    div-float/2addr v6, v1

    .line 169
    div-float/2addr v7, v1

    .line 171
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const v9, 0x3a83126f    # 0.001f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 172
    const/4 v5, 0x0

    .line 185
    :goto_1
    const/4 v6, 0x0

    .line 186
    const/high16 v7, 0x3f800000    # 1.0f

    .line 187
    mul-float v8, v5, v5

    mul-float v9, v6, v6

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v1, v8

    .line 188
    div-float/2addr v5, v1

    .line 189
    div-float/2addr v6, v1

    .line 190
    div-float/2addr v7, v1

    .line 191
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    mul-float v4, v5, v8

    .line 193
    .local v4, "progress":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v8, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 195
    sget-object v8, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v8, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    invoke-virtual {v8, v5, v6, v7, v4}, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;->onVectorChanged(FFFF)V

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 160
    .end local v0    # "i":I
    .end local v1    # "length":F
    .end local v4    # "progress":F
    :pswitch_0
    neg-float v5, p1

    move v6, p0

    goto :goto_0

    .line 161
    :pswitch_1
    neg-float v5, p0

    neg-float v6, p1

    goto :goto_0

    .line 162
    :pswitch_2
    move v5, p1

    neg-float v6, p0

    goto :goto_0

    .line 174
    .restart local v1    # "length":F
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 175
    .local v2, "maxOffset":F
    const/high16 v8, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    neg-float v10, v5

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float v3, v8, v2

    .line 177
    .local v3, "newX":F
    cmpg-float v8, v7, v11

    if-gez v8, :cond_1

    .line 178
    const/4 v8, 0x0

    div-float v9, v7, v11

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    mul-float/2addr v3, v8

    .line 180
    :cond_1
    move v5, v3

    goto :goto_1

    .line 197
    .end local v2    # "maxOffset":F
    .end local v3    # "newX":F
    .restart local v0    # "i":I
    .restart local v4    # "progress":F
    :cond_2
    return-void

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static pauseSensor()V
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->stopSensor()V

    .line 89
    :cond_0
    return-void
.end method

.method public static registerListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V
    .locals 1
    .param p0, "aListener"    # Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    .prologue
    .line 92
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->startSensor()V

    .line 93
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    return-void
.end method

.method public static resumeSensor()V
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 78
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->startSensor()V

    .line 80
    :cond_0
    return-void
.end method

.method public static startSensor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 62
    const/4 v0, 0x4

    .line 64
    .local v0, "sensorType":I
    new-instance v1, Lcom/sec/dtl/launcher/GyroForShadow$1;

    invoke-direct {v1}, Lcom/sec/dtl/launcher/GyroForShadow$1;-><init>()V

    invoke-virtual {v1}, Lcom/sec/dtl/launcher/GyroForShadow$1;->start()V

    .line 69
    sput v2, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    .line 70
    sput v2, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    .line 71
    return-void
.end method

.method public static stopSensor()V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->sSensorManager:Landroid/hardware/SensorManager;

    sget-object v1, Lcom/sec/dtl/launcher/GyroForShadow;->sel:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 60
    return-void
.end method

.method public static unregisterListener(Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;)V
    .locals 1
    .param p0, "aListener"    # Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    .prologue
    .line 99
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 102
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->stopSensor()V

    .line 104
    :cond_0
    return-void
.end method
