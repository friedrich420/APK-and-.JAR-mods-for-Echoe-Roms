.class public Landroid/media/audiofx/Equalizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Equalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Equalizer$1;,
        Landroid/media/audiofx/Equalizer$Settings;,
        Landroid/media/audiofx/Equalizer$BaseParameterListener;,
        Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "Equalizer"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .registers 12
    .param p1, "priority"    # I
    .param p2, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 139
    sget-object v5, EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    sget-object v6, EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v5, v6, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 96
    iput-short v7, p0, mNumBands:S

    .line 110
    iput-object v8, p0, mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 115
    iput-object v8, p0, mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 120
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, mParamListenerLock:Ljava/lang/Object;

    .line 141
    if-nez p2, :cond_1f

    .line 142
    const-string v5, "Equalizer"

    const-string v6, "WARNING: attaching an Equalizer to global output mix is deprecated!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1f
    invoke-virtual {p0}, getNumberOfBands()S

    .line 147
    invoke-virtual {p0}, getNumberOfPresets()S

    move-result v5

    iput v5, p0, mNumPresets:I

    .line 149
    iget v5, p0, mNumPresets:I

    if-eqz v5, :cond_6d

    .line 150
    iget v5, p0, mNumPresets:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, mPresetNames:[Ljava/lang/String;

    .line 151
    const/16 v5, 0x20

    new-array v4, v5, [B

    .line 152
    .local v4, "value":[B
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 153
    .local v3, "param":[I
    const/16 v5, 0x8

    aput v5, v3, v7

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    iget v5, p0, mNumPresets:I

    if-ge v1, v5, :cond_6d

    .line 155
    const/4 v5, 0x1

    aput v1, v3, v5

    .line 156
    invoke-virtual {p0, v3, v4}, getParameter([I[B)I

    move-result v5

    invoke-virtual {p0, v5}, checkStatus(I)V

    .line 157
    const/4 v2, 0x0

    .line 158
    .local v2, "length":I
    :goto_4d
    aget-byte v5, v4, v2

    if-eqz v5, :cond_54

    add-int/lit8 v2, v2, 0x1

    goto :goto_4d

    .line 160
    :cond_54
    :try_start_54
    iget-object v5, p0, mPresetNames:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v4, v7, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v1
    :try_end_60
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_54 .. :try_end_60} :catch_63

    .line 154
    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 161
    :catch_63
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, "Equalizer"

    const-string/jumbo v6, "preset name decode error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 166
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "param":[I
    .end local v4    # "value":[B
    :cond_6d
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/Equalizer;

    .prologue
    .line 42
    iget-object v0, p0, mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .registers 2
    .param p0, "x0"    # Landroid/media/audiofx/Equalizer;

    .prologue
    .line 42
    iget-object v0, p0, mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getBand(I)S
    .registers 7
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 301
    .local v0, "param":[I
    new-array v1, v4, [S

    .line 303
    .local v1, "result":[S
    const/4 v2, 0x5

    aput v2, v0, v3

    .line 304
    aput p1, v0, v4

    .line 305
    invoke-virtual {p0, v0, v1}, getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, checkStatus(I)V

    .line 307
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandFreqRange(S)[I
    .registers 6
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 281
    new-array v0, v2, [I

    .line 282
    .local v0, "param":[I
    new-array v1, v2, [I

    .line 283
    .local v1, "result":[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v0, v2

    .line 284
    const/4 v2, 0x1

    aput p1, v0, v2

    .line 285
    invoke-virtual {p0, v0, v1}, getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, checkStatus(I)V

    .line 287
    return-object v1
.end method

.method public getBandLevel(S)S
    .registers 7
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 237
    new-array v0, v4, [I

    .line 238
    .local v0, "param":[I
    new-array v1, v2, [S

    .line 240
    .local v1, "result":[S
    aput v4, v0, v3

    .line 241
    aput p1, v0, v2

    .line 242
    invoke-virtual {p0, v0, v1}, getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, checkStatus(I)V

    .line 244
    aget-short v2, v1, v3

    return v2
.end method

.method public getBandLevelRange()[S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 199
    const/4 v1, 0x2

    new-array v0, v1, [S

    .line 200
    .local v0, "result":[S
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, checkStatus(I)V

    .line 201
    return-object v0
.end method

.method public getCenterFreq(S)I
    .registers 7
    .param p1, "band"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 260
    .local v0, "param":[I
    new-array v1, v4, [I

    .line 262
    .local v1, "result":[I
    const/4 v2, 0x3

    aput v2, v0, v3

    .line 263
    aput p1, v0, v4

    .line 264
    invoke-virtual {p0, v0, v1}, getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, checkStatus(I)V

    .line 266
    aget v2, v1, v3

    return v2
.end method

.method public getCurrentPreset()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 319
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 320
    .local v0, "result":[S
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, checkStatus(I)V

    .line 321
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getNumberOfBands()S
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 177
    iget-short v2, p0, mNumBands:S

    if-eqz v2, :cond_9

    .line 178
    iget-short v2, p0, mNumBands:S

    .line 185
    :goto_8
    return v2

    .line 180
    :cond_9
    new-array v0, v4, [I

    .line 181
    .local v0, "param":[I
    aput v3, v0, v3

    .line 182
    new-array v1, v4, [S

    .line 183
    .local v1, "result":[S
    invoke-virtual {p0, v0, v1}, getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, checkStatus(I)V

    .line 184
    aget-short v2, v1, v3

    iput-short v2, p0, mNumBands:S

    .line 185
    iget-short v2, p0, mNumBands:S

    goto :goto_8
.end method

.method public getNumberOfPresets()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 348
    const/4 v1, 0x1

    new-array v0, v1, [S

    .line 349
    .local v0, "result":[S
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, checkStatus(I)V

    .line 350
    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getPresetName(S)Ljava/lang/String;
    .registers 3
    .param p1, "preset"    # S

    .prologue
    .line 363
    if-ltz p1, :cond_b

    iget v0, p0, mNumPresets:I

    if-ge p1, v0, :cond_b

    .line 364
    iget-object v0, p0, mPresetNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 366
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public getProperties()Landroid/media/audiofx/Equalizer$Settings;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 524
    iget-short v3, p0, mNumBands:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [B

    .line 525
    .local v1, "param":[B
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v1}, getParameter(I[B)I

    move-result v3

    invoke-virtual {p0, v3}, checkStatus(I)V

    .line 526
    new-instance v2, Landroid/media/audiofx/Equalizer$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/Equalizer$Settings;-><init>()V

    .line 527
    .local v2, "settings":Landroid/media/audiofx/Equalizer$Settings;
    const/4 v3, 0x0

    invoke-static {v1, v3}, byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    .line 528
    const/4 v3, 0x2

    invoke-static {v1, v3}, byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    .line 529
    iget-short v3, p0, mNumBands:S

    new-array v3, v3, [S

    iput-object v3, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    .line 530
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2b
    iget-short v3, p0, mNumBands:S

    if-ge v0, v3, :cond_3e

    .line 531
    iget-object v3, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-static {v1, v4}, byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v3, v0

    .line 530
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 533
    :cond_3e
    return-object v2
.end method

.method public setBandLevel(SS)V
    .registers 8
    .param p1, "band"    # S
    .param p2, "level"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    new-array v0, v4, [I

    .line 218
    .local v0, "param":[I
    new-array v1, v3, [S

    .line 220
    .local v1, "value":[S
    aput v4, v0, v2

    .line 221
    aput p1, v0, v3

    .line 222
    aput-short p2, v1, v2

    .line 223
    invoke-virtual {p0, v0, v1}, setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, checkStatus(I)V

    .line 224
    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/Equalizer$OnParameterChangeListener;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .prologue
    .line 433
    iget-object v1, p0, mParamListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 434
    :try_start_3
    iget-object v0, p0, mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    if-nez v0, :cond_16

    .line 435
    iput-object p1, p0, mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    .line 436
    new-instance v0, Landroid/media/audiofx/Equalizer$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$1;)V

    iput-object v0, p0, mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    .line 437
    iget-object v0, p0, mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    invoke-super {p0, v0}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    .line 439
    :cond_16
    monitor-exit v1

    .line 440
    return-void

    .line 439
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public setProperties(Landroid/media/audiofx/Equalizer$Settings;)V
    .registers 9
    .param p1, "settings"    # Landroid/media/audiofx/Equalizer$Settings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 546
    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-object v3, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    array-length v3, v3

    if-ne v2, v3, :cond_10

    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-short v3, p0, mNumBands:S

    if-eq v2, v3, :cond_2c

    .line 548
    :cond_10
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "settings invalid band count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 551
    :cond_2c
    new-array v2, v6, [[B

    iget-short v3, p1, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    invoke-static {v3}, shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v4

    iget-short v3, p0, mNumBands:S

    invoke-static {v3}, shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, concatArrays([[B)[B

    move-result-object v1

    .line 553
    .local v1, "param":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_43
    iget-short v2, p0, mNumBands:S

    if-ge v0, v2, :cond_5c

    .line 554
    new-array v2, v6, [[B

    aput-object v1, v2, v4

    iget-object v3, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-static {v3}, shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v2}, concatArrays([[B)[B

    move-result-object v1

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    .line 557
    :cond_5c
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, setParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, checkStatus(I)V

    .line 558
    return-void
.end method

.method public usePreset(S)V
    .registers 3
    .param p1, "preset"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, checkStatus(I)V

    .line 336
    return-void
.end method