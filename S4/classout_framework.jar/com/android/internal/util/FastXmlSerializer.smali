.class public Lcom/android/internal/util/FastXmlSerializer;
.super Ljava/lang/Object;
.source "FastXmlSerializer.java"

# interfaces
.implements Lorg/xmlpull/v1/XmlSerializer;


# static fields
.field private static final BUFFER_LEN:I = 0x2000

.field private static final ESCAPE_TABLE:[Ljava/lang/String;

.field private static sSpace:Ljava/lang/String;


# instance fields
.field private mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mInTag:Z

.field private mIndent:Z

.field private mLineStart:Z

.field private mNesting:I

.field private mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mText:[C

.field private mWriter:Ljava/io/Writer;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 40
    const/16 v0, 0x40

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    aput-object v3, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    const/4 v1, 0x5

    aput-object v3, v0, v1

    const/4 v1, 0x6

    aput-object v3, v0, v1

    const/4 v1, 0x7

    aput-object v3, v0, v1

    const/16 v1, 0x8

    aput-object v3, v0, v1

    const/16 v1, 0x9

    aput-object v3, v0, v1

    const/16 v1, 0xa

    aput-object v3, v0, v1

    const/16 v1, 0xb

    aput-object v3, v0, v1

    const/16 v1, 0xc

    aput-object v3, v0, v1

    const/16 v1, 0xd

    aput-object v3, v0, v1

    const/16 v1, 0xe

    aput-object v3, v0, v1

    const/16 v1, 0xf

    aput-object v3, v0, v1

    const/16 v1, 0x10

    aput-object v3, v0, v1

    const/16 v1, 0x11

    aput-object v3, v0, v1

    const/16 v1, 0x12

    aput-object v3, v0, v1

    const/16 v1, 0x13

    aput-object v3, v0, v1

    const/16 v1, 0x14

    aput-object v3, v0, v1

    const/16 v1, 0x15

    aput-object v3, v0, v1

    const/16 v1, 0x16

    aput-object v3, v0, v1

    const/16 v1, 0x17

    aput-object v3, v0, v1

    const/16 v1, 0x18

    aput-object v3, v0, v1

    const/16 v1, 0x19

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    aput-object v3, v0, v1

    const/16 v1, 0x20

    aput-object v3, v0, v1

    const/16 v1, 0x21

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string v2, "&quot;"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    aput-object v3, v0, v1

    const/16 v1, 0x24

    aput-object v3, v0, v1

    const/16 v1, 0x25

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v2, "&amp;"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    aput-object v3, v0, v1

    const/16 v1, 0x28

    aput-object v3, v0, v1

    const/16 v1, 0x29

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    aput-object v3, v0, v1

    const/16 v1, 0x30

    aput-object v3, v0, v1

    const/16 v1, 0x31

    aput-object v3, v0, v1

    const/16 v1, 0x32

    aput-object v3, v0, v1

    const/16 v1, 0x33

    aput-object v3, v0, v1

    const/16 v1, 0x34

    aput-object v3, v0, v1

    const/16 v1, 0x35

    aput-object v3, v0, v1

    const/16 v1, 0x36

    aput-object v3, v0, v1

    const/16 v1, 0x37

    aput-object v3, v0, v1

    const/16 v1, 0x38

    aput-object v3, v0, v1

    const/16 v1, 0x39

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v2, "&lt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v2, "&gt;"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    aput-object v3, v0, v1

    sput-object v0, ESCAPE_TABLE:[Ljava/lang/String;

    .line 53
    const-string v0, "                                                              "

    sput-object v0, sSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0x2000

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-array v0, v2, [C

    iput-object v0, p0, mText:[C

    .line 62
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, mBytes:Ljava/nio/ByteBuffer;

    .line 64
    iput-boolean v1, p0, mIndent:Z

    .line 67
    iput v1, p0, mNesting:I

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, mLineStart:Z

    return-void
.end method

.method private append(C)V
    .registers 4
    .param p1, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    iget v0, p0, mPos:I

    .line 72
    .local v0, "pos":I
    const/16 v1, 0x1fff

    if-lt v0, v1, :cond_b

    .line 73
    invoke-virtual {p0}, flush()V

    .line 74
    iget v0, p0, mPos:I

    .line 76
    :cond_b
    iget-object v1, p0, mText:[C

    aput-char p1, v1, v0

    .line 77
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mPos:I

    .line 78
    return-void
.end method

.method private append(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, append(Ljava/lang/String;II)V

    .line 120
    return-void
.end method

.method private append(Ljava/lang/String;II)V
    .registers 9
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 81
    if-le p3, v4, :cond_15

    .line 82
    add-int v0, p2, p3

    .line 83
    .local v0, "end":I
    :goto_6
    if-ge p2, v0, :cond_2b

    .line 84
    add-int/lit16 v1, p2, 0x2000

    .line 85
    .local v1, "next":I
    if-ge v1, v0, :cond_12

    move v3, v4

    :goto_d
    invoke-direct {p0, p1, p2, v3}, append(Ljava/lang/String;II)V

    .line 86
    move p2, v1

    .line 87
    goto :goto_6

    .line 85
    :cond_12
    sub-int v3, v0, p2

    goto :goto_d

    .line 90
    .end local v0    # "end":I
    .end local v1    # "next":I
    :cond_15
    iget v2, p0, mPos:I

    .line 91
    .local v2, "pos":I
    add-int v3, v2, p3

    if-le v3, v4, :cond_20

    .line 92
    invoke-virtual {p0}, flush()V

    .line 93
    iget v2, p0, mPos:I

    .line 95
    :cond_20
    add-int v3, p2, p3

    iget-object v4, p0, mText:[C

    invoke-virtual {p1, p2, v3, v4, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 96
    add-int v3, v2, p3

    iput v3, p0, mPos:I

    .line 97
    .end local v2    # "pos":I
    :cond_2b
    return-void
.end method

.method private append([CII)V
    .registers 9
    .param p1, "buf"    # [C
    .param p2, "i"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2000

    .line 100
    if-le p3, v4, :cond_15

    .line 101
    add-int v0, p2, p3

    .line 102
    .local v0, "end":I
    :goto_6
    if-ge p2, v0, :cond_29

    .line 103
    add-int/lit16 v1, p2, 0x2000

    .line 104
    .local v1, "next":I
    if-ge v1, v0, :cond_12

    move v3, v4

    :goto_d
    invoke-direct {p0, p1, p2, v3}, append([CII)V

    .line 105
    move p2, v1

    .line 106
    goto :goto_6

    .line 104
    :cond_12
    sub-int v3, v0, p2

    goto :goto_d

    .line 109
    .end local v0    # "end":I
    .end local v1    # "next":I
    :cond_15
    iget v2, p0, mPos:I

    .line 110
    .local v2, "pos":I
    add-int v3, v2, p3

    if-le v3, v4, :cond_20

    .line 111
    invoke-virtual {p0}, flush()V

    .line 112
    iget v2, p0, mPos:I

    .line 114
    :cond_20
    iget-object v3, p0, mText:[C

    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 115
    add-int v3, v2, p3

    iput v3, p0, mPos:I

    .line 116
    .end local v2    # "pos":I
    :cond_29
    return-void
.end method

.method private appendIndent(I)V
    .registers 4
    .param p1, "indent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    mul-int/lit8 p1, p1, 0x4

    .line 124
    sget-object v0, sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_10

    .line 125
    sget-object v0, sSpace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    .line 127
    :cond_10
    sget-object v0, sSpace:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, append(Ljava/lang/String;II)V

    .line 128
    return-void
.end method

.method private escapeAndAppendString(Ljava/lang/String;)V
    .registers 10
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 132
    .local v0, "N":I
    sget-object v7, ESCAPE_TABLE:[Ljava/lang/String;

    array-length v7, v7

    int-to-char v1, v7

    .line 133
    .local v1, "NE":C
    sget-object v4, ESCAPE_TABLE:[Ljava/lang/String;

    .line 134
    .local v4, "escapes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 136
    .local v5, "lastPos":I
    const/4 v6, 0x0

    .local v6, "pos":I
    :goto_c
    if-ge v6, v0, :cond_28

    .line 137
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 138
    .local v2, "c":C
    if-lt v2, v1, :cond_17

    .line 136
    :cond_14
    :goto_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 139
    :cond_17
    aget-object v3, v4, v2

    .line 140
    .local v3, "escape":Ljava/lang/String;
    if-eqz v3, :cond_14

    .line 141
    if-ge v5, v6, :cond_22

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, append(Ljava/lang/String;II)V

    .line 142
    :cond_22
    add-int/lit8 v5, v6, 0x1

    .line 143
    invoke-direct {p0, v3}, append(Ljava/lang/String;)V

    goto :goto_14

    .line 145
    .end local v2    # "c":C
    .end local v3    # "escape":Ljava/lang/String;
    :cond_28
    if-ge v5, v6, :cond_2f

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, append(Ljava/lang/String;II)V

    .line 146
    :cond_2f
    return-void
.end method

.method private escapeAndAppendString([CII)V
    .registers 12
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    sget-object v7, ESCAPE_TABLE:[Ljava/lang/String;

    array-length v7, v7

    int-to-char v0, v7

    .line 150
    .local v0, "NE":C
    sget-object v4, ESCAPE_TABLE:[Ljava/lang/String;

    .line 151
    .local v4, "escapes":[Ljava/lang/String;
    add-int v2, p2, p3

    .line 152
    .local v2, "end":I
    move v5, p2

    .line 154
    .local v5, "lastPos":I
    move v6, p2

    .local v6, "pos":I
    :goto_a
    if-ge v6, v2, :cond_24

    .line 155
    aget-char v1, p1, v6

    .line 156
    .local v1, "c":C
    if-lt v1, v0, :cond_13

    .line 154
    :cond_10
    :goto_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 157
    :cond_13
    aget-object v3, v4, v1

    .line 158
    .local v3, "escape":Ljava/lang/String;
    if-eqz v3, :cond_10

    .line 159
    if-ge v5, v6, :cond_1e

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, append([CII)V

    .line 160
    :cond_1e
    add-int/lit8 v5, v6, 0x1

    .line 161
    invoke-direct {p0, v3}, append(Ljava/lang/String;)V

    goto :goto_10

    .line 163
    .end local v1    # "c":C
    .end local v3    # "escape":Ljava/lang/String;
    :cond_24
    if-ge v5, v6, :cond_2b

    sub-int v7, v6, v5

    invoke-direct {p0, p1, v5, v7}, append([CII)V

    .line 164
    :cond_2b
    return-void
.end method

.method private flushBytes()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    iget-object v1, p0, mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .local v0, "position":I
    if-lez v0, :cond_1e

    .line 231
    iget-object v1, p0, mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 232
    iget-object v1, p0, mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 233
    iget-object v1, p0, mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 235
    :cond_1e
    return-void
.end method


# virtual methods
.method public attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 168
    const/16 v0, 0x20

    invoke-direct {p0, v0}, append(C)V

    .line 169
    if-eqz p1, :cond_f

    .line 170
    invoke-direct {p0, p1}, append(Ljava/lang/String;)V

    .line 171
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, append(C)V

    .line 173
    :cond_f
    invoke-direct {p0, p2}, append(Ljava/lang/String;)V

    .line 174
    const-string v0, "=\""

    invoke-direct {p0, v0}, append(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0, p3}, escapeAndAppendString(Ljava/lang/String;)V

    .line 177
    const/16 v0, 0x22

    invoke-direct {p0, v0}, append(C)V

    .line 178
    const/4 v0, 0x0

    iput-boolean v0, p0, mLineStart:Z

    .line 179
    return-object p0
.end method

.method public cdsect(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public comment(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public docdecl(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 194
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p0}, flush()V

    .line 199
    return-void
.end method

.method public endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 203
    iget v0, p0, mNesting:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mNesting:I

    .line 204
    iget-boolean v0, p0, mInTag:Z

    if-eqz v0, :cond_16

    .line 205
    const-string v0, " />\n"

    invoke-direct {p0, v0}, append(Ljava/lang/String;)V

    .line 218
    :goto_f
    const/4 v0, 0x1

    iput-boolean v0, p0, mLineStart:Z

    .line 219
    const/4 v0, 0x0

    iput-boolean v0, p0, mInTag:Z

    .line 220
    return-object p0

    .line 207
    :cond_16
    iget-boolean v0, p0, mIndent:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, mLineStart:Z

    if-eqz v0, :cond_23

    .line 208
    iget v0, p0, mNesting:I

    invoke-direct {p0, v0}, appendIndent(I)V

    .line 210
    :cond_23
    const-string v0, "</"

    invoke-direct {p0, v0}, append(Ljava/lang/String;)V

    .line 211
    if-eqz p1, :cond_32

    .line 212
    invoke-direct {p0, p1}, append(Ljava/lang/String;)V

    .line 213
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, append(C)V

    .line 215
    :cond_32
    invoke-direct {p0, p2}, append(Ljava/lang/String;)V

    .line 216
    const-string v0, ">\n"

    invoke-direct {p0, v0}, append(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public entityRef(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 239
    iget v2, p0, mPos:I

    if-lez v2, :cond_46

    .line 240
    iget-object v2, p0, mOutputStream:Ljava/io/OutputStream;

    if-eqz v2, :cond_47

    .line 241
    iget-object v2, p0, mText:[C

    iget v3, p0, mPos:I

    invoke-static {v2, v5, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 242
    .local v0, "charBuffer":Ljava/nio/CharBuffer;
    iget-object v2, p0, mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 244
    .local v1, "result":Ljava/nio/charset/CoderResult;
    :goto_1a
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 245
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_2a
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 247
    invoke-direct {p0}, flushBytes()V

    .line 248
    iget-object v2, p0, mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v3, p0, mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0, v3, v4}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 249
    goto :goto_1a

    .line 253
    :cond_3c
    invoke-direct {p0}, flushBytes()V

    .line 254
    iget-object v2, p0, mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 259
    .end local v0    # "charBuffer":Ljava/nio/CharBuffer;
    .end local v1    # "result":Ljava/nio/charset/CoderResult;
    :goto_44
    iput v5, p0, mPos:I

    .line 261
    :cond_46
    return-void

    .line 256
    :cond_47
    iget-object v2, p0, mWriter:Ljava/io/Writer;

    iget-object v3, p0, mText:[C

    iget v4, p0, mPos:I

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/Writer;->write([CII)V

    .line 257
    iget-object v2, p0, mWriter:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    goto :goto_44
.end method

.method public getDepth()I
    .registers 2

    .prologue
    .line 264
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    .prologue
    .line 276
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getPrefix(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "generatePrefix"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 281
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 285
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ignorableWhitespace(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public processingInstruction(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 295
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 300
    const-string v0, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, mIndent:Z

    .line 302
    return-void

    .line 304
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 5
    .param p1, "os"    # Ljava/io/OutputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 309
    if-nez p1, :cond_8

    .line 310
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 313
    :cond_8
    :try_start_8
    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v1

    iput-object v1, p0, mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_12
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_8 .. :try_end_12} :catch_15
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_8 .. :try_end_12} :catch_24

    .line 321
    iput-object p1, p0, mOutputStream:Ljava/io/OutputStream;

    .line 328
    return-void

    .line 314
    :catch_15
    move-exception v0

    .line 315
    .local v0, "e":Ljava/nio/charset/IllegalCharsetNameException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1

    .line 317
    .end local v0    # "e":Ljava/nio/charset/IllegalCharsetNameException;
    :catch_24
    move-exception v0

    .line 318
    .local v0, "e":Ljava/nio/charset/UnsupportedCharsetException;
    new-instance v1, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v1, p2}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    check-cast v1, Ljava/io/UnsupportedEncodingException;

    throw v1
.end method

.method public setOutput(Ljava/io/Writer;)V
    .registers 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 332
    iput-object p1, p0, mWriter:Ljava/io/Writer;

    .line 333
    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 337
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 342
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "standalone"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\'1.0\' encoding=\'utf-8\' standalone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string/jumbo v0, "yes"

    :goto_14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' ?>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, append(Ljava/lang/String;)V

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, mLineStart:Z

    .line 350
    return-void

    .line 347
    :cond_29
    const-string/jumbo v0, "no"

    goto :goto_14
.end method

.method public startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 4
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 354
    iget-boolean v0, p0, mInTag:Z

    if-eqz v0, :cond_9

    .line 355
    const-string v0, ">\n"

    invoke-direct {p0, v0}, append(Ljava/lang/String;)V

    .line 357
    :cond_9
    iget-boolean v0, p0, mIndent:Z

    if-eqz v0, :cond_12

    .line 358
    iget v0, p0, mNesting:I

    invoke-direct {p0, v0}, appendIndent(I)V

    .line 360
    :cond_12
    iget v0, p0, mNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNesting:I

    .line 361
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, append(C)V

    .line 362
    if-eqz p1, :cond_27

    .line 363
    invoke-direct {p0, p1}, append(Ljava/lang/String;)V

    .line 364
    const/16 v0, 0x3a

    invoke-direct {p0, v0}, append(C)V

    .line 366
    :cond_27
    invoke-direct {p0, p2}, append(Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, mInTag:Z

    .line 368
    const/4 v0, 0x0

    iput-boolean v0, p0, mLineStart:Z

    .line 369
    return-object p0
.end method

.method public text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    .registers 5
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 387
    iget-boolean v1, p0, mInTag:Z

    if-eqz v1, :cond_c

    .line 388
    const-string v1, ">"

    invoke-direct {p0, v1}, append(Ljava/lang/String;)V

    .line 389
    iput-boolean v0, p0, mInTag:Z

    .line 391
    :cond_c
    invoke-direct {p0, p1}, escapeAndAppendString(Ljava/lang/String;)V

    .line 392
    iget-boolean v1, p0, mIndent:Z

    if-eqz v1, :cond_2a

    .line 393
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_28

    const/4 v0, 0x1

    :cond_28
    iput-boolean v0, p0, mLineStart:Z

    .line 395
    :cond_2a
    return-object p0
.end method

.method public text([CII)Lorg/xmlpull/v1/XmlSerializer;
    .registers 7
    .param p1, "buf"    # [C
    .param p2, "start"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 374
    iget-boolean v1, p0, mInTag:Z

    if-eqz v1, :cond_c

    .line 375
    const-string v1, ">"

    invoke-direct {p0, v1}, append(Ljava/lang/String;)V

    .line 376
    iput-boolean v0, p0, mInTag:Z

    .line 378
    :cond_c
    invoke-direct {p0, p1, p2, p3}, escapeAndAppendString([CII)V

    .line 379
    iget-boolean v1, p0, mIndent:Z

    if-eqz v1, :cond_20

    .line 380
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x1

    aget-char v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1e

    const/4 v0, 0x1

    :cond_1e
    iput-boolean v0, p0, mLineStart:Z

    .line 382
    :cond_20
    return-object p0
.end method
