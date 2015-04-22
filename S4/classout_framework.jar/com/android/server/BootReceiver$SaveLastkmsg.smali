.class Lcom/android/server/BootReceiver$SaveLastkmsg;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveLastkmsg"
.end annotation


# static fields
.field private static final KERNEL_VERSION:Ljava/lang/String; = "/proc/version"

.field private static final LAST_KMSG:Ljava/lang/String; = "/proc/last_kmsg"

.field private static final LAST_KMSG_SAVE:Ljava/lang/String; = "/data/log/dumpstate_lastkmsg"

.field private static final MAX_LAST_KMSG:I = 0x5


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BootReceiver$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/BootReceiver$1;

    .prologue
    .line 133
    invoke-direct {p0}, <init>()V

    return-void
.end method

.method private logLastKmsg()V
    .registers 23

    .prologue
    .line 177
    new-instance v12, Ljava/io/File;

    const-string v19, "/proc/last_kmsg"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 178
    .local v12, "lk_proc":Ljava/io/File;
    new-instance v18, Ljava/io/File;

    const-string v19, "/proc/version"

    invoke-direct/range {v18 .. v19}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v18, "version_proc":Ljava/io/File;
    const/16 v19, 0x800

    move/from16 v0, v19

    new-array v1, v0, [B

    .line 180
    .local v1, "buffer":[B
    const/4 v4, 0x0

    .line 181
    .local v4, "fin":Ljava/io/FileInputStream;
    const/16 v16, 0x0

    .line 182
    .local v16, "ver_fin":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    .line 183
    .local v6, "fout":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 184
    .local v8, "gout":Ljava/util/zip/GZIPOutputStream;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 186
    .local v15, "time":Landroid/text/format/Time;
    const-string v19, "BootReceiver"

    const-string/jumbo v20, "logLastKmsg - Start"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v19

    if-nez v19, :cond_2f

    .line 245
    :goto_2e
    return-void

    .line 190
    :cond_2f
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    .line 192
    const-string v19, "%Y%m%d_%H%M%S"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 193
    .local v2, "date":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/data/log/dumpstate_lastkmsg_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".log.gz"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v13, "lk_save":Ljava/io/File;
    const/4 v10, 0x0

    .line 198
    .local v10, "len":I
    :try_start_5d
    const-string v19, "%Y-%m-%d %H:%M:%S"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 200
    const-string v11, "========================================================\n"

    .line 201
    .local v11, "line":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "== dumpstate lastkmsg : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 203
    .local v14, "text":Ljava/lang/String;
    const-string v19, "BootReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "logLastKmsg - New filename is "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_a4} :catch_1e1
    .catchall {:try_start_5d .. :try_end_a4} :catchall_19e

    .line 206
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .local v5, "fin":Ljava/io/FileInputStream;
    :try_start_a4
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a9
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a9} :catch_1e4
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_1ce

    .line 207
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .local v7, "fout":Ljava/io/FileOutputStream;
    :try_start_a9
    new-instance v9, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v9, v7}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ae} :catch_1e8
    .catchall {:try_start_a9 .. :try_end_ae} :catchall_1d1

    .line 209
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .local v9, "gout":Ljava/util/zip/GZIPOutputStream;
    :try_start_ae
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 210
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 211
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 213
    const-string v14, "\n[Kernel version]: "

    .line 214
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 216
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->isFile()Z

    move-result v19

    if-eqz v19, :cond_12e

    .line 217
    new-instance v17, Ljava/io/FileInputStream;

    invoke-direct/range {v17 .. v18}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_df} :catch_17b
    .catchall {:try_start_ae .. :try_end_df} :catchall_1d5

    .line 218
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .local v17, "ver_fin":Ljava/io/FileInputStream;
    :goto_df
    :try_start_df
    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_1ed

    .line 219
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_ee} :catch_ef
    .catchall {:try_start_df .. :try_end_ee} :catchall_1da

    goto :goto_df

    .line 236
    :catch_ef
    move-exception v3

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    move-object v4, v5

    .line 237
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    .local v3, "e":Ljava/io/IOException;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    :goto_f5
    :try_start_f5
    const-string v19, "BootReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "logLastKmsg - File copy error"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_110
    .catchall {:try_start_f5 .. :try_end_110} :catchall_19e

    .line 239
    if-eqz v4, :cond_115

    :try_start_112
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_115
    .catch Ljava/io/IOException; {:try_start_112 .. :try_end_115} :catch_1ba

    .line 240
    :cond_115
    :goto_115
    if-eqz v16, :cond_11a

    :try_start_117
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_11a
    .catch Ljava/io/IOException; {:try_start_117 .. :try_end_11a} :catch_1bd

    .line 241
    :cond_11a
    :goto_11a
    if-eqz v8, :cond_11f

    :try_start_11c
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_11f
    .catch Ljava/io/IOException; {:try_start_11c .. :try_end_11f} :catch_1c0

    .line 242
    :cond_11f
    :goto_11f
    if-eqz v6, :cond_124

    :try_start_121
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_1c3

    .line 244
    .end local v3    # "e":Ljava/io/IOException;
    :cond_124
    :goto_124
    const-string v19, "BootReceiver"

    const-string/jumbo v20, "logLastKmsg - Save Complete"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e

    .line 222
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :cond_12e
    :try_start_12e
    const-string/jumbo v14, "unknown"

    .line 223
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 226
    :goto_13a
    const-string v14, "[Build Fingerprint]: "

    .line 227
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 229
    const-string/jumbo v19, "ro.build.fingerprint"

    const-string/jumbo v20, "unknown"

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 230
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 231
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 233
    :goto_16d
    invoke-virtual {v5, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_181

    .line 234
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v9, v1, v0, v10}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_17a
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_17a} :catch_17b
    .catchall {:try_start_12e .. :try_end_17a} :catchall_1d5

    goto :goto_16d

    .line 236
    :catch_17b
    move-exception v3

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_f5

    .line 239
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    :cond_181
    if-eqz v5, :cond_186

    :try_start_183
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_186
    .catch Ljava/io/IOException; {:try_start_183 .. :try_end_186} :catch_1b4

    .line 240
    :cond_186
    :goto_186
    if-eqz v16, :cond_18b

    :try_start_188
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_1b6

    .line 241
    :cond_18b
    :goto_18b
    if-eqz v9, :cond_190

    :try_start_18d
    invoke-virtual {v9}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_190} :catch_1b8

    .line 242
    :cond_190
    :goto_190
    if-eqz v7, :cond_195

    :try_start_192
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_195
    .catch Ljava/io/IOException; {:try_start_192 .. :try_end_195} :catch_199

    :cond_195
    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_124

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    :catch_199
    move-exception v19

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .line 243
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_124

    .line 239
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    :catchall_19e
    move-exception v19

    :goto_19f
    if-eqz v4, :cond_1a4

    :try_start_1a1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1c6

    .line 240
    :cond_1a4
    :goto_1a4
    if-eqz v16, :cond_1a9

    :try_start_1a6
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileInputStream;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1a9} :catch_1c8

    .line 241
    :cond_1a9
    :goto_1a9
    if-eqz v8, :cond_1ae

    :try_start_1ab
    invoke-virtual {v8}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1ae
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1ae} :catch_1ca

    .line 242
    :cond_1ae
    :goto_1ae
    if-eqz v6, :cond_1b3

    :try_start_1b0
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_1b3
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1b3} :catch_1cc

    :cond_1b3
    :goto_1b3
    throw v19

    .line 239
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_1b4
    move-exception v19

    goto :goto_186

    .line 240
    :catch_1b6
    move-exception v19

    goto :goto_18b

    .line 241
    :catch_1b8
    move-exception v19

    goto :goto_190

    .line 239
    .end local v5    # "fin":Ljava/io/FileInputStream;
    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    .restart local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    :catch_1ba
    move-exception v19

    goto/16 :goto_115

    .line 240
    :catch_1bd
    move-exception v19

    goto/16 :goto_11a

    .line 241
    :catch_1c0
    move-exception v19

    goto/16 :goto_11f

    .line 242
    :catch_1c3
    move-exception v19

    goto/16 :goto_124

    .line 239
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1c6
    move-exception v20

    goto :goto_1a4

    .line 240
    :catch_1c8
    move-exception v20

    goto :goto_1a9

    .line 241
    :catch_1ca
    move-exception v20

    goto :goto_1ae

    .line 242
    :catch_1cc
    move-exception v20

    goto :goto_1b3

    .line 239
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :catchall_1ce
    move-exception v19

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_19f

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catchall_1d1
    move-exception v19

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_19f

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    :catchall_1d5
    move-exception v19

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_19f

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "ver_fin":Ljava/io/FileInputStream;
    :catchall_1da
    move-exception v19

    move-object v8, v9

    .end local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto :goto_19f

    .line 236
    .end local v11    # "line":Ljava/lang/String;
    .end local v14    # "text":Ljava/lang/String;
    :catch_1e1
    move-exception v3

    goto/16 :goto_f5

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v11    # "line":Ljava/lang/String;
    .restart local v14    # "text":Ljava/lang/String;
    :catch_1e4
    move-exception v3

    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_f5

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    :catch_1e8
    move-exception v3

    move-object v6, v7

    .end local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v6    # "fout":Ljava/io/FileOutputStream;
    move-object v4, v5

    .end local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    goto/16 :goto_f5

    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "gout":Ljava/util/zip/GZIPOutputStream;
    .end local v16    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v5    # "fin":Ljava/io/FileInputStream;
    .restart local v7    # "fout":Ljava/io/FileOutputStream;
    .restart local v9    # "gout":Ljava/util/zip/GZIPOutputStream;
    .restart local v17    # "ver_fin":Ljava/io/FileInputStream;
    :cond_1ed
    move-object/from16 v16, v17

    .end local v17    # "ver_fin":Ljava/io/FileInputStream;
    .restart local v16    # "ver_fin":Ljava/io/FileInputStream;
    goto/16 :goto_13a
