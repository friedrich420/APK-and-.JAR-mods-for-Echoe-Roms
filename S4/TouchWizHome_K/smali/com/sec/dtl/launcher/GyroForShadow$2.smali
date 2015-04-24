.class final Lcom/sec/dtl/launcher/GyroForShadow$2;
.super Ljava/lang/Object;
.source "GyroForShadow.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/dtl/launcher/GyroForShadow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 115
    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 153
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 118
    :pswitch_1
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x1

    aget v0, v7, v8

    .line 119
    .local v0, "dx":F
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v1, v7, v8

    .line 120
    .local v1, "dy":F
    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    const-wide v10, 0x3fa99999a0000000L    # 0.05000000074505806

    cmpg-double v7, v8, v10

    if-ltz v7, :cond_0

    .line 124
    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sget v9, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    const v10, 0x3d8f5c29    # 0.07f

    mul-float/2addr v10, v0

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 125
    .local v4, "x":F
    sput v4, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    .line 129
    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    sget v9, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    const v10, 0x3d8f5c29    # 0.07f

    mul-float/2addr v10, v1

    add-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 130
    .local v5, "y":F
    sput v5, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevY:F

    .line 134
    const/high16 v6, 0x3f800000    # 1.0f

    .line 137
    .local v6, "z":F
    mul-float v7, v4, v4

    mul-float v8, v5, v5

    add-float/2addr v7, v8

    mul-float v8, v6, v6

    add-float/2addr v7, v8

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 138
    .local v3, "length":F
    div-float/2addr v4, v3

    .line 139
    div-float/2addr v5, v3

    .line 140
    div-float/2addr v6, v3

    .line 142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    # getter for: Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$200()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v2, v7, :cond_0

    .line 144
    # getter for: Lcom/sec/dtl/launcher/GyroForShadow;->mListeners:Ljava/util/Vector;
    invoke-static {}, Lcom/sec/dtl/launcher/GyroForShadow;->access$200()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;

    sget v8, Lcom/sec/dtl/launcher/GyroForShadow;->mPrevX:F

    invoke-virtual {v7, v4, v5, v6, v8}, Lcom/sec/dtl/launcher/GyroForShadow$VectorListener;->onVectorChanged(FFFF)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    .end local v0    # "dx":F
    .end local v1    # "dy":F
    .end local v2    # "i":I
    .end local v3    # "length":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "z":F
    :pswitch_2
    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    iget-object v8, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    # invokes: Lcom/sec/dtl/launcher/GyroForShadow;->onAccelerometerChanged(FFF)V
    invoke-static {v7, v8, v9}, Lcom/sec/dtl/launcher/GyroForShadow;->access$300(FFF)V

    goto/16 :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
