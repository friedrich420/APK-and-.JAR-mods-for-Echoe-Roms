.class public abstract Landroid/database/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Landroid/database/CrossProcessCursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/AbstractCursor$SelfContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field private final mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field private mExtras:Landroid/os/Bundle;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mSelfObserverLock:Ljava/lang/Object;

    .line 72
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, mDataSetObservable:Landroid/database/DataSetObservable;

    .line 73
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, mContentObservable:Landroid/database/ContentObservable;

    .line 75
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, mExtras:Landroid/os/Bundle;

    .line 185
    iput v1, p0, mPos:I

    .line 186
    iput v1, p0, mRowIdColumnIndex:I

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, mCurrentRowID:Ljava/lang/Long;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mUpdatedRows:Ljava/util/HashMap;

    .line 189
    return-void
.end method


# virtual methods
.method protected checkPosition()V
    .registers 4

    .prologue
    .line 425
    const/4 v0, -0x1

    iget v1, p0, mPos:I

    if-eq v0, v1, :cond_d

    invoke-virtual {p0}, getCount()I

    move-result v0

    iget v1, p0, mPos:I

    if-ne v0, v1, :cond_19

    .line 426
    :cond_d
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, mPos:I

    invoke-virtual {p0}, getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 428
    :cond_19
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, mClosed:Z

    .line 147
    iget-object v0, p0, mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 148
    invoke-virtual {p0}, onDeactivateOrClose()V

    .line 149
    return-void
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 8
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Landroid/database/CharArrayBuffer;

    .prologue
    const/4 v4, 0x0

    .line 168
    invoke-virtual {p0, p1}, getString(I)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_27

    .line 170
    iget-object v0, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 171
    .local v0, "data":[C
    if-eqz v0, :cond_12

    array-length v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1f

    .line 172
    :cond_12
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 176
    :goto_18
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 180
    .end local v0    # "data":[C
    :goto_1e
    return-void

    .line 174
    .restart local v0    # "data":[C
    :cond_1f
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v4, v2, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_18

    .line 178
    .end local v0    # "data":[C
    :cond_27
    iput v4, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    goto :goto_1e
.end method

.method public deactivate()V
    .registers 1

    .prologue
    .line 120
    invoke-virtual {p0}, onDeactivateOrClose()V

    .line 121
    return-void
.end method

.method public fillWindow(ILandroid/database/CursorWindow;)V
    .registers 3
    .param p1, "position"    # I
    .param p2, "window"    # Landroid/database/CursorWindow;

    .prologue
    .line 229
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->cursorFillWindow(Landroid/database/Cursor;ILandroid/database/CursorWindow;)V

    .line 230
    return-void
.end method

.method protected finalize()V
    .registers 3

    .prologue
    .line 432
    iget-object v0, p0, mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, mSelfObserverRegistered:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 433
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 436
    :cond_10
    :try_start_10
    iget-boolean v0, p0, mClosed:Z

    if-nez v0, :cond_17

    invoke-virtual {p0}, close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_18

    .line 438
    :cond_17
    :goto_17
    return-void

    .line 437
    :catch_18
    move-exception v0

    goto :goto_17
.end method

.method public getBlob(I)[B
    .registers 4
    .param p1, "column"    # I

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 116
    invoke-virtual {p0}, getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 11
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 277
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 278
    .local v4, "periodIndex":I
    if-eq v4, v5, :cond_2d

    .line 279
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 280
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "requesting column name with table name -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 281
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 284
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2d
    invoke-virtual {p0}, getColumnNames()[Ljava/lang/String;

    move-result-object v0

    .line 285
    .local v0, "columnNames":[Ljava/lang/String;
    array-length v3, v0

    .line 286
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_33
    if-ge v2, v3, :cond_41

    .line 287
    aget-object v6, v0, v2

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 297
    .end local v2    # "i":I
    :goto_3d
    return v2

    .line 286
    .restart local v2    # "i":I
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_33

    :cond_41
    move v2, v5

    .line 297
    goto :goto_3d
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 6
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 301
    invoke-virtual {p0, p1}, getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, "index":I
    if-gez v0, :cond_25

    .line 303
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "column \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 305
    :cond_25
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3
    .param p1, "columnIndex"    # I

    .prologue
    .line 309
    invoke-virtual {p0}, getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 393
    iget-object v0, p0, mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 372
    iget-object v1, p0, mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_3
    iget-object v0, p0, mNotifyUri:Landroid/net/Uri;

    monitor-exit v1

    return-object v0

    .line 374
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final getPosition()I
    .registers 2

    .prologue
    .line 192
    iget v0, p0, mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method public getType(I)I
    .registers 3
    .param p1, "column"    # I

    .prologue
    .line 95
    const/4 v0, 0x3

    return v0
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .registers 3
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .registers 2

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Landroid/database/CursorWindow;
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x0

    return-object v0
.end method

.method public final isAfterLast()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0}, getCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 272
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v1, p0, mPos:I

    invoke-virtual {p0}, getCount()I

    move-result v2

    if-eq v1, v2, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final isBeforeFirst()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 262
    invoke-virtual {p0}, getCount()I

    move-result v1

    if-nez v1, :cond_8

    .line 265
    :cond_7
    :goto_7
    return v0

    :cond_8
    iget v1, p0, mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .registers 3
    .param p1, "columnIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public final isFirst()Z
    .registers 2

    .prologue
    .line 253
    iget v0, p0, mPos:I

    if-nez v0, :cond_c

    invoke-virtual {p0}, getCount()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final isLast()Z
    .registers 4

    .prologue
    .line 257
    invoke-virtual {p0}, getCount()I

    move-result v0

    .line 258
    .local v0, "cnt":I
    iget v1, p0, mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_e

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .registers 3
    .param p1, "offset"    # I

    .prologue
    .line 233
    iget v0, p0, mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .registers 2

    .prologue
    .line 237
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .registers 2

    .prologue
    .line 241
    invoke-virtual {p0}, getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .registers 2

    .prologue
    .line 245
    iget v0, p0, mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .registers 6
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 197
    invoke-virtual {p0}, getCount()I

    move-result v0

    .line 198
    .local v0, "count":I
    if-lt p1, v0, :cond_b

    .line 199
    iput v0, p0, mPos:I

    .line 224
    :cond_a
    :goto_a
    return v1

    .line 204
    :cond_b
    if-gez p1, :cond_10

    .line 205
    iput v3, p0, mPos:I

    goto :goto_a

    .line 210
    :cond_10
    iget v2, p0, mPos:I

    if-ne p1, v2, :cond_16

    .line 211
    const/4 v1, 0x1

    goto :goto_a

    .line 214
    :cond_16
    iget v2, p0, mPos:I

    invoke-virtual {p0, v2, p1}, onMove(II)Z

    move-result v1

    .line 215
    .local v1, "result":Z
    if-nez v1, :cond_21

    .line 216
    iput v3, p0, mPos:I

    goto :goto_a

    .line 218
    :cond_21
    iput p1, p0, mPos:I

    .line 219
    iget v2, p0, mRowIdColumnIndex:I

    if-eq v2, v3, :cond_a

    .line 220
    iget v2, p0, mRowIdColumnIndex:I

    invoke-virtual {p0, v2}, getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, mCurrentRowID:Ljava/lang/Long;

    goto :goto_a
.end method

.method public final moveToPrevious()Z
    .registers 2

    .prologue
    .line 249
    iget v0, p0, mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 338
    iget-object v1, p0, mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_3
    iget-object v0, p0, mContentObservable:Landroid/database/ContentObservable;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    .line 340
    iget-object v0, p0, mNotifyUri:Landroid/net/Uri;

    if-eqz v0, :cond_18

    if-eqz p1, :cond_18

    .line 341
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 343
    :cond_18
    monitor-exit v1

    .line 344
    return-void

    .line 343
    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method protected onDeactivateOrClose()V
    .registers 3

    .prologue
    .line 125
    iget-object v0, p0, mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_e

    .line 126
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, mSelfObserverRegistered:Z

    .line 129
    :cond_e
    iget-object v0, p0, mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 130
    return-void
.end method

.method public onMove(II)Z
    .registers 4
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 162
    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 313
    iget-object v0, p0, mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 314
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 324
    iget-object v0, p0, mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 325
    return-void
.end method

.method public requery()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 133
    iget-object v0, p0, mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, mSelfObserverRegistered:Z

    if-nez v0, :cond_14

    .line 134
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 135
    iput-boolean v3, p0, mSelfObserverRegistered:Z

    .line 137
    :cond_14
    iget-object v0, p0, mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 138
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 397
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 389
    if-nez p1, :cond_4

    sget-object p1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .end local p1    # "extras":Landroid/os/Bundle;
    :cond_4
    iput-object p1, p0, mExtras:Landroid/os/Bundle;

    .line 390
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;

    .prologue
    .line 354
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)V

    .line 355
    return-void
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;I)V
    .registers 9
    .param p1, "cr"    # Landroid/content/ContentResolver;
    .param p2, "notifyUri"    # Landroid/net/Uri;
    .param p3, "userHandle"    # I

    .prologue
    .line 359
    iget-object v1, p0, mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 360
    :try_start_3
    iput-object p2, p0, mNotifyUri:Landroid/net/Uri;

    .line 361
    iput-object p1, p0, mContentResolver:Landroid/content/ContentResolver;

    .line 362
    iget-object v0, p0, mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_12

    .line 363
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 365
    :cond_12
    new-instance v0, Landroid/database/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Landroid/database/AbstractCursor$SelfContentObserver;-><init>(Landroid/database/AbstractCursor;)V

    iput-object v0, p0, mSelfObserver:Landroid/database/ContentObserver;

    .line 366
    iget-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4, p3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, mSelfObserverRegistered:Z

    .line 368
    monitor-exit v1

    .line 369
    return-void

    .line 368
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 318
    iget-boolean v0, p0, mClosed:Z

    if-nez v0, :cond_9

    .line 319
    iget-object v0, p0, mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 321
    :cond_9
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 328
    iget-object v0, p0, mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 329
    return-void
.end method