.end method

.method private trimLastKmsg()V
    .registers 13

    .prologue
    .line 140
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/log"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    .local v8, "logFolder":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    .line 142
    .local v6, "listOfAllFiles":[Ljava/io/File;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v7, "listOfLastkmsg":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_10
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_1a

    .line 146
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z

    .line 174
    :cond_19
    :goto_19
    return-void

    .line 150
    :cond_1a
    move-object v0, v6

    .local v0, "arr$":[Ljava/io/File;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1d
    if-ge v4, v5, :cond_39

    aget-object v2, v0, v4

    .line 151
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "fname":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v9

    if-eqz v9, :cond_36

    const-string v9, "dumpstate_lastkmsg"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_36

    .line 153
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 157
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fname":Ljava/lang/String;
    :cond_39
    new-instance v9, Lcom/android/server/BootReceiver$SaveLastkmsg$1;

    invoke-direct {v9, p0}, Lcom/android/server/BootReceiver$SaveLastkmsg$1;-><init>(Lcom/android/server/BootReceiver$SaveLastkmsg;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 164
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg - Num of existing listOfLastkmsg is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :goto_5e
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x5

    if-lt v9, v10, :cond_19

    .line 167
    const-string v10, "BootReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg - Delete file"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 169
    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_97} :catch_98

    goto :goto_5e

    .line 171
    .end local v0    # "arr$":[Ljava/io/File;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    :catch_98
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "BootReceiver"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "trimLastKmsg error"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 249
    invoke-direct {p0}, trimLastKmsg()V

    .line 250
    invoke-direct {p0}, logLastKmsg()V

    .line 251
    return-void
.end method
