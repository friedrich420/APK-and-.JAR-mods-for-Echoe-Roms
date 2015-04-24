.class public Lcom/android/launcher2/HomeItem;
.super Lcom/android/launcher2/BaseItem;
.source "HomeItem.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/HomeItem$1;
    }
.end annotation


# instance fields
.field public cellX:I

.field public cellY:I

.field public container:J

.field public dropPos:[I

.field public mFestivalType:I

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 70
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_UNKNOWN:Lcom/android/launcher2/BaseItem$Type;

    invoke-direct {p0, v0}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 48
    iput v3, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 53
    iput v3, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 58
    iput v2, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 63
    iput v2, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    .line 71
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher2/BaseItem$Type;)V
    .locals 4
    .param p1, "type"    # Lcom/android/launcher2/BaseItem$Type;

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 74
    invoke-direct {p0, p1}, Lcom/android/launcher2/BaseItem;-><init>(Lcom/android/launcher2/BaseItem$Type;)V

    .line 38
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/launcher2/HomeItem;->container:J

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    .line 48
    iput v3, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    .line 53
    iput v3, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    .line 58
    iput v2, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    .line 63
    iput v2, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    .line 75
    return-void
.end method

.method static flattenBitmap(Landroid/graphics/Bitmap;)[B
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x4

    .line 127
    .local v2, "size":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 129
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 130
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 131
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 132
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 135
    :goto_0
    return-object v3

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "Favorite"

    const-string v4, "Could not write icon"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private mapTypeToDbValue()I
    .locals 3

    .prologue
    .line 148
    sget-object v1, Lcom/android/launcher2/HomeItem$1;->$SwitchMap$com$android$launcher2$BaseItem$Type:[I

    iget-object v2, p0, Lcom/android/launcher2/HomeItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    invoke-virtual {v2}, Lcom/android/launcher2/BaseItem$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 168
    const/4 v0, -0x1

    .line 171
    .local v0, "itemType":I
    :goto_0
    return v0

    .line 150
    .end local v0    # "itemType":I
    :pswitch_0
    const/4 v0, 0x0

    .line 151
    .restart local v0    # "itemType":I
    goto :goto_0

    .line 153
    .end local v0    # "itemType":I
    :pswitch_1
    const/4 v0, 0x1

    .line 154
    .restart local v0    # "itemType":I
    goto :goto_0

    .line 156
    .end local v0    # "itemType":I
    :pswitch_2
    const/4 v0, 0x2

    .line 157
    .restart local v0    # "itemType":I
    goto :goto_0

    .line 159
    .end local v0    # "itemType":I
    :pswitch_3
    const/4 v0, 0x4

    .line 160
    .restart local v0    # "itemType":I
    goto :goto_0

    .line 162
    .end local v0    # "itemType":I
    :pswitch_4
    const/16 v0, 0x384

    .line 163
    .restart local v0    # "itemType":I
    goto :goto_0

    .line 165
    .end local v0    # "itemType":I
    :pswitch_5
    const/16 v0, 0x385

    .line 166
    .restart local v0    # "itemType":I
    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method static writeBitmap(Landroid/content/ContentValues;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    invoke-static {p1}, Lcom/android/launcher2/HomeItem;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    .line 142
    .local v0, "data":[B
    const-string v1, "icon"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 144
    .end local v0    # "data":[B
    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 226
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 232
    :goto_0
    return-object v1

    .line 229
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 232
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpanX()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    return v0
.end method

.method public getSpanY()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    return v0
.end method

.method public mapDbValueToType(I)Lcom/android/launcher2/BaseItem$Type;
    .locals 1
    .param p1, "dbValue"    # I

    .prologue
    .line 176
    sparse-switch p1, :sswitch_data_0

    .line 196
    const/4 v0, 0x0

    .line 199
    .local v0, "type":Lcom/android/launcher2/BaseItem$Type;
    :goto_0
    return-object v0

    .line 178
    .end local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    :sswitch_0
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_APPLICATION:Lcom/android/launcher2/BaseItem$Type;

    .line 179
    .restart local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 181
    .end local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    :sswitch_1
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SHORTCUT:Lcom/android/launcher2/BaseItem$Type;

    .line 182
    .restart local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 184
    .end local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    :sswitch_2
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    .line 185
    .restart local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 187
    .end local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    :sswitch_3
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    .line 188
    .restart local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 190
    .end local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    :sswitch_4
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SAMSUNG_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    .line 191
    .restart local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 193
    .end local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    :sswitch_5
    sget-object v0, Lcom/android/launcher2/BaseItem$Type;->HOME_SURFACE_WIDGET:Lcom/android/launcher2/BaseItem$Type;

    .line 194
    .restart local v0    # "type":Lcom/android/launcher2/BaseItem$Type;
    goto :goto_0

    .line 176
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x384 -> :sswitch_4
        0x385 -> :sswitch_5
    .end sparse-switch
.end method

.method onAddToDatabase(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 107
    const-string v0, "itemType"

    invoke-direct {p0}, Lcom/android/launcher2/HomeItem;->mapTypeToDbValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v0, "container"

    iget-wide v2, p0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    const-string v0, "screen"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v0, "cellX"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 111
    const-string v0, "cellY"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string v0, "spanX"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string v0, "spanY"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v1, "secret"

    iget-boolean v0, p0, Lcom/android/launcher2/HomeItem;->mSecretItem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v0, "festival"

    iget v1, p0, Lcom/android/launcher2/HomeItem;->mFestivalType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HomeItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher2/HomeItem;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/launcher2/HomeItem;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->mScreen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/HomeItem;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/HomeItem;->dropPos:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateValuesWithCoordinates(Landroid/content/ContentValues;II)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I

    .prologue
    .line 119
    const-string v0, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    const-string v0, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    return-void
.end method
