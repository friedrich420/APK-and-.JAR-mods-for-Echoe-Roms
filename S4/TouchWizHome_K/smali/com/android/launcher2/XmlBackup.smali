.class public Lcom/android/launcher2/XmlBackup;
.super Landroid/content/BroadcastReceiver;
.source "XmlBackup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/XmlBackup$1;,
        Lcom/android/launcher2/XmlBackup$Result;
    }
.end annotation


# static fields
.field private static final DEBUGGABLE:Z

.field private static final HOMESCREEN_BACKUP_EXML:Ljava/lang/String; = "/homescreen.exml"

.field private static final REQUEST_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

.field private static final REQUEST_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.REQUEST_RESTORE_HOMESCREEN"

.field private static final RESPONSE_BACKUP_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_BACKUP_HOMESCREEN"

.field private static final RESPONSE_RESTORE_HOMESCREEN:Ljava/lang/String; = "com.sec.android.intent.action.RESPONSE_RESTORE_HOMESCREEN"

.field private static final TAG:Ljava/lang/String; = "HomeScreenXmlBackup"

.field private static cipher:Ljavax/crypto/Cipher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/XmlBackup;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 669
    return-void
.end method

.method private RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 500
    new-instance v6, Ljava/io/File;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/homescreen.exml"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 502
    .local v6, "file":Ljava/io/File;
    const/4 v15, 0x0

    .line 503
    .local v15, "result":I
    const/4 v4, 0x0

    .line 504
    .local v4, "err_code":I
    const/4 v11, 0x0

    .line 507
    .local v11, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/android/launcher2/XmlBackup;->StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 512
    :goto_0
    const/4 v10, 0x0

    .line 513
    .local v10, "is":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 515
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 516
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_2
    invoke-static {v8, v11}, Lcom/android/launcher2/XmlBackup;->decryptStream(Ljava/io/InputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    .line 519
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 520
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 521
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const-string v16, "utf-8"

    move-object/from16 v0, v16

    invoke-interface {v12, v10, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/LauncherApplication;

    .line 525
    .local v2, "app":Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v13

    .line 526
    .local v13, "provider":Lcom/android/launcher2/LauncherProvider;
    move-object/from16 v0, p2

    invoke-virtual {v13, v12, v0}, Lcom/android/launcher2/LauncherProvider;->restoreHomeScreenDB(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 528
    new-instance v9, Landroid/content/Intent;

    const-string v16, "com.android.launcher.action.ACTION_HOME_RESTORE"

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 537
    .end local v2    # "app":Lcom/android/launcher2/LauncherApplication;
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v13    # "provider":Lcom/android/launcher2/LauncherProvider;
    :goto_1
    :try_start_4
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 543
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    .line 544
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    move-object v7, v8

    .line 547
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_2
    const/16 v16, 0x0

    sput-boolean v16, Lcom/android/launcher2/Launcher;->isHomescreenRestoring:Z

    .line 548
    new-instance v14, Landroid/content/Intent;

    const-string v16, "com.sec.android.intent.action.RESPONSE_RESTORE_HOMESCREEN"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 549
    .local v14, "restore_homescreen":Landroid/content/Intent;
    const-string v16, "RESULT"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 550
    const-string v16, "ERR_CODE"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 551
    const-string v16, "REQ_SIZE"

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 552
    const-string v16, "SOURCE"

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 553
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 554
    return-void

    .line 508
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v14    # "restore_homescreen":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 509
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 531
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v3

    .line 532
    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v15, 0x1

    .line 533
    const/4 v4, 0x1

    .line 534
    :try_start_5
    const-string v16, "HomeScreenXmlBackup"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "DB Input exception = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 538
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    move-object v7, v8

    .line 539
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :goto_3
    const/4 v15, 0x1

    .line 540
    const/4 v4, 0x2

    .line 541
    :try_start_6
    const-string v16, "HomeScreenXmlBackup"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "file exception = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 543
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    .line 544
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    goto/16 :goto_2

    .line 543
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v16

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    .line 544
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/InputStream;)V

    throw v16

    .line 543
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v16

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 538
    :catch_3
    move-exception v3

    goto :goto_3
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

    .line 618
    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 619
    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v3, "UTF-8"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 620
    const/16 v3, 0x10

    new-array v2, v3, [B

    .line 621
    .local v2, "keyBytes":[B
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    array-length v4, v2

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 623
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sput-object v3, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    .line 624
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 626
    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    return-object v1
.end method

.method private XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 28
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "saveKey"    # Ljava/lang/String;

    .prologue
    .line 393
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 394
    .local v9, "dir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_0

    .line 395
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 397
    :cond_0
    new-instance v19, Ljava/io/File;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "/homescreen.exml"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v19, "saveFile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v24

    if-nez v24, :cond_1

    .line 400
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 406
    :cond_1
    :goto_0
    new-instance v18, Lcom/android/launcher2/XmlBackup$Result;

    const/16 v24, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/launcher2/XmlBackup$Result;-><init>(Lcom/android/launcher2/XmlBackup$1;)V

    .line 407
    .local v18, "result":Lcom/android/launcher2/XmlBackup$Result;
    const/4 v15, 0x0

    .line 410
    .local v15, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_1
    invoke-static/range {p4 .. p4}, Lcom/android/launcher2/XmlBackup;->StreamCrypt(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v15

    .line 415
    :goto_1
    const/16 v16, 0x0

    .line 416
    .local v16, "newfos":Ljava/io/OutputStream;
    const/4 v12, 0x0

    .line 418
    .local v12, "fos":Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v23, Ljava/io/StringWriter;

    invoke-direct/range {v23 .. v23}, Ljava/io/StringWriter;-><init>()V

    .line 419
    .local v23, "writer":Ljava/io/StringWriter;
    new-instance v13, Ljava/io/FileOutputStream;

    move-object/from16 v0, v19

    invoke-direct {v13, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 420
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .local v13, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-static {v13, v15}, Lcom/android/launcher2/XmlBackup;->encryptStream(Ljava/io/OutputStream;Ljavax/crypto/spec/SecretKeySpec;)Ljava/io/OutputStream;

    move-result-object v16

    .line 423
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v22

    .line 424
    .local v22, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    if-nez v22, :cond_2

    .line 425
    const-string v24, "HomeScreenXmlBackup"

    const-string v25, "serializer is null"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 428
    :cond_2
    :try_start_4
    const-string v24, "UTF-8"

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 429
    const-string v24, "UTF-8"

    const/16 v25, 0x1

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 432
    const/16 v24, 0x0

    const-string v25, "PageCount"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 433
    const-string v24, "com.sec.android.app.launcher.prefs"

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "screencount"

    const/16 v26, -0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 435
    .local v20, "screenCount":I
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 436
    const/16 v24, 0x0

    const-string v25, "PageCount"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 439
    const/16 v24, 0x0

    const-string v25, "ScreenIndex"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const-string v24, "com.sec.android.app.launcher.prefs"

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v24

    const-string v25, "homescreenindex"

    const/16 v26, -0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 442
    .local v21, "screenIndex":I
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 443
    const/16 v24, 0x0

    const-string v25, "ScreenIndex"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/XmlBackup;->makeHomeTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher2/XmlBackup$Result;)V

    .line 449
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/XmlBackup;->makeHotseatTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 451
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 452
    invoke-interface/range {v22 .. v22}, Lorg/xmlpull/v1/XmlSerializer;->flush()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 466
    .end local v20    # "screenCount":I
    .end local v21    # "screenIndex":I
    :goto_2
    :try_start_5
    new-instance v14, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v23 .. v23}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "UTF-8"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 467
    .local v14, "in":Ljava/io/InputStream;
    new-instance v7, Ljava/io/BufferedInputStream;

    invoke-direct {v7, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 469
    .local v7, "bis":Ljava/io/BufferedInputStream;
    const/16 v17, 0x0

    .line 470
    .local v17, "readcount":I
    const/16 v24, 0x400

    move/from16 v0, v24

    new-array v8, v0, [B

    .line 471
    .local v8, "buffer":[B
    :goto_3
    const/16 v24, 0x0

    const/16 v25, 0x400

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v7, v8, v0, v1}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v17

    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    .line 472
    const/16 v24, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v17

    invoke-virtual {v0, v8, v1, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 475
    .end local v7    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "buffer":[B
    .end local v14    # "in":Ljava/io/InputStream;
    .end local v17    # "readcount":I
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v10

    move-object v12, v13

    .line 476
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v23    # "writer":Ljava/io/StringWriter;
    .local v10, "e":Ljava/lang/RuntimeException;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :goto_4
    :try_start_6
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 477
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->result:I

    .line 478
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    .line 479
    const-string v24, "HomeScreenXmlBackup"

    const-string v25, "RuntimeException occured"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    .line 487
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    .line 490
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :goto_5
    new-instance v6, Landroid/content/Intent;

    const-string v24, "com.sec.android.intent.action.RESPONSE_BACKUP_HOMESCREEN"

    move-object/from16 v0, v24

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .local v6, "backup_homecreen":Landroid/content/Intent;
    const-string v24, "RESULT"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/XmlBackup$Result;->result:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 492
    const-string v24, "ERR_CODE"

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 493
    const-string v24, "REQ_SIZE"

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v24, "SOURCE"

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 495
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 496
    return-void

    .line 401
    .end local v6    # "backup_homecreen":Landroid/content/Intent;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v15    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .end local v16    # "newfos":Ljava/io/OutputStream;
    .end local v18    # "result":Lcom/android/launcher2/XmlBackup$Result;
    :catch_1
    move-exception v11

    .line 402
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 411
    .end local v11    # "e1":Ljava/io/IOException;
    .restart local v15    # "key":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v18    # "result":Lcom/android/launcher2/XmlBackup$Result;
    :catch_2
    move-exception v10

    .line 412
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 454
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v16    # "newfos":Ljava/io/OutputStream;
    .restart local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v23    # "writer":Ljava/io/StringWriter;
    :catch_3
    move-exception v10

    .line 455
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_7
    invoke-virtual {v10}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 456
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->result:I

    .line 457
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    .line 458
    const-string v24, "HomeScreenXmlBackup"

    const-string v25, "RuntimeException occured"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 480
    .end local v10    # "e":Ljava/lang/RuntimeException;
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_4
    move-exception v10

    move-object v12, v13

    .line 481
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v23    # "writer":Ljava/io/StringWriter;
    .local v10, "e":Ljava/lang/Exception;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_8
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 482
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->result:I

    .line 483
    const/16 v24, 0x2

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    .line 484
    const-string v24, "HomeScreenXmlBackup"

    const-string v25, "File error occured"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    .line 487
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    goto/16 :goto_5

    .line 459
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v23    # "writer":Ljava/io/StringWriter;
    :catch_5
    move-exception v10

    .line 460
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v24, "HomeScreenXmlBackup"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Exception >>"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->result:I

    .line 462
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    .line 463
    const-string v24, "HomeScreenXmlBackup"

    const-string v25, "Error occured while generate XML"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 486
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catchall_0
    move-exception v24

    move-object v12, v13

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v23    # "writer":Ljava/io/StringWriter;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    .line 487
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    throw v24

    .line 474
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "bis":Ljava/io/BufferedInputStream;
    .restart local v8    # "buffer":[B
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "in":Ljava/io/InputStream;
    .restart local v17    # "readcount":I
    .restart local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v23    # "writer":Ljava/io/StringWriter;
    :cond_3
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 486
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    .line 487
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher2/XmlBackup;->close(Ljava/io/OutputStream;)V

    move-object v12, v13

    .line 488
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 486
    .end local v7    # "bis":Ljava/io/BufferedInputStream;
    .end local v8    # "buffer":[B
    .end local v14    # "in":Ljava/io/InputStream;
    .end local v17    # "readcount":I
    .end local v22    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v23    # "writer":Ljava/io/StringWriter;
    :catchall_1
    move-exception v24

    goto :goto_7

    .line 480
    :catch_6
    move-exception v10

    goto :goto_6

    .line 475
    :catch_7
    move-exception v10

    goto/16 :goto_4
.end method

.method private close(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .prologue
    .line 558
    if-eqz p1, :cond_0

    .line 559
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_0
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private close(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 568
    if-eqz p1, :cond_0

    .line 569
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 574
    :cond_0
    :goto_0
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private createBackupShortcutIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "basePath"    # Ljava/lang/String;
    .param p2, "iconName"    # Ljava/lang/String;
    .param p3, "bmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    .local v0, "iconNameWithPath":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 608
    invoke-direct {p0, v0}, Lcom/android/launcher2/XmlBackup;->deleteFile(Ljava/lang/String;)V

    .line 609
    invoke-static {v0, p3}, Lcom/android/launcher2/XmlBackup;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 610
    const/4 v1, 0x1

    .line 612
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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
    .line 648
    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 650
    .local v0, "iv":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 652
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 655
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 656
    new-instance v2, Ljavax/crypto/CipherInputStream;

    sget-object v3, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 578
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 579
    .local v1, "sd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 580
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v1    # "sd":Ljava/io/File;
    :cond_0
    :goto_0
    return-void

    .line 582
    :catch_0
    move-exception v0

    .line 583
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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
    .line 631
    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 634
    .local v0, "iv":[B
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 635
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 638
    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 641
    sget-object v2, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 643
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    sget-object v3, Lcom/android/launcher2/XmlBackup;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p0, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method private makeFolderTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "folderId"    # I
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 84
    .local v4, "cr":Landroid/content/ContentResolver;
    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "container="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 88
    .local v11, "cursor":Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 89
    const/16 v24, 0x0

    .line 90
    .local v24, "tagInFolder":Ljava/lang/String;
    const-string v5, "itemType"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 91
    .local v17, "folder_itemType":I
    packed-switch v17, :pswitch_data_0

    .line 102
    :goto_1
    if-eqz v24, :cond_0

    .line 103
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    const-string v5, "intent"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 105
    .local v16, "folder_intent":Ljava/lang/String;
    const-string v5, "_id"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 106
    .local v15, "folder_id":I
    const-string v5, "icon"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 107
    .local v14, "folder_iconIndex":I
    const-string v5, "title"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 108
    .local v20, "folder_title":Ljava/lang/String;
    const/4 v10, 0x0

    .line 109
    .local v10, "comName":Landroid/content/ComponentName;
    const/4 v13, 0x0

    .local v13, "folder_className":Ljava/lang/String;
    const/16 v18, 0x0

    .line 111
    .local v18, "folder_packageName":Ljava/lang/String;
    if-eqz v16, :cond_1

    .line 112
    const/16 v22, 0x0

    .line 114
    .local v22, "in":Landroid/content/Intent;
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v22

    .line 118
    :try_start_2
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 121
    .end local v22    # "in":Landroid/content/Intent;
    :cond_1
    if-eqz v10, :cond_2

    .line 122
    invoke-virtual {v10}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    .line 123
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    .line 126
    :cond_2
    const-string v5, "screen"

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v11, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 128
    .local v19, "folder_screen":Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 129
    const/4 v5, 0x0

    const-string v6, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 130
    :cond_3
    if-eqz v18, :cond_4

    .line 131
    const/4 v5, 0x0

    const-string v6, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-interface {v0, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    :cond_4
    if-eqz v19, :cond_5

    .line 133
    const/4 v5, 0x0

    const-string v6, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 134
    :cond_5
    if-eqz v20, :cond_6

    .line 135
    const/4 v5, 0x0

    const-string v6, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-interface {v0, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 136
    :cond_6
    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_7

    .line 137
    const/4 v5, 0x0

    const-string v6, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-interface {v0, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 139
    .local v23, "shortcutIcon":Ljava/lang/String;
    const/16 v21, 0x0

    .line 140
    .local v21, "icon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v11, v14, v1}, Lcom/android/launcher2/XmlBackup;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v21

    .line 141
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, v23

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/XmlBackup;->createBackupShortcutIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 142
    const/4 v5, 0x0

    const-string v6, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v5, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 144
    .end local v21    # "icon":Landroid/graphics/Bitmap;
    .end local v23    # "shortcutIcon":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v5, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 149
    .end local v10    # "comName":Landroid/content/ComponentName;
    .end local v13    # "folder_className":Ljava/lang/String;
    .end local v14    # "folder_iconIndex":I
    .end local v15    # "folder_id":I
    .end local v16    # "folder_intent":Ljava/lang/String;
    .end local v17    # "folder_itemType":I
    .end local v18    # "folder_packageName":Ljava/lang/String;
    .end local v19    # "folder_screen":Ljava/lang/String;
    .end local v20    # "folder_title":Ljava/lang/String;
    .end local v24    # "tagInFolder":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_8

    .line 150
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v5

    .line 93
    .restart local v17    # "folder_itemType":I
    .restart local v24    # "tagInFolder":Ljava/lang/String;
    :pswitch_0
    :try_start_3
    const-string v24, "favorite"

    .line 94
    goto/16 :goto_1

    .line 96
    :pswitch_1
    const-string v24, "shortcut"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 97
    goto/16 :goto_1

    .line 115
    .restart local v10    # "comName":Landroid/content/ComponentName;
    .restart local v13    # "folder_className":Ljava/lang/String;
    .restart local v14    # "folder_iconIndex":I
    .restart local v15    # "folder_id":I
    .restart local v16    # "folder_intent":Ljava/lang/String;
    .restart local v18    # "folder_packageName":Ljava/lang/String;
    .restart local v20    # "folder_title":Ljava/lang/String;
    .restart local v22    # "in":Landroid/content/Intent;
    :catch_0
    move-exception v12

    .line 116
    .local v12, "e":Ljava/net/URISyntaxException;
    goto/16 :goto_0

    .line 149
    .end local v10    # "comName":Landroid/content/ComponentName;
    .end local v12    # "e":Ljava/net/URISyntaxException;
    .end local v13    # "folder_className":Ljava/lang/String;
    .end local v14    # "folder_iconIndex":I
    .end local v15    # "folder_id":I
    .end local v16    # "folder_intent":Ljava/lang/String;
    .end local v17    # "folder_itemType":I
    .end local v18    # "folder_packageName":Ljava/lang/String;
    .end local v20    # "folder_title":Ljava/lang/String;
    .end local v22    # "in":Landroid/content/Intent;
    .end local v24    # "tagInFolder":Ljava/lang/String;
    :cond_9
    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_a

    .line 150
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_a
    return-void

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private makeHomeTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/launcher2/XmlBackup$Result;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "result"    # Lcom/android/launcher2/XmlBackup$Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v33

    .line 248
    .local v33, "widgets":Landroid/appwidget/AppWidgetManager;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 250
    .local v5, "cr":Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "container="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, -0x64

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 255
    .local v16, "cursor":Landroid/database/Cursor;
    if-nez v16, :cond_1

    .line 257
    const/4 v6, 0x1

    :try_start_0
    move-object/from16 v0, p4

    iput v6, v0, Lcom/android/launcher2/XmlBackup$Result;->result:I

    .line 258
    const/4 v6, 0x1

    move-object/from16 v0, p4

    iput v6, v0, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    .line 259
    const-string v6, "HomeScreenXmlBackup"

    const-string v7, "fail to open Favorites cursor"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :goto_0
    if-eqz v16, :cond_0

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 386
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 389
    :cond_0
    return-void

    .line 262
    :cond_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 263
    const/4 v6, 0x0

    const-string v7, "home"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 265
    :cond_2
    const-string v6, "_id"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 266
    .local v20, "id":I
    const-string v6, "itemType"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 267
    .local v23, "itemType":I
    const-string v6, "screen"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    .line 268
    .local v26, "screen":Ljava/lang/String;
    const-string v6, "cellX"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 269
    .local v12, "cellX":Ljava/lang/String;
    const-string v6, "cellY"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    .line 270
    .local v13, "cellY":Ljava/lang/String;
    const-string v6, "spanX"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v28

    .line 271
    .local v28, "spanX":Ljava/lang/String;
    const-string v6, "spanY"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v29

    .line 272
    .local v29, "spanY":Ljava/lang/String;
    const-string v6, "intent"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 273
    .local v22, "intent":Ljava/lang/String;
    const-string v6, "title"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 274
    .local v32, "title":Ljava/lang/String;
    const-string v6, "appWidgetId"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 275
    .local v11, "appwidgetID":I
    const-string v6, "icon"

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    .line 277
    .local v19, "iconIndex":I
    const/4 v15, 0x0

    .line 278
    .local v15, "com":Landroid/content/ComponentName;
    if-eqz v22, :cond_3

    .line 279
    const/16 v21, 0x0

    .line 281
    .local v21, "in":Landroid/content/Intent;
    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, v22

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v21

    .line 285
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    .line 287
    .end local v21    # "in":Landroid/content/Intent;
    :cond_3
    const/4 v14, 0x0

    .line 288
    .local v14, "className":Ljava/lang/String;
    const/16 v24, 0x0

    .line 289
    .local v24, "packageName":Ljava/lang/String;
    if-eqz v15, :cond_4

    .line 290
    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    .line 291
    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 294
    :cond_4
    const/16 v30, 0x0

    .line 295
    .local v30, "tag":Ljava/lang/String;
    sparse-switch v23, :sswitch_data_0

    .line 326
    :cond_5
    :goto_1
    if-eqz v30, :cond_f

    .line 327
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 329
    if-eqz v14, :cond_6

    .line 330
    const/4 v6, 0x0

    const-string v7, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 331
    :cond_6
    if-eqz v24, :cond_7

    .line 332
    const/4 v6, 0x0

    const-string v7, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 333
    :cond_7
    if-eqz v26, :cond_8

    .line 334
    const/4 v6, 0x0

    const-string v7, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v26

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 335
    :cond_8
    if-eqz v32, :cond_9

    .line 336
    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v32

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 337
    :cond_9
    if-eqz v12, :cond_a

    .line 338
    const/4 v6, 0x0

    const-string v7, "x"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    :cond_a
    if-eqz v13, :cond_b

    .line 340
    const/4 v6, 0x0

    const-string v7, "y"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 341
    :cond_b
    if-eqz v28, :cond_c

    .line 342
    const/4 v6, 0x0

    const-string v7, "spanX"

    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 343
    :cond_c
    if-eqz v29, :cond_d

    .line 344
    const/4 v6, 0x0

    const-string v7, "spanY"

    move-object/from16 v0, p2

    move-object/from16 v1, v29

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 346
    :cond_d
    const/16 v6, 0x384

    move/from16 v0, v23

    if-ne v0, v6, :cond_11

    .line 347
    if-eqz v22, :cond_e

    .line 348
    const/16 v21, 0x0

    .line 350
    .restart local v21    # "in":Landroid/content/Intent;
    const/4 v6, 0x0

    :try_start_4
    move-object/from16 v0, v22

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v21

    .line 354
    :try_start_5
    const-string v6, "com.samsung.sec.android.SAMSUNG_WIDGET.themename"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 355
    .local v31, "themeName":Ljava/lang/String;
    if-eqz v31, :cond_e

    .line 356
    const/4 v6, 0x0

    const-string v7, "themeName"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 370
    .end local v21    # "in":Landroid/content/Intent;
    .end local v31    # "themeName":Ljava/lang/String;
    :cond_e
    :goto_2
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 373
    .end local v14    # "className":Ljava/lang/String;
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v30    # "tag":Ljava/lang/String;
    :cond_f
    :goto_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 375
    const/4 v6, 0x0

    const-string v7, "home"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 381
    .end local v11    # "appwidgetID":I
    .end local v12    # "cellX":Ljava/lang/String;
    .end local v13    # "cellY":Ljava/lang/String;
    .end local v15    # "com":Landroid/content/ComponentName;
    .end local v19    # "iconIndex":I
    .end local v20    # "id":I
    .end local v22    # "intent":Ljava/lang/String;
    .end local v23    # "itemType":I
    .end local v26    # "screen":Ljava/lang/String;
    .end local v28    # "spanX":Ljava/lang/String;
    .end local v29    # "spanY":Ljava/lang/String;
    .end local v32    # "title":Ljava/lang/String;
    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 385
    :catchall_0
    move-exception v6

    if-eqz v16, :cond_10

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_10

    .line 386
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_10
    throw v6

    .line 282
    .restart local v11    # "appwidgetID":I
    .restart local v12    # "cellX":Ljava/lang/String;
    .restart local v13    # "cellY":Ljava/lang/String;
    .restart local v15    # "com":Landroid/content/ComponentName;
    .restart local v19    # "iconIndex":I
    .restart local v20    # "id":I
    .restart local v21    # "in":Landroid/content/Intent;
    .restart local v22    # "intent":Ljava/lang/String;
    .restart local v23    # "itemType":I
    .restart local v26    # "screen":Ljava/lang/String;
    .restart local v28    # "spanX":Ljava/lang/String;
    .restart local v29    # "spanY":Ljava/lang/String;
    .restart local v32    # "title":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 283
    .local v17, "e":Ljava/net/URISyntaxException;
    goto :goto_3

    .line 297
    .end local v17    # "e":Ljava/net/URISyntaxException;
    .end local v21    # "in":Landroid/content/Intent;
    .restart local v14    # "className":Ljava/lang/String;
    .restart local v24    # "packageName":Ljava/lang/String;
    .restart local v30    # "tag":Ljava/lang/String;
    :sswitch_0
    :try_start_6
    const-string v30, "favorite"

    .line 298
    goto/16 :goto_1

    .line 300
    :sswitch_1
    const-string v30, "shortcut"

    .line 301
    goto/16 :goto_1

    .line 303
    :sswitch_2
    const-string v30, "appwidget"

    .line 304
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v25

    .line 305
    .local v25, "provider":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v25, :cond_5

    .line 306
    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    .line 307
    move-object/from16 v0, v25

    iget-object v6, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v24

    .line 308
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    move-object/from16 v32, v0

    goto/16 :goto_1

    .line 313
    .end local v25    # "provider":Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_3
    const-string v30, "sactivitywidget"

    .line 314
    goto/16 :goto_1

    .line 316
    :sswitch_4
    const-string v30, "folder"

    .line 317
    goto/16 :goto_1

    .line 351
    .restart local v21    # "in":Landroid/content/Intent;
    :catch_1
    move-exception v17

    .line 352
    .restart local v17    # "e":Ljava/net/URISyntaxException;
    goto :goto_3

    .line 358
    .end local v17    # "e":Ljava/net/URISyntaxException;
    .end local v21    # "in":Landroid/content/Intent;
    :cond_11
    const/4 v6, 0x1

    move/from16 v0, v23

    if-ne v0, v6, :cond_12

    .line 359
    const/4 v6, 0x0

    const-string v7, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 360
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 361
    .local v27, "shortcutIcon":Ljava/lang/String;
    const/16 v18, 0x0

    .line 362
    .local v18, "icon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v19

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/XmlBackup;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 363
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v27

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/XmlBackup;->createBackupShortcutIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 364
    const/4 v6, 0x0

    const-string v7, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_2

    .line 366
    .end local v18    # "icon":Landroid/graphics/Bitmap;
    .end local v27    # "shortcutIcon":Ljava/lang/String;
    :cond_12
    const/4 v6, 0x2

    move/from16 v0, v23

    if-ne v0, v6, :cond_e

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v20

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/XmlBackup;->makeFolderTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    goto/16 :goto_2

    .line 377
    .end local v11    # "appwidgetID":I
    .end local v12    # "cellX":Ljava/lang/String;
    .end local v13    # "cellY":Ljava/lang/String;
    .end local v14    # "className":Ljava/lang/String;
    .end local v15    # "com":Landroid/content/ComponentName;
    .end local v19    # "iconIndex":I
    .end local v20    # "id":I
    .end local v22    # "intent":Ljava/lang/String;
    .end local v23    # "itemType":I
    .end local v24    # "packageName":Ljava/lang/String;
    .end local v26    # "screen":Ljava/lang/String;
    .end local v28    # "spanX":Ljava/lang/String;
    .end local v29    # "spanY":Ljava/lang/String;
    .end local v30    # "tag":Ljava/lang/String;
    .end local v32    # "title":Ljava/lang/String;
    :cond_13
    const/4 v6, 0x1

    move-object/from16 v0, p4

    iput v6, v0, Lcom/android/launcher2/XmlBackup$Result;->result:I

    .line 378
    const/4 v6, 0x3

    move-object/from16 v0, p4

    iput v6, v0, Lcom/android/launcher2/XmlBackup$Result;->err_code:I

    .line 379
    const-string v6, "HomeScreenXmlBackup"

    const-string v7, "There\'s no logs"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_4

    .line 295
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_4
        0x4 -> :sswitch_2
        0x384 -> :sswitch_3
        0x385 -> :sswitch_3
    .end sparse-switch
.end method

.method private makeHotseatTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p3, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 159
    .local v5, "cr":Landroid/content/ContentResolver;
    sget-object v6, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "container="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, -0x65

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 164
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 165
    const/4 v6, 0x0

    const-string v7, "hotseat"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    :cond_0
    const-string v6, "_id"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 168
    .local v17, "id":I
    const-string v6, "itemType"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 169
    .local v20, "itemType":I
    const-string v6, "screen"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    .line 170
    .local v22, "screen":Ljava/lang/String;
    const-string v6, "intent"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 171
    .local v19, "intent":Ljava/lang/String;
    const-string v6, "title"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 172
    .local v25, "title":Ljava/lang/String;
    const-string v6, "icon"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v16

    .line 174
    .local v16, "iconIndex":I
    const/4 v12, 0x0

    .line 175
    .local v12, "com":Landroid/content/ComponentName;
    if-eqz v19, :cond_1

    .line 176
    const/16 v18, 0x0

    .line 178
    .local v18, "in":Landroid/content/Intent;
    const/4 v6, 0x0

    :try_start_1
    move-object/from16 v0, v19

    invoke-static {v0, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v18

    .line 182
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 184
    .end local v18    # "in":Landroid/content/Intent;
    :cond_1
    const/4 v11, 0x0

    .line 185
    .local v11, "className":Ljava/lang/String;
    const/16 v21, 0x0

    .line 186
    .local v21, "packageName":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 187
    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    .line 188
    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .line 191
    :cond_2
    const/16 v24, 0x0

    .line 192
    .local v24, "tag":Ljava/lang/String;
    packed-switch v20, :pswitch_data_0

    .line 206
    :goto_0
    if-eqz v24, :cond_8

    .line 207
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    if-eqz v11, :cond_3

    .line 210
    const/4 v6, 0x0

    const-string v7, "className"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    :cond_3
    if-eqz v21, :cond_4

    .line 212
    const/4 v6, 0x0

    const-string v7, "packageName"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 213
    :cond_4
    if-eqz v22, :cond_5

    .line 214
    const/4 v6, 0x0

    const-string v7, "screen"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    :cond_5
    if-eqz v25, :cond_6

    .line 216
    const/4 v6, 0x0

    const-string v7, "title"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    :cond_6
    const/4 v6, 0x1

    move/from16 v0, v20

    if-ne v0, v6, :cond_b

    .line 219
    const/4 v6, 0x0

    const-string v7, "uri"

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 220
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 221
    .local v23, "shortcutIcon":Ljava/lang/String;
    const/4 v15, 0x0

    .line 222
    .local v15, "icon":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    invoke-virtual {v0, v13, v1, v2}, Lcom/android/launcher2/XmlBackup;->getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 223
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v15}, Lcom/android/launcher2/XmlBackup;->createBackupShortcutIcon(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 224
    const/4 v6, 0x0

    const-string v7, "icon"

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-interface {v0, v6, v7, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    .end local v15    # "icon":Landroid/graphics/Bitmap;
    .end local v23    # "shortcutIcon":Ljava/lang/String;
    :cond_7
    :goto_1
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-interface {v0, v6, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 233
    .end local v11    # "className":Ljava/lang/String;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    :cond_8
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 235
    const/4 v6, 0x0

    const-string v7, "hotseat"

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 239
    .end local v12    # "com":Landroid/content/ComponentName;
    .end local v16    # "iconIndex":I
    .end local v17    # "id":I
    .end local v19    # "intent":Ljava/lang/String;
    .end local v20    # "itemType":I
    .end local v22    # "screen":Ljava/lang/String;
    .end local v25    # "title":Ljava/lang/String;
    :cond_9
    if-eqz v13, :cond_a

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_a

    .line 240
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_a
    return-void

    .line 179
    .restart local v12    # "com":Landroid/content/ComponentName;
    .restart local v16    # "iconIndex":I
    .restart local v17    # "id":I
    .restart local v18    # "in":Landroid/content/Intent;
    .restart local v19    # "intent":Ljava/lang/String;
    .restart local v20    # "itemType":I
    .restart local v22    # "screen":Ljava/lang/String;
    .restart local v25    # "title":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 180
    .local v14, "e":Ljava/net/URISyntaxException;
    goto :goto_2

    .line 194
    .end local v14    # "e":Ljava/net/URISyntaxException;
    .end local v18    # "in":Landroid/content/Intent;
    .restart local v11    # "className":Ljava/lang/String;
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v24    # "tag":Ljava/lang/String;
    :pswitch_0
    :try_start_3
    const-string v24, "favorite"

    .line 195
    goto/16 :goto_0

    .line 197
    :pswitch_1
    const-string v24, "shortcut"

    .line 198
    goto/16 :goto_0

    .line 200
    :pswitch_2
    const-string v24, "folder"

    .line 201
    goto/16 :goto_0

    .line 226
    :cond_b
    const/4 v6, 0x2

    move/from16 v0, v20

    if-ne v0, v6, :cond_7

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/XmlBackup;->makeFolderTag(Landroid/content/Context;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 239
    .end local v11    # "className":Ljava/lang/String;
    .end local v12    # "com":Landroid/content/ComponentName;
    .end local v16    # "iconIndex":I
    .end local v17    # "id":I
    .end local v19    # "intent":Ljava/lang/String;
    .end local v20    # "itemType":I
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "screen":Ljava/lang/String;
    .end local v24    # "tag":Ljava/lang/String;
    .end local v25    # "title":Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v13, :cond_c

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_c

    .line 240
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v6

    .line 192
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p0, "iconNameWithPath"    # Ljava/lang/String;
    .param p1, "bmp"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 590
    .local v1, "sd":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 591
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 596
    :goto_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 597
    .local v0, "fos":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 599
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 600
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 601
    return-void

    .line 593
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method


# virtual methods
.method protected getIconFromCursor(Landroid/database/Cursor;ILandroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "iconIndex"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 660
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 662
    .local v0, "data":[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p3}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/Bitmap;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 665
    :goto_0
    return-object v2

    .line 664
    :catch_0
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "in"    # Landroid/content/Intent;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 59
    const-string v5, "SAVE_PATH"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "filepath":Ljava/lang/String;
    const-string v5, "SOURCE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "source":Ljava/lang/String;
    const-string v5, "SESSION_KEY"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "saveKey":Ljava/lang/String;
    const-string v5, "ACTION"

    const/4 v6, 0x0

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 64
    .local v2, "reqAction":I
    const-string v5, "com.sec.android.intent.action.REQUEST_BACKUP_HOMESCREEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    sget-boolean v5, Lcom/android/launcher2/XmlBackup;->DEBUGGABLE:Z

    if-eqz v5, :cond_0

    const-string v5, "HomeScreenXmlBackup"

    const-string v6, "onReceive REQUEST_BACKUP_HOMESCREEN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    if-nez v2, :cond_1

    .line 67
    invoke-direct {p0, p1, v1, v4, v3}, Lcom/android/launcher2/XmlBackup;->XmlGenerator(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .end local v1    # "filepath":Ljava/lang/String;
    .end local v2    # "reqAction":I
    .end local v3    # "saveKey":Ljava/lang/String;
    .end local v4    # "source":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 69
    .restart local v1    # "filepath":Ljava/lang/String;
    .restart local v2    # "reqAction":I
    .restart local v3    # "saveKey":Ljava/lang/String;
    .restart local v4    # "source":Ljava/lang/String;
    :cond_2
    const-string v5, "com.sec.android.intent.action.REQUEST_RESTORE_HOMESCREEN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 70
    sget-boolean v5, Lcom/android/launcher2/XmlBackup;->DEBUGGABLE:Z

    if-eqz v5, :cond_3

    const-string v5, "HomeScreenXmlBackup"

    const-string v6, "onReceive REQUEST_RESTORE_HOMESCREEN"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_3
    if-nez v2, :cond_1

    .line 72
    invoke-direct {p0, p1, v1, v4, v3}, Lcom/android/launcher2/XmlBackup;->RestoreLogs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v1    # "filepath":Ljava/lang/String;
    .end local v2    # "reqAction":I
    .end local v3    # "saveKey":Ljava/lang/String;
    .end local v4    # "source":Ljava/lang/String;
    :cond_4
    const-string v5, "HomeScreenXmlBackup"

    const-string v6, "onReceive Action value is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
