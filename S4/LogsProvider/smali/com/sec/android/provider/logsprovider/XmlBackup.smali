.class public Lcom/sec/android/provider/logsprovider/XmlBackup;
.super Landroid/content/BroadcastReceiver;
.source "XmlBackup.java"


# static fields
.field private static DSDS_MODEL_FEATURE:Z

.field private static cipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/provider/logsprovider/XmlBackup;->DSDS_MODEL_FEATURE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 369
    if-eqz p1, :cond_0

    .line 370
    const-string v22, "content://logs/allcalls"

    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 371
    .local v19, "uriallcalls":Landroid/net/Uri;
    if-eqz v19, :cond_0

    .line 372
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 374
    .end local v19    # "uriallcalls":Landroid/net/Uri;
    :cond_0
    const-string v22, "CalllogXmlBackup"

    const-string v23, "Delete logs before restore"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    new-instance v9, Ljava/io/File;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/call_log.exml"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v9, "file":Ljava/io/File;
    const/16 v16, 0x0

    .line 378
    .local v16, "result":I
    const/4 v6, 0x0

    .line 379
    .local v6, "err_code":I
    const/16 v20, 0x0

    .line 380
    .local v20, "value":Landroid/content/ContentValues;
    const/4 v14, 0x0

    .line 383
    .local v14, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/sec/android/provider/logsprovider/XmlBackup;->StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 388
    :goto_0
    const/4 v10, 0x0

    .line 389
    .local v10, "fileis":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 391
    .local v11, "fins":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v12, Ljava/io/FileInputStream;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/call_log.exml"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v12, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 392
    .end local v11    # "fins":Ljava/io/FileInputStream;
    .local v12, "fins":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v12, v14}, Lcom/sec/android/provider/logsprovider/XmlBackup;->decryptStream(Ljava/io/InputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v10

    .line 393
    const/16 v18, 0x0

    .line 394
    .local v18, "totalCount":I
    const/16 v17, 0x0

    .line 395
    .local v17, "setItem":Z
    const/4 v13, 0x0

    .line 397
    .local v13, "itemName":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    .line 398
    .local v8, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 399
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v22, "utf-8"

    move-object/from16 v0, v22

    invoke-interface {v15, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 400
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .local v7, "eventType":I
    move-object/from16 v21, v20

    .line 401
    .end local v20    # "value":Landroid/content/ContentValues;
    .local v21, "value":Landroid/content/ContentValues;
    :goto_1
    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v7, v0, :cond_8

    .line 402
    packed-switch v7, :pswitch_data_0

    :cond_1
    move-object/from16 v20, v21

    .line 451
    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v7

    move-object/from16 v21, v20

    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v21    # "value":Landroid/content/ContentValues;
    goto :goto_1

    .line 384
    .end local v7    # "eventType":I
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v10    # "fileis":Ljava/io/InputStream;
    .end local v12    # "fins":Ljava/io/FileInputStream;
    .end local v13    # "itemName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "setItem":Z
    .end local v18    # "totalCount":I
    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    :catch_0
    move-exception v5

    .line 385
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 404
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v7    # "eventType":I
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v10    # "fileis":Ljava/io/InputStream;
    .restart local v12    # "fins":Ljava/io/FileInputStream;
    .restart local v13    # "itemName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "setItem":Z
    .restart local v18    # "totalCount":I
    .restart local v21    # "value":Landroid/content/ContentValues;
    :pswitch_0
    :try_start_4
    const-string v22, "CalllogXmlBackup"

    const-string v23, "START_DOCUMENT"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v21

    .line 405
    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    goto :goto_2

    .line 407
    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v21    # "value":Landroid/content/ContentValues;
    :pswitch_1
    const-string v22, "CalllogXmlBackup"

    const-string v23, "END_DOCUMENT"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v21

    .line 408
    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    goto :goto_2

    .line 410
    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v21    # "value":Landroid/content/ContentValues;
    :pswitch_2
    const-string v22, "CallLog"

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    .line 412
    new-instance v20, Landroid/content/ContentValues;

    invoke-direct/range {v20 .. v20}, Landroid/content/ContentValues;-><init>()V

    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    goto :goto_2

    .line 413
    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v21    # "value":Landroid/content/ContentValues;
    :cond_2
    const-string v22, "CallLogs"

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 414
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 415
    const/16 v17, 0x1

    move-object/from16 v20, v21

    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    goto :goto_2

    .line 419
    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v21    # "value":Landroid/content/ContentValues;
    :pswitch_3
    const-string v22, "CallLog"

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    .line 420
    add-int/lit8 v18, v18, 0x1

    .line 421
    if-eqz v21, :cond_3

    .line 422
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "content://logs/call"

    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 423
    :cond_3
    const/16 v20, 0x0

    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    goto :goto_2

    .line 424
    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v21    # "value":Landroid/content/ContentValues;
    :cond_4
    const-string v22, "CallLogs"

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 425
    const/16 v17, 0x0

    move-object/from16 v20, v21

    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    goto :goto_2

    .line 430
    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v21    # "value":Landroid/content/ContentValues;
    :pswitch_4
    if-eqz v17, :cond_1

    .line 431
    const-string v22, "date"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "duration"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "new"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "numbertype"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "logtype"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "frequent"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "contactid"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "raw_contact_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "service_type"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 439
    :cond_5
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v20, v21

    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 440
    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v21    # "value":Landroid/content/ContentValues;
    :cond_6
    const-string v22, "sim_id"

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 441
    sget-boolean v22, Lcom/sec/android/provider/logsprovider/XmlBackup;->DSDS_MODEL_FEATURE:Z

    if-eqz v22, :cond_1

    .line 442
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    move-object/from16 v20, v21

    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    goto/16 :goto_2

    .line 444
    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v21    # "value":Landroid/content/ContentValues;
    :cond_7
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-object/from16 v20, v21

    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    goto/16 :goto_2

    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v21    # "value":Landroid/content/ContentValues;
    :cond_8
    move-object/from16 v20, v21

    .line 458
    .end local v7    # "eventType":I
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    :goto_3
    :try_start_5
    const-string v22, "CalllogXmlBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "total count = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    if-nez v18, :cond_9

    .line 460
    const/16 v16, 0x1

    .line 461
    const/4 v6, 0x3

    .line 462
    const-string v22, "CalllogXmlBackup"

    const-string v23, "There\'s no date to restore"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_9
    move-object v11, v12

    .line 471
    .end local v12    # "fins":Ljava/io/FileInputStream;
    .end local v13    # "itemName":Ljava/lang/String;
    .end local v17    # "setItem":Z
    .end local v18    # "totalCount":I
    .restart local v11    # "fins":Ljava/io/FileInputStream;
    :goto_4
    if-eqz v11, :cond_a

    .line 472
    :try_start_6
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V

    .line 473
    :cond_a
    if-eqz v10, :cond_b

    .line 474
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 475
    :cond_b
    const/4 v10, 0x0

    .line 476
    const/4 v11, 0x0

    .line 483
    :goto_5
    new-instance v4, Landroid/content/Intent;

    const-string v22, "android.intent.action.RESPONSE_RESTORE_CALLLOG"

    move-object/from16 v0, v22

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 484
    .local v4, "Req_Restore_log":Landroid/content/Intent;
    const-string v22, "RESULT"

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    const-string v22, "ERR_CODE"

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 486
    const-string v22, "REQ_SIZE"

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v24

    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 487
    const-string v22, "REBOOT"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 488
    const-string v22, "SOURCE"

    move-object/from16 v0, v22

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    if-eqz p1, :cond_c

    .line 491
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 493
    :cond_c
    return-void

    .line 453
    .end local v4    # "Req_Restore_log":Landroid/content/Intent;
    .end local v11    # "fins":Ljava/io/FileInputStream;
    .restart local v12    # "fins":Ljava/io/FileInputStream;
    .restart local v13    # "itemName":Ljava/lang/String;
    .restart local v17    # "setItem":Z
    .restart local v18    # "totalCount":I
    :catch_1
    move-exception v5

    .line 454
    .restart local v5    # "e":Ljava/lang/Exception;
    :goto_6
    const/16 v16, 0x1

    .line 455
    const/4 v6, 0x1

    .line 456
    :try_start_7
    const-string v22, "CalllogXmlBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "DB Input exception = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 464
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v13    # "itemName":Ljava/lang/String;
    .end local v17    # "setItem":Z
    .end local v18    # "totalCount":I
    :catch_2
    move-exception v5

    move-object v11, v12

    .line 465
    .end local v12    # "fins":Ljava/io/FileInputStream;
    .restart local v5    # "e":Ljava/lang/Exception;
    .restart local v11    # "fins":Ljava/io/FileInputStream;
    :goto_7
    const/16 v16, 0x1

    .line 466
    const/4 v6, 0x2

    .line 467
    const-string v22, "CalllogXmlBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "file exception = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 477
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 478
    .local v5, "e":Ljava/io/IOException;
    const/16 v16, 0x1

    .line 479
    const/4 v6, 0x2

    .line 480
    const-string v22, "CalllogXmlBackup"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Stream close exception = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 464
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    goto :goto_7

    .line 453
    .end local v11    # "fins":Ljava/io/FileInputStream;
    .end local v20    # "value":Landroid/content/ContentValues;
    .restart local v7    # "eventType":I
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v12    # "fins":Ljava/io/FileInputStream;
    .restart local v13    # "itemName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "setItem":Z
    .restart local v18    # "totalCount":I
    .restart local v21    # "value":Landroid/content/ContentValues;
    :catch_5
    move-exception v5

    move-object/from16 v20, v21

    .end local v21    # "value":Landroid/content/ContentValues;
    .restart local v20    # "value":Landroid/content/ContentValues;
    goto :goto_6

    .line 402
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 6
    .param p0, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 498
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 499
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 500
    const/16 v3, 0x10

    new-array v2, v3, [B

    .line 501
    .local v2, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v2

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 503
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sput-object v3, Lcom/sec/android/provider/logsprovider/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    .line 504
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 506
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    return-object v1
.end method

.method private XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v2, "content://logs/call"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 102
    .local v3, "URI_LOGS":Landroid/net/Uri;
    new-instance v21, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/call_log.exml"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v21, "saveFile":Ljava/io/File;
    const/16 v20, 0x0

    .line 104
    .local v20, "result":I
    const/4 v13, 0x0

    .line 105
    .local v13, "err_code":I
    const/16 v17, 0x0

    .line 108
    .local v17, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/sec/android/provider/logsprovider/XmlBackup;->StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 112
    :goto_0
    const/4 v11, 0x0

    .line 113
    .local v11, "c_log":Landroid/database/Cursor;
    const/16 v18, 0x0

    .line 114
    .local v18, "newfos":Ljava/io/OutputStream;
    const/4 v14, 0x0

    .line 116
    .local v14, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v23, Ljava/io/StringWriter;

    invoke-direct/range {v23 .. v23}, Ljava/io/StringWriter;-><init>()V

    .line 117
    .local v23, "writer":Ljava/io/StringWriter;
    new-instance v15, Ljava/io/FileOutputStream;

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8

    .line 118
    .end local v14    # "fout":Ljava/io/FileOutputStream;
    .local v15, "fout":Ljava/io/FileOutputStream;
    :try_start_2
    move-object/from16 v0, v17

    invoke-static {v15, v0}, Lcom/sec/android/provider/logsprovider/XmlBackup;->encryptStream(Ljava/io/OutputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/OutputStream;

    move-result-object v18

    .line 121
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v22

    .line 124
    .local v22, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const/4 v7, 0x0

    .line 125
    .local v7, "orderBy":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 127
    const-string v7, "_id asc"

    .line 129
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 131
    if-nez v11, :cond_4

    .line 133
    const/16 v20, 0x1

    .line 134
    const/4 v13, 0x1

    .line 135
    const-string v2, "CalllogXmlBackup"

    const-string v4, "fail to open logs cursor"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    :goto_1
    if-eqz v11, :cond_1

    .line 320
    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 323
    :cond_1
    :goto_2
    new-instance v16, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v23 .. v23}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 324
    .local v16, "in":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 326
    .local v9, "bis":Ljava/io/BufferedInputStream;
    const/16 v19, 0x0

    .line 327
    .local v19, "readcount":I
    const/16 v2, 0x400

    new-array v10, v2, [B

    .line 328
    .local v10, "buffer":[B
    :goto_3
    const/4 v2, 0x0

    const/16 v4, 0x400

    invoke-virtual {v9, v10, v2, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v19

    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_17

    .line 329
    const/4 v2, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v10, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 333
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "buffer":[B
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v19    # "readcount":I
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v12

    move-object v14, v15

    .line 334
    .end local v15    # "fout":Ljava/io/FileOutputStream;
    .end local v23    # "writer":Ljava/io/StringWriter;
    .local v12, "e":Ljava/lang/RuntimeException;
    .restart local v14    # "fout":Ljava/io/FileOutputStream;
    :goto_4
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 335
    const/16 v20, 0x1

    .line 336
    const/4 v13, 0x2

    .line 337
    const-string v2, "CalllogXmlBackup"

    const-string v4, "RuntimeException occured"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v12    # "e":Ljava/lang/RuntimeException;
    :goto_5
    if-eqz v14, :cond_2

    .line 346
    :try_start_5
    invoke-virtual {v14}, Ljava/io/FileOutputStream;->close()V

    .line 347
    :cond_2
    if-eqz v18, :cond_3

    .line 348
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 349
    :cond_3
    const/16 v18, 0x0

    .line 350
    const/4 v14, 0x0

    .line 358
    :goto_6
    new-instance v8, Landroid/content/Intent;

    const-string v2, "android.intent.action.RESPONSE_BACKUP_CALLLOG"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v8, "Req_Backup_log":Landroid/content/Intent;
    const-string v2, "RESULT"

    move/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const-string v2, "ERR_CODE"

    invoke-virtual {v8, v2, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const-string v2, "REQ_SIZE"

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v8, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    const-string v2, "REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v8, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    const-string v2, "SOURCE"

    move-object/from16 v0, p3

    invoke-virtual {v8, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 366
    return-void

    .line 109
    .end local v8    # "Req_Backup_log":Landroid/content/Intent;
    .end local v11    # "c_log":Landroid/database/Cursor;
    .end local v14    # "fout":Ljava/io/FileOutputStream;
    .end local v18    # "newfos":Ljava/io/OutputStream;
    :catch_1
    move-exception v12

    .line 110
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 137
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v7    # "orderBy":Ljava/lang/String;
    .restart local v11    # "c_log":Landroid/database/Cursor;
    .restart local v15    # "fout":Ljava/io/FileOutputStream;
    .restart local v18    # "newfos":Ljava/io/OutputStream;
    .restart local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v23    # "writer":Ljava/io/StringWriter;
    :cond_4
    :try_start_6
    invoke-interface/range {v22 .. v23}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    .line 138
    const-string v2, "UTF-8"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 139
    const/4 v2, 0x0

    const-string v4, "CallLogs"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 141
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 143
    :cond_5
    const/4 v2, 0x0

    const-string v4, "CallLog"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    const/4 v2, 0x0

    const-string v4, "number"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    const-string v2, "number"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 146
    const-string v2, "number"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 149
    :goto_7
    const/4 v2, 0x0

    const-string v4, "number"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 150
    const/4 v2, 0x0

    const-string v4, "address"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 151
    const-string v2, "address"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 152
    const-string v2, "address"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 156
    :goto_8
    const/4 v2, 0x0

    const-string v4, "address"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 157
    const/4 v2, 0x0

    const-string v4, "date"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 158
    const-string v2, "date"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 160
    const/4 v2, 0x0

    const-string v4, "date"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 161
    const/4 v2, 0x0

    const-string v4, "duration"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 162
    const-string v2, "duration"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 164
    const/4 v2, 0x0

    const-string v4, "duration"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 165
    const/4 v2, 0x0

    const-string v4, "type"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 166
    const-string v2, "type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 168
    const/4 v2, 0x0

    const-string v4, "type"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 169
    const/4 v2, 0x0

    const-string v4, "new"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 170
    const-string v2, "new"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 172
    const/4 v2, 0x0

    const-string v4, "new"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 173
    const/4 v2, 0x0

    const-string v4, "name"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 174
    const-string v2, "name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 175
    const-string v2, "name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 179
    :goto_9
    const/4 v2, 0x0

    const-string v4, "name"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    const/4 v2, 0x0

    const-string v4, "numbertype"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    const-string v2, "numbertype"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    const/4 v2, 0x0

    const-string v4, "numbertype"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    const/4 v2, 0x0

    const-string v4, "numberlabel"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 185
    const-string v2, "numberlabel"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 186
    const-string v2, "numberlabel"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    :goto_a
    const/4 v2, 0x0

    const-string v4, "numberlabel"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    const/4 v2, 0x0

    const-string v4, "messageid"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    const-string v2, "messageid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 193
    const-string v2, "messageid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    :goto_b
    const/4 v2, 0x0

    const-string v4, "messageid"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 198
    const/4 v2, 0x0

    const-string v4, "logtype"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    const-string v2, "logtype"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    const/4 v2, 0x0

    const-string v4, "logtype"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 202
    const/4 v2, 0x0

    const-string v4, "frequent"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    const-string v2, "frequent"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 205
    const/4 v2, 0x0

    const-string v4, "frequent"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    const/4 v2, 0x0

    const-string v4, "contactid"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 207
    const-string v2, "contactid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    const/4 v2, 0x0

    const-string v4, "contactid"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 210
    const/4 v2, 0x0

    const-string v4, "raw_contact_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    const-string v2, "raw_contact_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    const/4 v2, 0x0

    const-string v4, "raw_contact_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 214
    const/4 v2, 0x0

    const-string v4, "m_subject"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    const-string v2, "m_subject"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_d

    .line 217
    :try_start_7
    const-string v2, "m_subject"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 224
    :goto_c
    const/4 v2, 0x0

    :try_start_8
    const-string v4, "m_subject"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    const/4 v2, 0x0

    const-string v4, "m_content"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 226
    const-string v2, "m_content"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_e

    .line 228
    :try_start_9
    const-string v2, "m_content"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 236
    :goto_d
    const/4 v2, 0x0

    :try_start_a
    const-string v4, "m_content"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 237
    const/4 v2, 0x0

    const-string v4, "sns_tid"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 238
    const-string v2, "sns_tid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 239
    const-string v2, "sns_tid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 242
    :goto_e
    const/4 v2, 0x0

    const-string v4, "sns_tid"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 243
    const/4 v2, 0x0

    const-string v4, "sns_pkey"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 244
    const-string v2, "sns_pkey"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 245
    const-string v2, "sns_pkey"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 248
    :goto_f
    const/4 v2, 0x0

    const-string v4, "sns_pkey"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    const/4 v2, 0x0

    const-string v4, "account_name"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 250
    const-string v2, "account_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 251
    const-string v2, "account_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 255
    :goto_10
    const/4 v2, 0x0

    const-string v4, "account_name"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 256
    const/4 v2, 0x0

    const-string v4, "account_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    const-string v2, "account_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 258
    const-string v2, "account_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 262
    :goto_11
    const/4 v2, 0x0

    const-string v4, "account_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    const/4 v2, 0x0

    const-string v4, "sns_receiver_count"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 264
    const-string v2, "sns_receiver_count"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 265
    const-string v2, "sns_receiver_count"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 269
    :goto_12
    const/4 v2, 0x0

    const-string v4, "sns_receiver_count"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 270
    const/4 v2, 0x0

    const-string v4, "cnap_name"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    const-string v2, "cnap_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 272
    const-string v2, "cnap_name"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 276
    :goto_13
    const/4 v2, 0x0

    const-string v4, "cnap_name"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 277
    const/4 v2, 0x0

    const-string v4, "cdnip_number"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string v2, "cdnip_number"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 279
    const-string v2, "cdnip_number"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    :goto_14
    const/4 v2, 0x0

    const-string v4, "cdnip_number"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    const/4 v2, 0x0

    const-string v4, "service_type"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 285
    const-string v2, "service_type"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    const/4 v2, 0x0

    const-string v4, "service_type"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 288
    sget-boolean v2, Lcom/sec/android/provider/logsprovider/XmlBackup;->DSDS_MODEL_FEATURE:Z

    if-eqz v2, :cond_6

    .line 289
    const/4 v2, 0x0

    const-string v4, "sim_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 290
    const-string v2, "sim_id"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 292
    const/4 v2, 0x0

    const-string v4, "sim_id"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    :cond_6
    const/4 v2, 0x0

    const-string v4, "CallLog"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 296
    const/4 v2, 0x0

    const-string v4, "CallLogs"

    move-object/from16 v0, v22

    invoke-interface {v0, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 300
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_1

    .line 308
    :catch_2
    move-exception v12

    .line 309
    .local v12, "e":Ljava/lang/RuntimeException;
    :try_start_b
    invoke-virtual {v12}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 310
    const/16 v20, 0x1

    .line 311
    const/4 v13, 0x1

    .line 312
    const-string v2, "CalllogXmlBackup"

    const-string v4, "RuntimeException occured"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 319
    if-eqz v11, :cond_1

    .line 320
    :try_start_c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_2

    .line 338
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_3
    move-exception v12

    move-object v14, v15

    .line 339
    .end local v15    # "fout":Ljava/io/FileOutputStream;
    .end local v23    # "writer":Ljava/io/StringWriter;
    .local v12, "e":Ljava/lang/Exception;
    .restart local v14    # "fout":Ljava/io/FileOutputStream;
    :goto_15
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    const/16 v20, 0x1

    .line 341
    const/4 v13, 0x2

    .line 342
    const-string v2, "CalllogXmlBackup"

    const-string v4, "File error occured"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 148
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v14    # "fout":Ljava/io/FileOutputStream;
    .restart local v7    # "orderBy":Ljava/lang/String;
    .restart local v15    # "fout":Ljava/io/FileOutputStream;
    .restart local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v23    # "writer":Ljava/io/StringWriter;
    :cond_7
    :try_start_d
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no number"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_7

    .line 313
    :catch_4
    move-exception v12

    .line 314
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_e
    const-string v2, "CalllogXmlBackup"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception >>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const/16 v20, 0x1

    .line 316
    const/4 v13, 0x1

    .line 317
    const-string v2, "CalllogXmlBackup"

    const-string v4, "Error occured while generate XML"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 319
    if-eqz v11, :cond_1

    .line 320
    :try_start_f
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_2

    .line 155
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_8
    :try_start_10
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no address"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_8

    .line 319
    :catchall_0
    move-exception v2

    if-eqz v11, :cond_9

    .line 320
    :try_start_11
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    .line 178
    :cond_a
    :try_start_12
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no name"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 189
    :cond_b
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no numberlabel"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 196
    :cond_c
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no messageid"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 218
    :catch_5
    move-exception v12

    .line 219
    .local v12, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_c

    .line 222
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :cond_d
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no m_subject"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 230
    :catch_6
    move-exception v12

    .line 231
    .restart local v12    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v12}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_d

    .line 234
    .end local v12    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no m_content"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 241
    :cond_f
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no sns_tid"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 247
    :cond_10
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no sns_pkey"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 254
    :cond_11
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no account_name"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 261
    :cond_12
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no account_id"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 268
    :cond_13
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no sns_receiver_count"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 275
    :cond_14
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no cnap_name"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 282
    :cond_15
    const-string v2, "CalllogXmlBackup"

    const-string v4, "no cdnip_number"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 302
    :cond_16
    const/16 v20, 0x1

    .line 303
    const/4 v13, 0x3

    .line 304
    const-string v2, "CalllogXmlBackup"

    const-string v4, "There\'s no logs"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_1

    .line 331
    .restart local v9    # "bis":Ljava/io/BufferedInputStream;
    .restart local v10    # "buffer":[B
    .restart local v16    # "in":Ljava/io/InputStream;
    .restart local v19    # "readcount":I
    :cond_17
    :try_start_13
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    .line 332
    const/16 v18, 0x0

    move-object v14, v15

    .line 343
    .end local v15    # "fout":Ljava/io/FileOutputStream;
    .restart local v14    # "fout":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 351
    .end local v7    # "orderBy":Ljava/lang/String;
    .end local v9    # "bis":Ljava/io/BufferedInputStream;
    .end local v10    # "buffer":[B
    .end local v16    # "in":Ljava/io/InputStream;
    .end local v19    # "readcount":I
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v23    # "writer":Ljava/io/StringWriter;
    :catch_7
    move-exception v12

    .line 352
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    .line 353
    const/16 v20, 0x1

    .line 354
    const/4 v13, 0x2

    .line 355
    const-string v2, "CalllogXmlBackup"

    const-string v4, "Stream error occured"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 338
    .end local v12    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v12

    goto/16 :goto_15

    .line 333
    :catch_9
    move-exception v12

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/sec/android/provider/logsprovider/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/provider/logsprovider/XmlBackup;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/provider/logsprovider/XmlBackup;->RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static decryptStream(Ljava/io/InputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/InputStream;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "key"    # Ljavax/crypto/spec/SecretKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 526
    sget-object v2, Lcom/sec/android/provider/logsprovider/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 528
    .local v0, "iv":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 530
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 533
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v2, Lcom/sec/android/provider/logsprovider/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 535
    new-instance v2, Ljavax/crypto/CipherInputStream;

    sget-object v3, Lcom/sec/android/provider/logsprovider/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method public static encryptStream(Ljava/io/OutputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/OutputStream;
    .locals 4
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "key"    # Ljavax/crypto/spec/SecretKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 511
    sget-object v2, Lcom/sec/android/provider/logsprovider/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 512
    .local v0, "iv":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 513
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 516
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 519
    sget-object v2, Lcom/sec/android/provider/logsprovider/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 521
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    sget-object v3, Lcom/sec/android/provider/logsprovider/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 72
    .local v6, "action":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 73
    const-string v0, "SAVE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "filepath":Ljava/lang/String;
    const-string v0, "SOURCE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "source":Ljava/lang/String;
    const-string v0, "SESSION_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 76
    .local v5, "saveKey":Ljava/lang/String;
    const-string v0, "CalllogXmlBackup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v0, "com.sec.android.intent.action.REQUEST_BACKUP_CALLLOG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    const-string v0, "CalllogXmlBackup"

    const-string v1, "REQUEST_BACKUP_CALLLOG"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0, p1, v3, v4, v5}, Lcom/sec/android/provider/logsprovider/XmlBackup;->XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "source":Ljava/lang/String;
    .end local v5    # "saveKey":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 85
    .restart local v3    # "filepath":Ljava/lang/String;
    .restart local v4    # "source":Ljava/lang/String;
    .restart local v5    # "saveKey":Ljava/lang/String;
    :cond_1
    const-string v0, "com.sec.android.intent.action.REQUEST_RESTORE_CALLLOG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "CalllogXmlBackup"

    const-string v1, "REQUEST_RESTORE_CALLLOG"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/sec/android/provider/logsprovider/XmlBackup$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/provider/logsprovider/XmlBackup$1;-><init>(Lcom/sec/android/provider/logsprovider/XmlBackup;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    .local v7, "t":Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 96
    .end local v3    # "filepath":Ljava/lang/String;
    .end local v4    # "source":Ljava/lang/String;
    .end local v5    # "saveKey":Ljava/lang/String;
    .end local v7    # "t":Ljava/lang/Thread;
    :cond_2
    const-string v0, "CalllogXmlBackup"

    const-string v1, "Action value is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
