.class public Lcom/android/common/OperationScheduler;
.super Ljava/lang/Object;
.source "OperationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/OperationScheduler$Options;
    }
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String; = "OperationScheduler_"


# instance fields
.field private final mStorage:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "storage"    # Landroid/content/SharedPreferences;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    .line 85
    return-void
.end method

.method private getTimeBefore(Ljava/lang/String;J)J
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "max"    # J

    .prologue
    .line 229
    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v2, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 230
    .local v0, "time":J
    cmp-long v2, v0, p2

    if-lez v2, :cond_0

    .line 231
    move-wide v0, p2

    .line 232
    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 234
    :cond_0
    return-wide v0
.end method

.method public static parseOptions(Ljava/lang/String;Lcom/android/common/OperationScheduler$Options;)Lcom/android/common/OperationScheduler$Options;
    .locals 12
    .param p0, "spec"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/android/common/OperationScheduler$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 109
    const-string v5, " +"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_9

    aget-object v3, v0, v1

    .line 110
    .local v3, "param":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 109
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const-string v5, "backoff="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 112
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "\\+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 113
    .local v4, "pieces":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x3

    if-le v5, v6, :cond_2

    .line 114
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bad value for backoff: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :cond_2
    array-length v5, v4

    if-lez v5, :cond_3

    aget-object v5, v4, v10

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 117
    aget-object v5, v4, v10

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    .line 119
    :cond_3
    array-length v5, v4

    if-le v5, v8, :cond_4

    aget-object v5, v4, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 120
    aget-object v5, v4, v8

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    .line 122
    :cond_4
    array-length v5, v4

    if-le v5, v9, :cond_0

    aget-object v5, v4, v9

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 123
    aget-object v5, v4, v9

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v5, v6

    iput v5, p1, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    goto :goto_1

    .line 125
    .end local v4    # "pieces":[Ljava/lang/String;
    :cond_5
    const-string v5, "max="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 126
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    goto/16 :goto_1

    .line 127
    :cond_6
    const-string v5, "min="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 128
    invoke-virtual {v3, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    goto/16 :goto_1

    .line 129
    :cond_7
    const-string v5, "period="

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 130
    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    goto/16 :goto_1

    .line 132
    :cond_8
    invoke-static {v3}, Lcom/android/common/OperationScheduler;->parseSeconds(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p1, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    goto/16 :goto_1

    .line 135
    .end local v3    # "param":Ljava/lang/String;
    :cond_9
    return-object p1
.end method

.method private static parseSeconds(Ljava/lang/String;)J
    .locals 2
    .param p0, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method protected currentTimeMillis()J
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastAttemptTimeMillis()J
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 214
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_lastErrorTimeMillis"

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSuccessTimeMillis()J
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextTimeMillis(Lcom/android/common/OperationScheduler$Options;)J
    .locals 30
    .param p1, "options"    # Lcom/android/common/OperationScheduler$Options;

    .prologue
    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "OperationScheduler_enabledState"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 153
    .local v6, "enabledState":Z
    if-nez v6, :cond_1

    const-wide v20, 0x7fffffffffffffffL

    .line 195
    :cond_0
    :goto_0
    return-wide v20

    .line 155
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "OperationScheduler_permanentError"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 156
    .local v18, "permanentError":Z
    if-eqz v18, :cond_2

    const-wide v20, 0x7fffffffffffffffL

    goto :goto_0

    .line 162
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "OperationScheduler_errorCount"

    const/16 v26, 0x0

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 163
    .local v7, "errorCount":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v16

    .line 164
    .local v16, "now":J
    const-string v24, "OperationScheduler_lastSuccessTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v10

    .line 165
    .local v10, "lastSuccessTimeMillis":J
    const-string v24, "OperationScheduler_lastErrorTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v8

    .line 166
    .local v8, "lastErrorTimeMillis":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    move-object/from16 v24, v0

    const-string v25, "OperationScheduler_triggerTimeMillis"

    const-wide v26, 0x7fffffffffffffffL

    invoke-interface/range {v24 .. v27}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v22

    .line 167
    .local v22, "triggerTimeMillis":J
    const-string v24, "OperationScheduler_moratoriumSetTimeMillis"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v12

    .line 168
    .local v12, "moratoriumSetMillis":J
    const-string v24, "OperationScheduler_moratoriumTimeMillis"

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->maxMoratoriumMillis:J

    move-wide/from16 v26, v0

    add-long v26, v26, v12

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/OperationScheduler;->getTimeBefore(Ljava/lang/String;J)J

    move-result-wide v14

    .line 171
    .local v14, "moratoriumTimeMillis":J
    move-wide/from16 v20, v22

    .line 172
    .local v20, "time":J
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_3

    .line 173
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->periodicIntervalMillis:J

    move-wide/from16 v24, v0

    add-long v24, v24, v10

    move-wide/from16 v0, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 176
    :cond_3
    move-wide/from16 v0, v20

    invoke-static {v0, v1, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 177
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->minTriggerMillis:J

    move-wide/from16 v24, v0

    add-long v24, v24, v10

    move-wide/from16 v0, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    .line 178
    if-lez v7, :cond_0

    .line 179
    add-int/lit8 v19, v7, -0x1

    .line 182
    .local v19, "shift":I
    const/16 v24, 0x1e

    move/from16 v0, v19

    move/from16 v1, v24

    if-le v0, v1, :cond_4

    const/16 v19, 0x1e

    .line 183
    :cond_4
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffFixedMillis:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffIncrementalMillis:J

    move-wide/from16 v26, v0

    int-to-long v0, v7

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    add-long v24, v24, v26

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/common/OperationScheduler$Options;->backoffExponentialMillis:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    shl-long v26, v26, v19

    add-long v4, v24, v26

    .line 189
    .local v4, "backoff":J
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-lez v24, :cond_5

    cmp-long v24, v4, v14

    if-lez v24, :cond_5

    .line 190
    move-wide v4, v14

    .line 193
    :cond_5
    add-long v24, v8, v4

    move-wide/from16 v0, v20

    move-wide/from16 v2, v24

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v20

    goto/16 :goto_0
.end method

.method public onPermanentError()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 344
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->resetTransientError()V

    .line 304
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->resetPermanentError()V

    .line 305
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_lastSuccessTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 311
    return-void
.end method

.method public onTransientError()V
    .locals 5

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 320
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "OperationScheduler_lastErrorTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 321
    const-string v1, "OperationScheduler_errorCount"

    iget-object v2, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    const-string v3, "OperationScheduler_errorCount"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 323
    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 324
    return-void
.end method

.method public resetPermanentError()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_permanentError"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 352
    return-void
.end method

.method public resetTransientError()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_errorCount"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 334
    return-void
.end method

.method public setEnabledState(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_enabledState"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 296
    return-void
.end method

.method public setMoratoriumTimeHttp(Ljava/lang/String;)Z
    .locals 10
    .param p1, "retryAfter"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 273
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v2, v6, v8

    .line 274
    .local v2, "ms":J
    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-virtual {p0, v6, v7}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    .end local v2    # "ms":J
    :goto_0
    return v4

    .line 276
    :catch_0
    move-exception v1

    .line 278
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    :try_start_1
    invoke-static {p1}, Landroid/net/http/AndroidHttpClient;->parseDate(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lcom/android/common/OperationScheduler;->setMoratoriumTimeMillis(J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 280
    :catch_1
    move-exception v0

    .line 281
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setMoratoriumTimeMillis(J)V
    .locals 5
    .param p1, "millis"    # J

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_moratoriumTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_moratoriumSetTimeMillis"

    invoke-virtual {p0}, Lcom/android/common/OperationScheduler;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 261
    return-void
.end method

.method public setTriggerTimeMillis(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "OperationScheduler_triggerTimeMillis"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/SharedPreferencesCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 248
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "[OperationScheduler:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    .local v4, "out":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/TreeMap;

    iget-object v7, p0, Lcom/android/common/OperationScheduler;->mStorage:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 360
    .local v0, "copy":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 361
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 362
    .local v3, "key":Ljava/lang/String;
    const-string v7, "OperationScheduler_"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 363
    const-string v7, "TimeMillis"

    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 364
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 365
    .local v5, "time":Landroid/text/format/Time;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 366
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OperationScheduler_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%Y-%m-%d/%H:%M:%S"

    invoke-virtual {v5, v8}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 369
    .end local v5    # "time":Landroid/text/format/Time;
    :cond_1
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OperationScheduler_"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 371
    .local v6, "v":Ljava/lang/Object;
    if-nez v6, :cond_2

    .line 372
    const-string v7, "=(null)"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 374
    :cond_2
    const-string v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 379
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "v":Ljava/lang/Object;
    :cond_3
    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
