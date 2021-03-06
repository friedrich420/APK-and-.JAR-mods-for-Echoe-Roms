.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final mFirLength:I = 0x1d


# instance fields
.field private mBuf:[B

.field private mBufCount:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mOneByte:[B

.field private final mRateIn:I

.field private final mRateOut:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const-string/jumbo v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .registers 6
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "rateIn"    # I
    .param p3, "rateOut"    # I

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, mOneByte:[B

    .line 61
    mul-int/lit8 v0, p3, 0x2

    if-eq p2, v0, :cond_15

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "only support 2:1 at the moment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_15
    const/4 p2, 0x2

    .line 63
    const/4 p3, 0x1

    .line 65
    iput-object p1, p0, mInputStream:Ljava/io/InputStream;

    .line 66
    iput p2, p0, mRateIn:I

    .line 67
    iput p3, p0, mRateOut:I

    .line 68
    return-void
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    :try_start_1
    iget-object v0, p0, mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    iget-object v0, p0, mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    .line 132
    :cond_a
    iput-object v1, p0, mInputStream:Ljava/io/InputStream;

    .line 134
    return-void

    .line 132
    :catchall_d
    move-exception v0

    iput-object v1, p0, mInputStream:Ljava/io/InputStream;

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_10

    .line 139
    invoke-virtual {p0}, close()V

    .line 140
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "someone forgot to close ResampleInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_10
    return-void
.end method

.method public read()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    iget-object v1, p0, mOneByte:[B

    invoke-virtual {p0, v1, v2, v3}, read([BII)I

    move-result v0

    .line 73
    .local v0, "rtn":I
    if-ne v0, v3, :cond_11

    iget-object v1, p0, mOneByte:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    :goto_10
    return v1

    :cond_11
    const/4 v1, -0x1

    goto :goto_10
.end method

.method public read([B)I
    .registers 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 16
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v11, 0x0

    .line 83
    iget-object v6, p0, mInputStream:Ljava/io/InputStream;

    if-nez v6, :cond_f

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "not open"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 86
    :cond_f
    div-int/lit8 v6, p3, 0x2

    iget v7, p0, mRateIn:I

    mul-int/2addr v6, v7

    iget v7, p0, mRateOut:I

    div-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1d

    mul-int/lit8 v4, v6, 0x2

    .line 87
    .local v4, "nIn":I
    iget-object v6, p0, mBuf:[B

    if-nez v6, :cond_58

    .line 88
    new-array v6, v4, [B

    iput-object v6, p0, mBuf:[B

    .line 97
    :cond_23
    :goto_23
    iget v6, p0, mBufCount:I

    div-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x1d

    iget v7, p0, mRateOut:I

    mul-int/2addr v6, v7

    iget v7, p0, mRateIn:I

    div-int/2addr v6, v7

    mul-int/lit8 v1, v6, 0x2

    .line 98
    .local v1, "len":I
    if-lez v1, :cond_6e

    .line 99
    if-ge v1, p3, :cond_69

    move p3, v1

    .line 109
    :goto_36
    iget-object v5, p0, mBuf:[B

    div-int/lit8 v6, p3, 0x2

    invoke-static {v5, v11, p1, p2, v6}, fir21([BI[BII)V

    .line 112
    iget v5, p0, mRateIn:I

    mul-int/2addr v5, p3

    iget v6, p0, mRateOut:I

    div-int v3, v5, v6

    .line 113
    .local v3, "nFwd":I
    iget v5, p0, mBufCount:I

    sub-int/2addr v5, v3

    iput v5, p0, mBufCount:I

    .line 114
    iget v5, p0, mBufCount:I

    if-lez v5, :cond_56

    iget-object v5, p0, mBuf:[B

    iget-object v6, p0, mBuf:[B

    iget v7, p0, mBufCount:I

    invoke-static {v5, v3, v6, v11, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    :cond_56
    move v5, p3

    .line 116
    .end local v3    # "nFwd":I
    :cond_57
    return v5

    .line 89
    .end local v1    # "len":I
    :cond_58
    iget-object v6, p0, mBuf:[B

    array-length v6, v6

    if-le v4, v6, :cond_23

    .line 90
    new-array v0, v4, [B

    .line 91
    .local v0, "bf":[B
    iget-object v6, p0, mBuf:[B

    iget v7, p0, mBufCount:I

    invoke-static {v6, v11, v0, v11, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 92
    iput-object v0, p0, mBuf:[B

    goto :goto_23

    .line 99
    .end local v0    # "bf":[B
    .restart local v1    # "len":I
    :cond_69
    div-int/lit8 v5, p3, 0x2

    mul-int/lit8 p3, v5, 0x2

    goto :goto_36

    .line 103
    :cond_6e
    iget-object v6, p0, mInputStream:Ljava/io/InputStream;

    iget-object v7, p0, mBuf:[B

    iget v8, p0, mBufCount:I

    iget-object v9, p0, mBuf:[B

    array-length v9, v9

    iget v10, p0, mBufCount:I

    sub-int/2addr v9, v10

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 104
    .local v2, "n":I
    if-eq v2, v5, :cond_57

    .line 105
    iget v6, p0, mBufCount:I

    add-int/2addr v6, v2

    iput v6, p0, mBufCount:I

    goto :goto_23
.end method
