.class Lcom/android/settings/fingerprint/DownloadService$DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/DownloadService;


# direct methods
.method private constructor <init>(Lcom/android/settings/fingerprint/DownloadService;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fingerprint/DownloadService;Lcom/android/settings/fingerprint/DownloadService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/fingerprint/DownloadService;
    .param p2, "x1"    # Lcom/android/settings/fingerprint/DownloadService$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;-><init>(Lcom/android/settings/fingerprint/DownloadService;)V

    return-void
.end method

.method private checkDownload()Z
    .locals 24

    .prologue
    .line 288
    const/4 v13, 0x0

    .line 290
    .local v13, "instream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->makeCheckDownloadURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 291
    .local v3, "checkURL":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V

    .line 293
    const/16 v21, 0x0

    .line 470
    :cond_0
    :goto_0
    return v21

    .line 296
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V

    .line 299
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    .line 300
    .local v8, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 302
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 305
    .local v10, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v11, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    .local v11, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const/16 v17, 0x0

    .line 309
    .local v17, "response":Lorg/apache/http/HttpResponse;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->isCancelled()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    if-eqz v21, :cond_2

    .line 310
    const/16 v21, 0x0

    .line 459
    if-eqz v13, :cond_0

    .line 460
    :try_start_2
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v6

    .line 462
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 313
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :try_start_3
    invoke-interface {v10, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v17

    .line 316
    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .line 320
    .local v7, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v7, :cond_3

    .line 323
    :try_start_4
    invoke-interface {v7}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v13

    .line 324
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-interface {v14, v13, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_f
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    :cond_3
    :try_start_5
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v15

    .line 344
    .local v15, "parserEvent":I
    const-string v12, ""

    .local v12, "id":Ljava/lang/String;
    const-string v18, ""

    .line 345
    .local v18, "resultCode":Ljava/lang/String;
    const-string v5, ""

    .line 346
    .local v5, "downloadURI":Ljava/lang/String;
    const-string v4, ""

    .line 347
    .local v4, "contentSize":Ljava/lang/String;
    const-string v16, ""

    .line 349
    .local v16, "productName":Ljava/lang/String;
    :goto_1
    const/16 v21, 0x1

    move/from16 v0, v21

    if-eq v15, v0, :cond_f

    .line 350
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->isCancelled()Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v21

    if-eqz v21, :cond_4

    .line 351
    const/16 v21, 0x0

    .line 459
    if-eqz v13, :cond_0

    .line 460
    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 461
    :catch_1
    move-exception v6

    .line 462
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 325
    .end local v4    # "contentSize":Ljava/lang/String;
    .end local v5    # "downloadURI":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "id":Ljava/lang/String;
    .end local v15    # "parserEvent":I
    .end local v16    # "productName":Ljava/lang/String;
    .end local v18    # "resultCode":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 326
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/net/SocketException; {:try_start_7 .. :try_end_7} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 328
    const/16 v21, 0x0

    .line 459
    if-eqz v13, :cond_0

    .line 460
    :try_start_8
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 461
    :catch_3
    move-exception v6

    .line 462
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 329
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 330
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_9} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 332
    const/16 v21, 0x0

    .line 459
    if-eqz v13, :cond_0

    .line 460
    :try_start_a
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 461
    :catch_5
    move-exception v6

    .line 462
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 335
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    :catch_6
    move-exception v6

    .line 336
    .local v6, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/net/SocketException; {:try_start_b .. :try_end_b} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_b .. :try_end_b} :catch_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_11
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 338
    const/16 v21, 0x0

    .line 459
    if-eqz v13, :cond_0

    .line 460
    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    .line 461
    :catch_7
    move-exception v6

    .line 462
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 353
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v4    # "contentSize":Ljava/lang/String;
    .restart local v5    # "downloadURI":Ljava/lang/String;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v12    # "id":Ljava/lang/String;
    .restart local v15    # "parserEvent":I
    .restart local v16    # "productName":Ljava/lang/String;
    .restart local v18    # "resultCode":Ljava/lang/String;
    :cond_4
    const/16 v21, 0x2

    move/from16 v0, v21

    if-ne v15, v0, :cond_b

    .line 354
    :try_start_d
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 355
    .local v19, "tag":Ljava/lang/String;
    const-string v21, "appId"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 356
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .line 357
    .local v20, "type":I
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 358
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v12

    .line 362
    .end local v20    # "type":I
    :cond_5
    const-string v21, "resultCode"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 363
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .line 364
    .restart local v20    # "type":I
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 365
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v18

    .line 367
    :cond_6
    const-string v21, "DownloadService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "resultCode : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v20    # "type":I
    :cond_7
    const-string v21, "downloadURI"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    .line 371
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .line 372
    .restart local v20    # "type":I
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 373
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v21

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/settings/fingerprint/DownloadInfo;->setUri(Ljava/lang/String;)V

    .line 378
    .end local v20    # "type":I
    :cond_8
    const-string v21, "contentSize"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_9

    .line 379
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .line 380
    .restart local v20    # "type":I
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 381
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    .line 385
    .end local v20    # "type":I
    :cond_9
    const-string v21, "productName"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    .line 386
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .line 387
    .restart local v20    # "type":I
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 388
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v16

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/DownloadInfo;->setProductName(Ljava/lang/String;)V

    .line 393
    .end local v20    # "type":I
    :cond_a
    const-string v21, "signature"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 394
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v20

    .line 395
    .restart local v20    # "type":I
    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_b

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v22

    # setter for: Lcom/android/settings/fingerprint/DownloadService;->mSignature:Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/settings/fingerprint/DownloadService;->access$602(Lcom/android/settings/fingerprint/DownloadService;Ljava/lang/String;)Ljava/lang/String;

    .line 401
    .end local v19    # "tag":Ljava/lang/String;
    .end local v20    # "type":I
    :cond_b
    const/16 v21, 0x3

    move/from16 v0, v21

    if-ne v15, v0, :cond_e

    .line 402
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v19

    .line 403
    .restart local v19    # "tag":Ljava/lang/String;
    const-string v21, "downloadURI"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/settings/fingerprint/DownloadInfo;->setPackageName(Ljava/lang/String;)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/DownloadInfo;->setProductName(Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/settings/fingerprint/DownloadInfo;->setUri(Ljava/lang/String;)V

    .line 407
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_d

    .line 408
    :cond_c
    const-string v4, "0"

    .line 410
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v21

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadInfo;->setTotalBytes(J)V

    .line 414
    .end local v19    # "tag":Ljava/lang/String;
    :cond_e
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    goto/16 :goto_1

    .line 417
    :cond_f
    const-string v21, "0"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_10

    .line 418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/net/SocketException; {:try_start_d .. :try_end_d} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_f
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 419
    const/16 v21, 0x0

    .line 459
    if-eqz v13, :cond_0

    .line 460
    :try_start_e
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_0

    .line 461
    :catch_8
    move-exception v6

    .line 462
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 422
    .end local v6    # "e":Ljava/io/IOException;
    :cond_10
    :try_start_f
    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    .end local v11    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    invoke-direct {v11, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_f} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_f .. :try_end_f} :catch_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 425
    .restart local v11    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    :try_start_10
    invoke-interface {v10, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/net/SocketException; {:try_start_10 .. :try_end_10} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_10 .. :try_end_10} :catch_f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v17

    .line 430
    :goto_2
    if-eqz v17, :cond_11

    .line 431
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v21

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadInfo;->setTotalBytes(J)V

    .line 434
    :cond_11
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static/range {v22 .. v22}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/fingerprint/DownloadInfo;->getPackageName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ".apk"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, "fileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadService;->access$700(Lcom/android/settings/fingerprint/DownloadService;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "absolutePath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/settings/fingerprint/DownloadInfo;->setDestination(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_a
    .catch Ljava/net/SocketException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_11 .. :try_end_11} :catch_f
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 459
    if-eqz v13, :cond_12

    .line 460
    :try_start_12
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c

    .line 466
    :cond_12
    :goto_3
    const-string v21, "DownloadService"

    const-string v22, "Check download complete"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x3

    const/16 v23, 0x0

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V

    .line 470
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 426
    .end local v2    # "absolutePath":Ljava/lang/String;
    .end local v9    # "fileName":Ljava/lang/String;
    :catch_9
    move-exception v6

    .line 427
    .local v6, "e":Ljava/lang/IllegalStateException;
    :try_start_13
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/net/SocketException; {:try_start_13 .. :try_end_13} :catch_d
    .catch Ljava/net/UnknownHostException; {:try_start_13 .. :try_end_13} :catch_f
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto :goto_2

    .line 437
    .end local v4    # "contentSize":Ljava/lang/String;
    .end local v5    # "downloadURI":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v11    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "parserEvent":I
    .end local v16    # "productName":Ljava/lang/String;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "resultCode":Ljava/lang/String;
    :catch_a
    move-exception v6

    .line 438
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    const-string v21, "DownloadService"

    const-string v22, "xml parsing error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 441
    const/16 v21, 0x0

    .line 459
    if-eqz v13, :cond_0

    .line 460
    :try_start_15
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    goto/16 :goto_0

    .line 461
    :catch_b
    move-exception v6

    .line 462
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 461
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v2    # "absolutePath":Ljava/lang/String;
    .restart local v4    # "contentSize":Ljava/lang/String;
    .restart local v5    # "downloadURI":Ljava/lang/String;
    .restart local v7    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "fileName":Ljava/lang/String;
    .restart local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .restart local v11    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "id":Ljava/lang/String;
    .restart local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v15    # "parserEvent":I
    .restart local v16    # "productName":Ljava/lang/String;
    .restart local v17    # "response":Lorg/apache/http/HttpResponse;
    .restart local v18    # "resultCode":Ljava/lang/String;
    :catch_c
    move-exception v6

    .line 462
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 442
    .end local v2    # "absolutePath":Ljava/lang/String;
    .end local v4    # "contentSize":Ljava/lang/String;
    .end local v5    # "downloadURI":Ljava/lang/String;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "fileName":Ljava/lang/String;
    .end local v10    # "httpclient":Lorg/apache/http/client/HttpClient;
    .end local v11    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "id":Ljava/lang/String;
    .end local v14    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v15    # "parserEvent":I
    .end local v16    # "productName":Ljava/lang/String;
    .end local v17    # "response":Lorg/apache/http/HttpResponse;
    .end local v18    # "resultCode":Ljava/lang/String;
    :catch_d
    move-exception v6

    .line 443
    .local v6, "e":Ljava/net/SocketException;
    :try_start_16
    invoke-virtual {v6}, Ljava/net/SocketException;->printStackTrace()V

    .line 444
    const-string v21, "DownloadService"

    const-string v22, "Network is unavailable"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 446
    const/16 v21, 0x0

    .line 459
    if-eqz v13, :cond_0

    .line 460
    :try_start_17
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_e

    goto/16 :goto_0

    .line 461
    :catch_e
    move-exception v6

    .line 462
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 447
    .end local v6    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v6

    .line 448
    .local v6, "e":Ljava/net/UnknownHostException;
    :try_start_18
    invoke-virtual {v6}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 449
    const-string v21, "DownloadService"

    const-string v22, "Server is not response"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 451
    const/16 v21, 0x0

    .line 459
    if-eqz v13, :cond_0

    .line 460
    :try_start_19
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_10

    goto/16 :goto_0

    .line 461
    :catch_10
    move-exception v6

    .line 462
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 452
    .end local v6    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v6

    .line 453
    .restart local v6    # "e":Ljava/io/IOException;
    :try_start_1a
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 454
    const-string v21, "DownloadService"

    const-string v22, "Network error"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    const/16 v23, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static/range {v21 .. v23}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 456
    const/16 v21, 0x0

    .line 459
    if-eqz v13, :cond_0

    .line 460
    :try_start_1b
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_12

    goto/16 :goto_0

    .line 461
    :catch_12
    move-exception v6

    .line 462
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 458
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v21

    .line 459
    if-eqz v13, :cond_13

    .line 460
    :try_start_1c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_13

    .line 463
    :cond_13
    :goto_4
    throw v21

    .line 461
    :catch_13
    move-exception v6

    .line 462
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method

.method private executeDownload()V
    .locals 18
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    .line 476
    const/4 v6, 0x0

    .line 477
    .local v6, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 478
    .local v10, "inStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 480
    .local v7, "fout":Ljava/io/FileOutputStream;
    new-instance v9, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v9}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 481
    .local v9, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v8}, Lorg/apache/http/client/methods/HttpGet;-><init>()V

    .line 483
    .local v8, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    new-instance v6, Ljava/io/File;

    .end local v6    # "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static {v13}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/fingerprint/DownloadInfo;->getDestination()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .restart local v6    # "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_0

    .line 487
    const-string v13, "Range"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "bytes="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v13, v14}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static {v13}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Lcom/android/settings/fingerprint/DownloadInfo;->setCurrentBytes(J)V

    .line 491
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    const/4 v14, 0x4

    const/4 v15, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V

    .line 494
    :try_start_0
    new-instance v13, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static {v14}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/fingerprint/DownloadInfo;->getUri()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Lorg/apache/http/client/methods/HttpGet;->setURI(Ljava/net/URI;)V

    .line 495
    invoke-interface {v9, v8}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v12

    .line 497
    .local v12, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {v12}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    .line 498
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 500
    .local v4, "currentBytes":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/settings/fingerprint/DownloadService;->access$700(Lcom/android/settings/fingerprint/DownloadService;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    const v15, 0x8001

    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    .line 503
    const/16 v13, 0x2000

    new-array v2, v13, [B

    .line 504
    .local v2, "buffer":[B
    const/4 v11, 0x0

    .line 506
    .local v11, "readBytes":I
    :goto_0
    invoke-virtual {v10, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    if-lez v11, :cond_5

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->isCancelled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_3

    .line 525
    if-eqz v7, :cond_1

    .line 526
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 527
    :cond_1
    if-eqz v10, :cond_2

    .line 528
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 536
    .end local v2    # "buffer":[B
    .end local v4    # "currentBytes":J
    .end local v11    # "readBytes":I
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    :goto_1
    return-void

    .line 529
    .restart local v2    # "buffer":[B
    .restart local v4    # "currentBytes":J
    .restart local v11    # "readBytes":I
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v3

    .line 530
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 511
    .end local v3    # "e":Ljava/io/IOException;
    :cond_3
    const/4 v13, 0x0

    :try_start_2
    invoke-virtual {v7, v2, v13, v11}, Ljava/io/FileOutputStream;->write([BII)V

    .line 512
    const-string v13, "DownloadService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Download readBytes: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    int-to-long v14, v11

    add-long/2addr v4, v14

    .line 515
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static {v13}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Lcom/android/settings/fingerprint/DownloadInfo;->setCurrentBytes(J)V

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    const/4 v14, 0x4

    const/4 v15, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 518
    .end local v2    # "buffer":[B
    .end local v4    # "currentBytes":J
    .end local v11    # "readBytes":I
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v3

    .line 519
    .local v3, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 520
    const-string v13, "DownloadService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Download fail - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    const/4 v14, 0x2

    const/4 v15, 0x1

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 525
    if-eqz v7, :cond_4

    .line 526
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 527
    :cond_4
    if-eqz v10, :cond_2

    .line 528
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 529
    :catch_2
    move-exception v3

    .line 530
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 525
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "buffer":[B
    .restart local v4    # "currentBytes":J
    .restart local v11    # "readBytes":I
    .restart local v12    # "response":Lorg/apache/http/HttpResponse;
    :cond_5
    if-eqz v7, :cond_6

    .line 526
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 527
    :cond_6
    if-eqz v10, :cond_7

    .line 528
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 534
    :cond_7
    :goto_2
    const-string v13, "DownloadService"

    const-string v14, "Download complete."

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    const/4 v14, 0x6

    const/4 v15, 0x0

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->updateStatusAndProgress(IZ)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/fingerprint/DownloadService;->access$100(Lcom/android/settings/fingerprint/DownloadService;IZ)V

    goto/16 :goto_1

    .line 529
    :catch_3
    move-exception v3

    .line 530
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 524
    .end local v2    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "currentBytes":J
    .end local v11    # "readBytes":I
    .end local v12    # "response":Lorg/apache/http/HttpResponse;
    :catchall_0
    move-exception v13

    .line 525
    if-eqz v7, :cond_8

    .line 526
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 527
    :cond_8
    if-eqz v10, :cond_9

    .line 528
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 531
    :cond_9
    :goto_3
    throw v13

    .line 529
    :catch_4
    move-exception v3

    .line 530
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private getCSC()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 626
    const-string v0, ""

    .line 627
    .local v0, "cscVersion":Ljava/lang/String;
    const/4 v1, 0x0

    .line 630
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->isCSCExistFile()Z

    move-result v2

    if-eq v2, v3, :cond_0

    .line 649
    :goto_0
    return-object v0

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->getCSCVersion()Ljava/lang/String;

    move-result-object v1

    .line 635
    if-nez v1, :cond_1

    .line 636
    const-string v2, "DownloadService"

    const-string v3, "getCSC::getCSCVersion::value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 640
    :cond_1
    const-string v2, "FAIL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v3, :cond_2

    .line 641
    const-string v2, "DownloadService"

    const-string v3, "getCSC::getCSCVersion::Fail to read CSC Version"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 646
    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getCSCVersion()Ljava/lang/String;
    .locals 9

    .prologue
    .line 653
    const/4 v6, 0x0

    .line 654
    .local v6, "s":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string v8, "/system/csc/sales_code.dat"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v5, "mFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 657
    const/16 v8, 0x14

    new-array v0, v8, [B

    .line 658
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 659
    .local v2, "in":Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 662
    .local v4, "length":I
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    .end local v2    # "in":Ljava/io/InputStream;
    .local v3, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 665
    if-lez v4, :cond_1

    .line 666
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v6    # "s":Ljava/lang/String;
    .local v7, "s":Ljava/lang/String;
    move-object v6, v7

    .line 675
    .end local v7    # "s":Ljava/lang/String;
    .restart local v6    # "s":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_0

    .line 677
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 678
    const/4 v2, 0x0

    .line 686
    .end local v0    # "buffer":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "length":I
    :cond_0
    :goto_1
    return-object v6

    .line 668
    .restart local v0    # "buffer":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "length":I
    :cond_1
    :try_start_3
    new-instance v7, Ljava/lang/String;

    const-string v8, "FAIL"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v6    # "s":Ljava/lang/String;
    .restart local v7    # "s":Ljava/lang/String;
    move-object v6, v7

    .end local v7    # "s":Ljava/lang/String;
    .restart local v6    # "s":Ljava/lang/String;
    goto :goto_0

    .line 679
    :catch_0
    move-exception v1

    .line 680
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 670
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 671
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 675
    if-eqz v2, :cond_0

    .line 677
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 678
    const/4 v2, 0x0

    goto :goto_1

    .line 679
    :catch_2
    move-exception v1

    .line 680
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 672
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 673
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 675
    if-eqz v2, :cond_0

    .line 677
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 678
    const/4 v2, 0x0

    goto :goto_1

    .line 679
    :catch_4
    move-exception v1

    .line 680
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 675
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v2, :cond_2

    .line 677
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 678
    const/4 v2, 0x0

    .line 681
    :cond_2
    :goto_5
    throw v8

    .line 679
    :catch_5
    move-exception v1

    .line 680
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 675
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_4

    .line 672
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_3

    .line 670
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method

.method private getIMEI()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x10

    .line 707
    const-string v3, ""

    .line 708
    .local v3, "imei":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/settings/fingerprint/DownloadService;->access$700(Lcom/android/settings/fingerprint/DownloadService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 711
    .local v5, "telMgr":Landroid/telephony/TelephonyManager;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 713
    .local v4, "md5":Ljava/lang/StringBuffer;
    if-eqz v5, :cond_1

    .line 714
    const/4 v0, 0x0

    .line 717
    .local v0, "digest":[B
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    const-string v7, "000000000000000"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 723
    :goto_0
    if-nez v0, :cond_0

    .line 724
    const/4 v6, 0x0

    .line 735
    .end local v0    # "digest":[B
    :goto_1
    return-object v6

    .line 719
    .restart local v0    # "digest":[B
    :catch_0
    move-exception v1

    .line 720
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 727
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v0

    if-ge v2, v6, :cond_1

    .line 728
    aget-byte v6, v0, v2

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-static {v6, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    aget-byte v6, v0, v2

    and-int/lit8 v6, v6, 0xf

    shr-int/lit8 v6, v6, 0x0

    invoke-static {v6, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 727
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 733
    .end local v0    # "digest":[B
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 735
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private getMCC()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 596
    const-string v0, ""

    .line 597
    .local v0, "mcc":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/fingerprint/DownloadService;->access$700(Lcom/android/settings/fingerprint/DownloadService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 600
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 601
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 602
    .local v1, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v5, :cond_0

    .line 603
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 607
    .end local v1    # "networkOperator":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getMNC()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 611
    const-string v0, "00"

    .line 612
    .local v0, "mnc":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/fingerprint/DownloadService;->access$700(Lcom/android/settings/fingerprint/DownloadService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 615
    .local v2, "telMgr":Landroid/telephony/TelephonyManager;
    if-eqz v2, :cond_0

    .line 616
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 617
    .local v1, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 618
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 622
    .end local v1    # "networkOperator":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getPD()Ljava/lang/String;
    .locals 4

    .prologue
    .line 739
    const-string v2, "0"

    .line 740
    .local v2, "rtn_str":Ljava/lang/String;
    const/4 v1, 0x0

    .line 742
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->PD_TEST_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/fingerprint/DownloadService;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 746
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 747
    const-string v2, "1"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 753
    :cond_0
    :goto_0
    return-object v2

    .line 749
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private isCSCExistFile()Z
    .locals 4

    .prologue
    .line 690
    const/4 v1, 0x0

    .line 691
    .local v1, "result":Z
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/csc/sales_code.dat"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 694
    .local v0, "file":Ljava/io/File;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 696
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 697
    const-string v2, "DownloadService"

    const-string v3, "CSC is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 703
    :cond_0
    :goto_0
    return v1

    .line 699
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private makeCheckDownloadURL(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 540
    const-string v8, "https://vas.samsungapps.com/stub/stubDownload.as"

    .line 542
    .local v8, "url":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 543
    .local v6, "model":Ljava/lang/String;
    const-string v7, "SAMSUNG-"

    .line 545
    .local v7, "prefix":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 546
    const-string v10, ""

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 550
    :cond_0
    const-string v0, ""

    .line 551
    .local v0, "MCC":Ljava/lang/String;
    const-string v1, ""

    .line 559
    .local v1, "MNC":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mContext:Landroid/content/Context;
    invoke-static {v10}, Lcom/android/settings/fingerprint/DownloadService;->access$700(Lcom/android/settings/fingerprint/DownloadService;)Landroid/content/Context;

    move-result-object v10

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 561
    .local v3, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 562
    .local v5, "mobile":Landroid/net/NetworkInfo;
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v9

    .line 563
    .local v9, "wifi":Landroid/net/NetworkInfo;
    const/4 v10, 0x7

    invoke-virtual {v3, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 564
    .local v2, "bluetooth":Landroid/net/NetworkInfo;
    const/16 v10, 0x9

    invoke-virtual {v3, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 566
    .local v4, "ethernet":Landroid/net/NetworkInfo;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 567
    const-string v0, "505"

    .line 568
    const-string v1, "00"

    .line 583
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "?appId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 584
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&encImei="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->getIMEI()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 585
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&deviceId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 586
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&mcc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v10, "1"

    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->getPD()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "000"

    :goto_1
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 587
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&mnc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 588
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&csc="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->getCSC()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 589
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&sdkVer="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 590
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "&pd="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->getPD()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v10, v8

    .line 592
    :goto_2
    return-object v10

    .line 569
    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 570
    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->getMCC()Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->getMNC()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 572
    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 573
    const-string v0, "505"

    .line 574
    const-string v1, "00"

    goto/16 :goto_0

    .line 575
    :cond_3
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 576
    const-string v0, "505"

    .line 577
    const-string v1, "00"

    goto/16 :goto_0

    .line 579
    :cond_4
    const-string v10, "DownloadService"

    const-string v11, "Connection failed"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v10, 0x0

    goto :goto_2

    :cond_5
    move-object v10, v0

    .line 586
    goto/16 :goto_1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Long;
    .locals 1
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static {v0}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->checkDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->executeDownload()V

    .line 260
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 280
    const-string v0, "DownloadService"

    const-string v1, "cancelDownload"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 282
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->cancelDownload()V
    invoke-static {v0}, Lcom/android/settings/fingerprint/DownloadService;->access$500(Lcom/android/settings/fingerprint/DownloadService;)V

    .line 283
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Long;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Long;

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    # getter for: Lcom/android/settings/fingerprint/DownloadService;->mInfo:Lcom/android/settings/fingerprint/DownloadInfo;
    invoke-static {v0}, Lcom/android/settings/fingerprint/DownloadService;->access$300(Lcom/android/settings/fingerprint/DownloadService;)Lcom/android/settings/fingerprint/DownloadInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/DownloadInfo;->getStatus()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 267
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/fingerprint/DownloadService$DownloadTask$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask$1;-><init>(Lcom/android/settings/fingerprint/DownloadService$DownloadTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->this$0:Lcom/android/settings/fingerprint/DownloadService;

    const/4 v1, 0x0

    # invokes: Lcom/android/settings/fingerprint/DownloadService;->startNextDownload(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/DownloadService;->access$200(Lcom/android/settings/fingerprint/DownloadService;Z)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 251
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/DownloadService$DownloadTask;->onPostExecute(Ljava/lang/Long;)V

    return-void
.end method
