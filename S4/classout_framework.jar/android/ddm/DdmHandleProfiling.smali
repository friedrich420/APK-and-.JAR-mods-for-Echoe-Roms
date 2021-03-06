.class public Landroid/ddm/DdmHandleProfiling;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandleProfiling.java"


# static fields
.field public static final CHUNK_MPRE:I

.field public static final CHUNK_MPRQ:I

.field public static final CHUNK_MPRS:I

.field public static final CHUNK_MPSE:I

.field public static final CHUNK_MPSS:I

.field public static final CHUNK_SPSE:I

.field public static final CHUNK_SPSS:I

.field private static final DEBUG:Z

.field private static mInstance:Landroid/ddm/DdmHandleProfiling;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-string v0, "MPRS"

    invoke-static {v0}, type(Ljava/lang/String;)I

    move-result v0

    sput v0, CHUNK_MPRS:I

    .line 32
    const-string v0, "MPRE"

    invoke-static {v0}, type(Ljava/lang/String;)I

    move-result v0

    sput v0, CHUNK_MPRE:I

    .line 33
    const-string v0, "MPSS"

    invoke-static {v0}, type(Ljava/lang/String;)I

    move-result v0

    sput v0, CHUNK_MPSS:I

    .line 34
    const-string v0, "MPSE"

    invoke-static {v0}, type(Ljava/lang/String;)I

    move-result v0

    sput v0, CHUNK_MPSE:I

    .line 35
    const-string v0, "MPRQ"

    invoke-static {v0}, type(Ljava/lang/String;)I

    move-result v0

    sput v0, CHUNK_MPRQ:I

    .line 36
    const-string v0, "SPSS"

    invoke-static {v0}, type(Ljava/lang/String;)I

    move-result v0

    sput v0, CHUNK_SPSS:I

    .line 37
    const-string v0, "SPSE"

    invoke-static {v0}, type(Ljava/lang/String;)I

    move-result v0

    sput v0, CHUNK_SPSE:I

    .line 40
    new-instance v0, Landroid/ddm/DdmHandleProfiling;

    invoke-direct {v0}, <init>()V

    sput-object v0, mInstance:Landroid/ddm/DdmHandleProfiling;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method private handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 9
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    const/4 v6, 0x0

    .line 128
    :try_start_1
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_13

    .line 129
    const/4 v2, 0x0

    .line 137
    .local v2, "result":B
    :goto_5
    const/4 v3, 0x1

    new-array v1, v3, [B

    aput-byte v2, v1, v6

    .line 138
    .local v1, "reply":[B
    new-instance v3, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v4, CHUNK_MPRE:I

    array-length v5, v1

    invoke-direct {v3, v4, v1, v6, v5}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v3

    .line 130
    .end local v1    # "reply":[B
    .end local v2    # "result":B
    :catch_13
    move-exception v0

    .line 131
    .local v0, "re":Ljava/lang/RuntimeException;
    const-string v3, "ddm-heap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Method profiling end failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v2, 0x1

    .restart local v2    # "result":B
    goto :goto_5
.end method

.method private handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    const/4 v5, 0x0

    .line 187
    invoke-static {}, Landroid/os/Debug;->getMethodTracingMode()I

    move-result v1

    .line 190
    .local v1, "result":I
    const/4 v2, 0x1

    new-array v0, v2, [B

    int-to-byte v2, v1

    aput-byte v2, v0, v5

    .line 191
    .local v0, "reply":[B
    new-instance v2, Lorg/apache/harmony/dalvik/ddmc/Chunk;

    sget v3, CHUNK_MPRQ:I

    array-length v4, v0

    invoke-direct {v2, v3, v0, v5, v4}, Lorg/apache/harmony/dalvik/ddmc/Chunk;-><init>(I[BII)V

    return-object v2
.end method

.method private handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 10
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 103
    invoke-static {p1}, wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 105
    .local v3, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 106
    .local v0, "bufferSize":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 107
    .local v2, "flags":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 108
    .local v4, "len":I
    invoke-static {v3, v4}, getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "fileName":Ljava/lang/String;
    :try_start_14
    invoke-static {v1, v0, v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;II)V
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_17} :catch_19

    .line 115
    const/4 v6, 0x0

    .line 117
    :goto_18
    return-object v6

    .line 116
    :catch_19
    move-exception v5

    .line 117
    .local v5, "re":Ljava/lang/RuntimeException;
    const/4 v6, 0x1

    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v6

    goto :goto_18
.end method

.method private handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 7
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 172
    :try_start_0
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    .line 180
    const/4 v1, 0x0

    :goto_4
    return-object v1

    .line 173
    :catch_5
    move-exception v0

    .line 174
    .local v0, "re":Ljava/lang/RuntimeException;
    const-string v1, "ddm-heap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " prof stream end failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_4
.end method

.method private handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 8
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 145
    invoke-static {p1}, wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 147
    .local v2, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 148
    .local v0, "bufferSize":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 155
    .local v1, "flags":I
    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_e
    invoke-static {v0, v1, v4, v5}, Landroid/os/Debug;->startMethodTracingDdms(IIZI)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_11} :catch_13

    .line 156
    const/4 v4, 0x0

    .line 158
    :goto_12
    return-object v4

    .line 157
    :catch_13
    move-exception v3

    .line 158
    .local v3, "re":Ljava/lang/RuntimeException;
    const/4 v4, 0x1

    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v4

    goto :goto_12
.end method

.method private handleSPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 9
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    const/4 v6, 0x1

    .line 198
    invoke-static {p1}, wrapChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 200
    .local v2, "in":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 201
    .local v0, "bufferSize":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    .line 202
    .local v1, "flags":I
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 209
    .local v3, "interval":I
    const/4 v5, 0x1

    :try_start_12
    invoke-static {v0, v1, v5, v3}, Landroid/os/Debug;->startMethodTracingDdms(IIZI)V
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_15} :catch_17

    .line 210
    const/4 v5, 0x0

    .line 212
    :goto_16
    return-object v5

    .line 211
    :catch_17
    move-exception v4

    .line 212
    .local v4, "re":Ljava/lang/RuntimeException;
    invoke-virtual {v4}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, createFailChunk(ILjava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v5

    goto :goto_16
.end method

.method public static register()V
    .registers 2

    .prologue
    .line 50
    sget v0, CHUNK_MPRS:I

    sget-object v1, mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 51
    sget v0, CHUNK_MPRE:I

    sget-object v1, mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 52
    sget v0, CHUNK_MPSS:I

    sget-object v1, mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 53
    sget v0, CHUNK_MPSE:I

    sget-object v1, mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 54
    sget v0, CHUNK_MPRQ:I

    sget-object v1, mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 55
    sget v0, CHUNK_SPSS:I

    sget-object v1, mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 56
    sget v0, CHUNK_SPSE:I

    sget-object v1, mInstance:Landroid/ddm/DdmHandleProfiling;

    invoke-static {v0, v1}, Lorg/apache/harmony/dalvik/ddmc/DdmServer;->registerHandler(ILorg/apache/harmony/dalvik/ddmc/ChunkHandler;)V

    .line 57
    return-void
.end method


# virtual methods
.method public connected()V
    .registers 1

    .prologue
    .line 63
    return-void
.end method

.method public disconnected()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public handleChunk(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;
    .registers 6
    .param p1, "request"    # Lorg/apache/harmony/dalvik/ddmc/Chunk;

    .prologue
    .line 77
    iget v0, p1, Lorg/apache/harmony/dalvik/ddmc/Chunk;->type:I

    .line 79
    .local v0, "type":I
    sget v1, CHUNK_MPRS:I

    if-ne v0, v1, :cond_b

    .line 80
    invoke-direct {p0, p1}, handleMPRS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    .line 92
    :goto_a
    return-object v1

    .line 81
    :cond_b
    sget v1, CHUNK_MPRE:I

    if-ne v0, v1, :cond_14

    .line 82
    invoke-direct {p0, p1}, handleMPRE(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_a

    .line 83
    :cond_14
    sget v1, CHUNK_MPSS:I

    if-ne v0, v1, :cond_1d

    .line 84
    invoke-direct {p0, p1}, handleMPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_a

    .line 85
    :cond_1d
    sget v1, CHUNK_MPSE:I

    if-ne v0, v1, :cond_28

    .line 86
    const-string v1, "Method"

    invoke-direct {p0, p1, v1}, handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_a

    .line 87
    :cond_28
    sget v1, CHUNK_MPRQ:I

    if-ne v0, v1, :cond_31

    .line 88
    invoke-direct {p0, p1}, handleMPRQ(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_a

    .line 89
    :cond_31
    sget v1, CHUNK_SPSS:I

    if-ne v0, v1, :cond_3a

    .line 90
    invoke-direct {p0, p1}, handleSPSS(Lorg/apache/harmony/dalvik/ddmc/Chunk;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_a

    .line 91
    :cond_3a
    sget v1, CHUNK_SPSE:I

    if-ne v0, v1, :cond_45

    .line 92
    const-string v1, "Sample"

    invoke-direct {p0, p1, v1}, handleMPSEOrSPSE(Lorg/apache/harmony/dalvik/ddmc/Chunk;Ljava/lang/String;)Lorg/apache/harmony/dalvik/ddmc/Chunk;

    move-result-object v1

    goto :goto_a

    .line 94
    :cond_45
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown packet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
