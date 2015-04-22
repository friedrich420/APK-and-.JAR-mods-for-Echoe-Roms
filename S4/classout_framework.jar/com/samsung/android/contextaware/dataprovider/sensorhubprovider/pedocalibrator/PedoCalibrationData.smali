.class Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/pedocalibrator/PedoCalibrationData;
.super Ljava/lang/Object;
.source "PedoCalibrationData.java"


# instance fields
.field mAccumGpsDistance:F

.field mAccumStepCnt:I

.field mAccumStepLength:F

.field mAccumStepLengthPer1Sec:F

.field mArrayIndex:I

.field mFilterWF:F

.field mGpsAccumCnt:I

.field mGpsAccuracy:F

.field mGpsArrayDistance:[D

.field mGpsHeadDiffSum:D

.field mGpsLLH:[D

.field mGpsLastRequestTime:J

.field mGpsOldLLH:[D

.field mGpsOldVec1Hz:[D

.field mGpsUpdateTimeStamp:J

.field mGpsUpdated:Z

.field mGpsUsedSat:I

.field mMaxMeas:I

.field mPedoArrayStepLength:[D

.field mPedoUpdated:Z

.field mRefWalkOrRun:B

.field mRefWalkingFreq:F

.field mRunStepCnt:I

.field mSFArray:[D

.field mSameStepTypeStayCnt:I

.field mSleepStartTime:J

.field mStepCount:I

.field mStepLength:F

.field mSystemTime:J

.field mUpDownStepCnt:I

.field mWalkOrRun:B

.field mWalkStepCnt:I

.field mWalkingFreq:F


# direct methods
.method constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const v5, 0x3c23d70a    # 0.01f

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mSystemTime:J

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mSleepStartTime:J

    .line 119
    iput v2, p0, mStepCount:I

    .line 121
    iput v2, p0, mWalkStepCnt:I

    .line 123
    iput v2, p0, mRunStepCnt:I

    .line 124
    iput v2, p0, mUpDownStepCnt:I

    .line 126
    iput v3, p0, mStepLength:F

    .line 128
    iput v3, p0, mWalkingFreq:F

    .line 130
    iput-byte v6, p0, mWalkOrRun:B

    .line 132
    iput v3, p0, mRefWalkingFreq:F

    .line 134
    iput v3, p0, mFilterWF:F

    .line 136
    iput-byte v6, p0, mRefWalkOrRun:B

    .line 138
    iput v5, p0, mAccumStepLength:F

    .line 140
    iput v5, p0, mAccumStepLengthPer1Sec:F

    .line 142
    iput v2, p0, mAccumStepCnt:I

    .line 144
    iput v2, p0, mSameStepTypeStayCnt:I

    .line 148
    iget-wide v0, p0, mSystemTime:J

    iput-wide v0, p0, mGpsLastRequestTime:J

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mGpsUpdateTimeStamp:J

    .line 152
    iput v3, p0, mAccumGpsDistance:F

    .line 156
    const/high16 v0, 0x44610000    # 900.0f

    iput v0, p0, mGpsAccuracy:F

    .line 158
    iput v2, p0, mGpsUsedSat:I

    .line 160
    iput v2, p0, mGpsAccumCnt:I

    .line 162
    new-array v0, v4, [D

    iput-object v0, p0, mGpsOldLLH:[D

    .line 164
    new-array v0, v4, [D

    iput-object v0, p0, mGpsLLH:[D

    .line 166
    const-wide/16 v0, 0x0

    iput-wide v0, p0, mGpsHeadDiffSum:D

    .line 168
    new-array v0, v4, [D

    iput-object v0, p0, mGpsOldVec1Hz:[D

    .line 170
    iput v2, p0, mMaxMeas:I

    .line 174
    iput-boolean v2, p0, mGpsUpdated:Z

    .line 176
    iput-boolean v2, p0, mPedoUpdated:Z

    .line 194
    const/4 v0, 0x5

    new-array v0, v0, [D

    iput-object v0, p0, mPedoArrayStepLength:[D

    .line 196
    const/4 v0, 0x5

    new-array v0, v0, [D

    iput-object v0, p0, mGpsArrayDistance:[D

    .line 198
    iput v2, p0, mArrayIndex:I

    .line 202
    const/16 v0, 0x14

    new-array v0, v0, [D

    iput-object v0, p0, mSFArray:[D

    .line 204
    return-void
.end method


# virtual methods
.method public initialize()V
    .registers 11

    .prologue
    const v9, 0x3c23d70a    # 0.01f

    const/4 v8, 0x3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, mSystemTime:J

    .line 214
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mSleepStartTime:J

    .line 216
    iput v5, p0, mStepLength:F

    .line 218
    iput v5, p0, mWalkingFreq:F

    .line 220
    const/4 v1, 0x1

    iput-byte v1, p0, mWalkOrRun:B

    .line 222
    iput v5, p0, mRefWalkingFreq:F

    .line 224
    iput v5, p0, mFilterWF:F

    .line 226
    const/4 v1, 0x1

    iput-byte v1, p0, mRefWalkOrRun:B

    .line 228
    iput v9, p0, mAccumStepLength:F

    .line 230
    iput v9, p0, mAccumStepLengthPer1Sec:F

    .line 232
    iput v4, p0, mAccumStepCnt:I

    .line 234
    iput v4, p0, mSameStepTypeStayCnt:I

    .line 238
    iget-wide v2, p0, mSystemTime:J

    iput-wide v2, p0, mGpsLastRequestTime:J

    .line 240
    const-wide/16 v2, 0x0

    iput-wide v2, p0, mGpsUpdateTimeStamp:J

    .line 242
    iput v5, p0, mAccumGpsDistance:F

    .line 246
    const/high16 v1, 0x44610000    # 900.0f

    iput v1, p0, mGpsAccuracy:F

    .line 248
    iput v4, p0, mGpsUsedSat:I

    .line 250
    iput v4, p0, mGpsAccumCnt:I

    .line 252
    iput-wide v6, p0, mGpsHeadDiffSum:D

    .line 256
    iget-object v1, p0, mGpsOldLLH:[D

    if-nez v1, :cond_44

    .line 258
    new-array v1, v8, [D

    iput-object v1, p0, mGpsOldLLH:[D

    .line 262
    :cond_44
    iget-object v1, p0, mGpsLLH:[D

    if-nez v1, :cond_4c

    .line 264
    new-array v1, v8, [D

    iput-object v1, p0, mGpsLLH:[D

    .line 268
    :cond_4c
    iget-object v1, p0, mGpsOldVec1Hz:[D

    if-nez v1, :cond_54

    .line 270
    new-array v1, v8, [D

    iput-object v1, p0, mGpsOldVec1Hz:[D

    .line 274
    :cond_54
    iput-boolean v4, p0, mGpsUpdated:Z

    .line 276
    iput-boolean v4, p0, mPedoUpdated:Z

    .line 286
    iput v4, p0, mMaxMeas:I

    .line 296
    iget-object v1, p0, mPedoArrayStepLength:[D

    if-nez v1, :cond_63

    .line 298
    const/4 v1, 0x5

    new-array v1, v1, [D

    iput-object v1, p0, mPedoArrayStepLength:[D

    .line 300
    :cond_63
    iget-object v1, p0, mGpsArrayDistance:[D

    if-nez v1, :cond_6c

    .line 302
    const/4 v1, 0x5

    new-array v1, v1, [D

    iput-object v1, p0, mGpsArrayDistance:[D

    .line 304
    :cond_6c
    iput v4, p0, mArrayIndex:I

    .line 308
    iget-object v1, p0, mSFArray:[D

    if-nez v1, :cond_8b

    .line 310
    const/16 v1, 0x14

    new-array v1, v1, [D

    iput-object v1, p0, mSFArray:[D

    .line 312
    iget-object v1, p0, mSFArray:[D

    if-eqz v1, :cond_8b

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7d
    iget-object v1, p0, mSFArray:[D

    array-length v1, v1

    if-ge v0, v1, :cond_8b

    .line 316
    iget-object v1, p0, mSFArray:[D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v0

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_7d

    .line 324
    .end local v0    # "i":I
    :cond_8b
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_8c
    iget-object v1, p0, mGpsLLH:[D

    array-length v1, v1

    if-ge v0, v1, :cond_9c

    .line 326
    iget-object v1, p0, mGpsLLH:[D

    aput-wide v6, v1, v0

    .line 328
    iget-object v1, p0, mGpsOldLLH:[D

    aput-wide v6, v1, v0

    .line 324
    add-int/lit8 v0, v0, 0x1

    goto :goto_8c

    .line 334
    :cond_9c
    const/4 v0, 0x0

    :goto_9d
    iget-object v1, p0, mGpsOldVec1Hz:[D

    array-length v1, v1

    if-ge v0, v1, :cond_a9

    .line 336
    iget-object v1, p0, mGpsOldVec1Hz:[D

    aput-wide v6, v1, v0

    .line 334
    add-int/lit8 v0, v0, 0x1

    goto :goto_9d

    .line 342
    :cond_a9
    const/4 v0, 0x0

    :goto_aa
    iget-object v1, p0, mGpsArrayDistance:[D

    array-length v1, v1

    if-ge v0, v1, :cond_ba

    .line 344
    iget-object v1, p0, mPedoArrayStepLength:[D

    aput-wide v6, v1, v0

    .line 346
    iget-object v1, p0, mGpsArrayDistance:[D

    aput-wide v6, v1, v0

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_aa

    .line 351
    :cond_ba
    return-void
.end method
