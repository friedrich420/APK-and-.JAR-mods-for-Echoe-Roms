.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static final mIsEnableEmoji:Z

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, sLock:[Ljava/lang/Object;

    .line 50
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, sCached:[Landroid/text/MeasuredText;

    .line 51
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Framework_EnableEmoji"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, mIsEnableEmoji:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, mWorkPaint:Landroid/text/TextPaint;

    .line 47
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .registers 5

    .prologue
    .line 56
    sget-object v3, sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 57
    :try_start_3
    sget-object v2, sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, "i":I
    :cond_6
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    .line 58
    sget-object v2, sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_6

    .line 59
    sget-object v2, sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 60
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0

    .line 61
    monitor-exit v3

    .line 69
    :goto_1a
    return-object v1

    .line 64
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 65
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, <init>()V

    .line 69
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    goto :goto_1a

    .line 64
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit v3
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .registers 5
    .param p0, "mt"    # Landroid/text/MeasuredText;

    .prologue
    const/4 v3, 0x0

    .line 73
    iput-object v3, p0, mText:Ljava/lang/CharSequence;

    .line 74
    iget v1, p0, mLen:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_20

    .line 75
    sget-object v2, sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    :try_start_d
    sget-object v1, sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 77
    sget-object v1, sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_21

    .line 78
    sget-object v1, sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 79
    const/4 v1, 0x0

    iput-object v1, p0, mText:Ljava/lang/CharSequence;

    .line 83
    :cond_1f
    monitor-exit v2

    .line 85
    .end local v0    # "i":I
    :cond_20
    return-object v3

    .line 76
    .restart local v0    # "i":I
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 83
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_d .. :try_end_26} :catchall_24

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 29
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 157
    if-eqz p3, :cond_9

    .line 158
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 161
    :cond_9
    move-object/from16 v0, p0

    iget v4, v0, mPos:I

    .line 162
    .local v4, "p":I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, mPos:I

    .line 164
    move-object/from16 v0, p0

    iget v2, v0, mLen:I

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v3

    .line 166
    .local v3, "tempChars":[C
    sget-boolean v2, mIsEnableEmoji:Z

    if-eqz v2, :cond_6f

    .line 167
    const/16 v21, 0x0

    .local v21, "j":I
    :goto_21
    move-object/from16 v0, p0

    iget v2, v0, mLen:I

    move/from16 v0, v21

    if-ge v0, v2, :cond_6f

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    aget-char v2, v2, v21

    const v5, 0xdbb8

    if-lt v2, v5, :cond_66

    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    aget-char v2, v2, v21

    const v5, 0xdbbb

    if-gt v2, v5, :cond_66

    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, p0

    iget v5, v0, mLen:I

    if-ge v2, v5, :cond_66

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    aget-char v2, v2, v21

    move-object/from16 v0, p0

    iget-object v5, v0, mChars:[C

    add-int/lit8 v6, v21, 0x1

    aget-char v5, v5, v6

    invoke-static {v2, v5}, Landroid/text/TextLine;->getEmojiCodeFromUACode(CC)C

    move-result v2

    aput-char v2, v3, v21

    .line 170
    add-int/lit8 v2, v21, 0x1

    const/16 v5, 0x200b

    aput-char v5, v3, v2

    .line 171
    add-int/lit8 v21, v21, 0x1

    .line 167
    :goto_63
    add-int/lit8 v21, v21, 0x1

    goto :goto_21

    .line 173
    :cond_66
    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    aget-char v2, v2, v21

    aput-char v2, v3, v21

    goto :goto_63

    .line 178
    .end local v21    # "j":I
    :cond_6f
    const/16 v24, 0x0

    .line 179
    .local v24, "totalAdvance":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, mEasy:Z

    if-eqz v2, :cond_e9

    .line 180
    move-object/from16 v0, p0

    iget v2, v0, mDir:I

    const/4 v5, 0x1

    if-eq v2, v5, :cond_94

    const/4 v8, 0x1

    .line 181
    .local v8, "isRtl":Z
    :goto_7f
    sget-boolean v2, mIsEnableEmoji:Z

    if-eqz v2, :cond_96

    .line 182
    move-object/from16 v0, p0

    iget-object v9, v0, mWidths:[F

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    .line 215
    :goto_93
    return v2

    .line 180
    .end local v8    # "isRtl":Z
    :cond_94
    const/4 v8, 0x0

    goto :goto_7f

    .line 184
    .restart local v8    # "isRtl":Z
    :cond_96
    move-object/from16 v0, p0

    iget-object v10, v0, mChars:[C

    move-object/from16 v0, p0

    iget-object v0, v0, mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v11, v4

    move/from16 v12, p2

    move v13, v4

    move/from16 v14, p2

    move v15, v8

    move/from16 v17, v4

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v24

    .line 186
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_e6

    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    add-int/lit8 v5, p2, -0x1

    aget-char v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isRegionalCharHandling(C)Z

    move-result v2

    if-eqz v2, :cond_e6

    .line 187
    add-int/lit8 v18, p2, -0x1

    .line 188
    .local v18, "cPos":I
    :goto_c4
    move-object/from16 v0, p0

    iget-object v2, v0, mWidths:[F

    aget v2, v2, v18

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-nez v2, :cond_d2

    add-int/lit8 v18, v18, -0x1

    goto :goto_c4

    .line 189
    :cond_d2
    const-string v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 190
    .local v23, "spaceWid":F
    move-object/from16 v0, p0

    iget-object v2, v0, mWidths:[F

    aget v5, v2, v18

    add-float v5, v5, v23

    aput v5, v2, v18

    .line 191
    add-float v24, v24, v23

    .end local v18    # "cPos":I
    .end local v23    # "spaceWid":F
    :cond_e6
    move/from16 v2, v24

    .line 193
    goto :goto_93

    .line 195
    .end local v8    # "isRtl":Z
    :cond_e9
    move-object/from16 v0, p0

    iget-object v2, v0, mLevels:[B

    aget-byte v22, v2, v4

    .line 196
    .local v22, "level":I
    move v11, v4

    .local v11, "q":I
    add-int/lit8 v20, v4, 0x1

    .local v20, "i":I
    add-int v19, v4, p2

    .line 197
    .local v19, "e":I
    :goto_f4
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_104

    move-object/from16 v0, p0

    iget-object v2, v0, mLevels:[B

    aget-byte v2, v2, v20

    move/from16 v0, v22

    if-eq v2, v0, :cond_151

    .line 198
    :cond_104
    and-int/lit8 v2, v22, 0x1

    if-eqz v2, :cond_147

    const/4 v8, 0x1

    .line 199
    .restart local v8    # "isRtl":Z
    :goto_109
    move-object/from16 v0, p0

    iget-object v10, v0, mChars:[C

    sub-int v12, v20, v11

    sub-int v14, v20, v11

    move-object/from16 v0, p0

    iget-object v0, v0, mWidths:[F

    move-object/from16 v16, v0

    move-object/from16 v9, p1

    move v13, v11

    move v15, v8

    move/from16 v17, v11

    invoke-virtual/range {v9 .. v17}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float v24, v24, v2

    .line 201
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_149

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, mChars:[C

    add-int/lit8 v5, p2, -0x1

    aget-char v2, v2, v5

    invoke-static {v2}, Landroid/text/TextUtils;->isRegionalCharHandling(C)Z

    move-result v2

    if-eqz v2, :cond_168

    .line 209
    add-int/lit8 v18, p2, -0x1

    .line 210
    .restart local v18    # "cPos":I
    :goto_139
    move-object/from16 v0, p0

    iget-object v2, v0, mWidths:[F

    aget v2, v2, v18

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-nez v2, :cond_154

    add-int/lit8 v18, v18, -0x1

    goto :goto_139

    .line 198
    .end local v8    # "isRtl":Z
    .end local v18    # "cPos":I
    :cond_147
    const/4 v8, 0x0

    goto :goto_109

    .line 204
    .restart local v8    # "isRtl":Z
    :cond_149
    move/from16 v11, v20

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, mLevels:[B

    aget-byte v22, v2, v20

    .line 196
    .end local v8    # "isRtl":Z
    :cond_151
    add-int/lit8 v20, v20, 0x1

    goto :goto_f4

    .line 211
    .restart local v8    # "isRtl":Z
    .restart local v18    # "cPos":I
    :cond_154
    const-string v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 212
    .restart local v23    # "spaceWid":F
    move-object/from16 v0, p0

    iget-object v2, v0, mWidths:[F

    aget v5, v2, v18

    add-float v5, v5, v23

    aput v5, v2, v18

    .line 213
    add-float v24, v24, v23

    .end local v18    # "cPos":I
    .end local v23    # "spaceWid":F
    :cond_168
    move/from16 v2, v24

    .line 215
    goto/16 :goto_93
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .registers 16
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 221
    iget-object v1, p0, mWorkPaint:Landroid/text/TextPaint;

    .line 222
    .local v1, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 224
    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_a
    array-length v2, p2

    if-ge v7, v2, :cond_1d

    .line 228
    aget-object v8, p2, v7

    .line 229
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_19

    move-object v0, v8

    .line 230
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 227
    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    .line 232
    :cond_19
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_16

    .line 237
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_1d
    if-nez v0, :cond_38

    .line 238
    invoke-virtual {p0, v1, p3, p4}, addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 250
    .local v10, "wid":F
    :goto_23
    if-eqz p4, :cond_37

    .line 251
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_67

    .line 252
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 253
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 260
    :cond_37
    :goto_37
    return v10

    .line 241
    .end local v10    # "wid":F
    :cond_38
    iget-object v2, p0, mText:Ljava/lang/CharSequence;

    iget v3, p0, mTextStart:I

    iget v4, p0, mPos:I

    add-int/2addr v3, v4

    iget v4, p0, mTextStart:I

    iget v5, p0, mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 243
    .restart local v10    # "wid":F
    iget-object v9, p0, mWidths:[F

    .line 244
    .local v9, "w":[F
    iget v2, p0, mPos:I

    aput v10, v9, v2

    .line 245
    iget v2, p0, mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, mPos:I

    add-int v6, v2, p3

    .local v6, "e":I
    :goto_59
    if-ge v7, v6, :cond_61

    .line 246
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 245
    add-int/lit8 v7, v7, 0x1

    goto :goto_59

    .line 247
    :cond_61
    iget v2, p0, mPos:I

    add-int/2addr v2, p3

    iput v2, p0, mPos:I

    goto :goto_23

    .line 255
    .end local v6    # "e":I
    .end local v9    # "w":[F
    :cond_67
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 256
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_37
.end method

.method breakText(IZF)I
    .registers 9
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 264
    iget-object v1, p0, mWidths:[F

    .line 265
    .local v1, "w":[F
    if-eqz p2, :cond_23

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "i":I
    :goto_8
    if-ge v0, p1, :cond_11

    .line 268
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 269
    cmpg-float v2, p3, v3

    if-gez v2, :cond_1e

    .line 272
    :cond_11
    :goto_11
    if-lez v0, :cond_21

    iget-object v2, p0, mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_21

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 270
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_21
    move v2, v0

    .line 282
    :goto_22
    return v2

    .line 275
    .end local v0    # "i":I
    :cond_23
    add-int/lit8 v0, p1, -0x1

    .line 276
    .restart local v0    # "i":I
    :goto_25
    if-ltz v0, :cond_2e

    .line 277
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 278
    cmpg-float v2, p3, v3

    if-gez v2, :cond_3d

    .line 281
    :cond_2e
    :goto_2e
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_40

    iget-object v2, p0, mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_40

    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 279
    :cond_3d
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 282
    :cond_40
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    goto :goto_22
.end method

.method measure(II)F
    .registers 7
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 287
    const/4 v2, 0x0

    .line 288
    .local v2, "width":F
    iget-object v1, p0, mWidths:[F

    .line 289
    .local v1, "w":[F
    move v0, p1

    .local v0, "i":I
    :goto_4
    if-ge v0, p2, :cond_c

    .line 290
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 289
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 292
    :cond_c
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .registers 18
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .prologue
    .line 96
    iput-object p1, p0, mText:Ljava/lang/CharSequence;

    .line 97
    iput p2, p0, mTextStart:I

    .line 99
    sub-int v6, p3, p2

    .line 100
    .local v6, "len":I
    iput v6, p0, mLen:I

    .line 101
    const/4 v10, 0x0

    iput v10, p0, mPos:I

    .line 103
    iget-object v10, p0, mWidths:[F

    if-eqz v10, :cond_14

    iget-object v10, p0, mWidths:[F

    array-length v10, v10

    if-ge v10, v6, :cond_1a

    .line 104
    :cond_14
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v10

    iput-object v10, p0, mWidths:[F

    .line 106
    :cond_1a
    iget-object v10, p0, mChars:[C

    if-eqz v10, :cond_23

    iget-object v10, p0, mChars:[C

    array-length v10, v10

    if-ge v10, v6, :cond_29

    .line 107
    :cond_23
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v10

    iput-object v10, p0, mChars:[C

    .line 109
    :cond_29
    iget-object v10, p0, mChars:[C

    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {p1, p2, v0, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 111
    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_6c

    move-object v7, p1

    .line 112
    check-cast v7, Landroid/text/Spanned;

    .line 113
    .local v7, "spanned":Landroid/text/Spanned;
    const-class v10, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p3

    invoke-interface {v7, p2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ReplacementSpan;

    .line 116
    .local v8, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_43
    array-length v10, v8

    if-ge v3, v10, :cond_6c

    .line 117
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    .line 118
    .local v9, "startInPara":I
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    .line 120
    .local v2, "endInPara":I
    if-gez v9, :cond_59

    const/4 v9, 0x0

    .line 121
    :cond_59
    if-le v2, v6, :cond_5c

    move v2, v6

    .line 122
    :cond_5c
    move v5, v9

    .local v5, "j":I
    :goto_5d
    if-ge v5, v2, :cond_69

    .line 123
    iget-object v10, p0, mChars:[C

    const v11, 0xfffc

    aput-char v11, v10, v5

    .line 122
    add-int/lit8 v5, v5, 0x1

    goto :goto_5d

    .line 116
    :cond_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 128
    .end local v2    # "endInPara":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v7    # "spanned":Landroid/text/Spanned;
    .end local v8    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v9    # "startInPara":I
    :cond_6c
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_7e

    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_7e

    sget-object v10, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_8e

    :cond_7e
    iget-object v10, p0, mChars:[C

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v10

    if-eqz v10, :cond_8e

    .line 132
    const/4 v10, 0x1

    iput v10, p0, mDir:I

    .line 133
    const/4 v10, 0x1

    iput-boolean v10, p0, mEasy:Z

    .line 154
    :goto_8d
    return-void

    .line 135
    :cond_8e
    iget-object v10, p0, mLevels:[B

    if-eqz v10, :cond_97

    iget-object v10, p0, mLevels:[B

    array-length v10, v10

    if-ge v10, v6, :cond_9d

    .line 136
    :cond_97
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v10

    iput-object v10, p0, mLevels:[B

    .line 139
    :cond_9d
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_b3

    .line 140
    const/4 v1, 0x1

    .line 151
    .local v1, "bidiRequest":I
    :goto_a4
    iget-object v10, p0, mChars:[C

    iget-object v11, p0, mLevels:[B

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v10

    iput v10, p0, mDir:I

    .line 152
    const/4 v10, 0x0

    iput-boolean v10, p0, mEasy:Z

    goto :goto_8d

    .line 141
    .end local v1    # "bidiRequest":I
    :cond_b3
    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_bb

    .line 142
    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    goto :goto_a4

    .line 143
    .end local v1    # "bidiRequest":I
    :cond_bb
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_c3

    .line 144
    const/4 v1, 0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_a4

    .line 145
    .end local v1    # "bidiRequest":I
    :cond_c3
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_cb

    .line 146
    const/4 v1, -0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_a4

    .line 148
    .end local v1    # "bidiRequest":I
    :cond_cb
    iget-object v10, p0, mChars:[C

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v4

    .line 149
    .local v4, "isRtl":Z
    if-eqz v4, :cond_d8

    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    :goto_d7
    goto :goto_a4

    .end local v1    # "bidiRequest":I
    :cond_d8
    const/4 v1, 0x1

    goto :goto_d7
.end method

.method setPos(I)V
    .registers 3
    .param p1, "pos"    # I

    .prologue
    .line 89
    iget v0, p0, mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, mPos:I

    .line 90
    return-void
.end method
