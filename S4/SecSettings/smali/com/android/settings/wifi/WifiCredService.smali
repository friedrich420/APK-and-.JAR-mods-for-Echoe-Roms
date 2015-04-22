.class public Lcom/android/settings/wifi/WifiCredService;
.super Landroid/app/Service;
.source "WifiCredService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;,
        Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static observer:Landroid/os/FileObserver;


# instance fields
.field private CERT_PATH:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field private aaaCACert:Ljava/security/cert/X509Certificate;

.field private aaaCACertHash:Ljava/lang/String;

.field private expiryTimerReceiver:Landroid/content/BroadcastReceiver;

.field list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field reset:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 48
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiCredService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    const-string v0, "WifiCredService"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCredService;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiCredService;->reset:I

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCredService;->aaaCACertHash:Ljava/lang/String;

    .line 59
    const-string v0, "/data/misc/wifi/"

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCredService;->CERT_PATH:Ljava/lang/String;

    .line 456
    return-void
.end method

.method private _dirChecker(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "_location"    # Ljava/lang/String;
    .param p2, "dir"    # Ljava/lang/String;

    .prologue
    .line 391
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 393
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 396
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCredService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiCredService;->readSdcard(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiCredService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCredService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCredService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiCredService;->scheduleExpiryTimer(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiCredService;)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCredService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCredService;->aaaCACert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/wifi/WifiCredService;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCredService;
    .param p1, "x1"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCredService;->aaaCACert:Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiCredService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCredService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCredService;->aaaCACertHash:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCredService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/settings/wifi/WifiCredService;->aaaCACertHash:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiCredService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiCredService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCredService;->CERT_PATH:Ljava/lang/String;

    return-object v0
.end method

.method private readSdcard(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 269
    const/4 v3, 0x0

    .line 270
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .local v5, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 273
    .local v0, "credInfo":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .local v4, "reader":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 275
    .local v2, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 281
    .end local v2    # "line":Ljava/lang/String;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    const/4 v0, 0x0

    .line 285
    if-eqz v3, :cond_0

    .line 286
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v0

    .line 279
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    .line 285
    if-eqz v4, :cond_2

    .line 286
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    move-object v3, v4

    .line 290
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 288
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .line 291
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .line 288
    .end local v2    # "line":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 285
    :goto_3
    if-eqz v3, :cond_3

    .line 286
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 290
    :cond_3
    :goto_4
    throw v6

    .line 288
    :catch_3
    move-exception v1

    .line 289
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 284
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "line":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 280
    .end local v2    # "line":Ljava/lang/String;
    :catch_4
    move-exception v1

    goto :goto_1
.end method

.method private scheduleExpiryTimer(Ljava/lang/String;I)V
    .locals 12
    .param p1, "expiration"    # Ljava/lang/String;
    .param p2, "credId"    # I

    .prologue
    .line 210
    const-wide/16 v10, 0x0

    .line 211
    .local v10, "interval":J
    if-eqz p1, :cond_0

    .line 213
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x7

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x8

    const/16 v4, 0xa

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xb

    const/16 v5, 0xd

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xe

    const/16 v6, 0x10

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x11

    const/16 v9, 0x13

    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .line 218
    .local v0, "ExpirationDate":Ljava/util/GregorianCalendar;
    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 219
    const-string v1, "WifiCredService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Current time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " expiry time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Time zone"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long v10, v2, v4

    .line 227
    .end local v0    # "ExpirationDate":Ljava/util/GregorianCalendar;
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v1, v10, v2

    if-gez v1, :cond_1

    .line 228
    const-wide/16 v10, 0x0

    .line 229
    :cond_1
    const-string v1, "WifiCredService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timer interval : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v8, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;

    invoke-direct {v8, p0, p2}, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;-><init>(Lcom/android/settings/wifi/WifiCredService;I)V

    .line 231
    .local v8, "expiryTimer":Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    invoke-virtual {v1, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 232
    # getter for: Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->hs20_timer:Ljava/util/Timer;
    invoke-static {v8}, Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;->access$100(Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)Ljava/util/Timer;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiCredService$3;

    invoke-direct {v2, p0, v8}, Lcom/android/settings/wifi/WifiCredService$3;-><init>(Lcom/android/settings/wifi/WifiCredService;Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;)V

    invoke-virtual {v1, v2, v10, v11}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 266
    .end local v8    # "expiryTimer":Lcom/android/settings/wifi/WifiCredService$WifiHs20Timer;
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v7

    .line 222
    .local v7, "e":Ljava/lang/Exception;
    const-string v1, "WifiCredService"

    const-string v2, " updateExpirationTimerForThisCredential Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public installPathExists()Z
    .locals 4

    .prologue
    .line 297
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/bundle/"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 298
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 299
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 300
    .local v1, "status":Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 301
    const-string v2, "WifiCredService"

    const-string v3, "Failed to create directory"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v2, 0x0

    .line 305
    .end local v1    # "status":Ljava/lang/Boolean;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public loadCred(Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 399
    const/16 v16, 0x0

    .line 400
    .local v16, "status":Z
    const/4 v12, 0x0

    .line 401
    .local v12, "outstream":Ljava/io/OutputStream;
    const/4 v4, 0x0

    .line 403
    .local v4, "credInfo":Ljava/lang/String;
    move-object/from16 v11, p1

    .line 404
    .local v11, "mPath":Ljava/lang/String;
    :try_start_0
    new-instance v8, Ljava/io/File;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/cred.conf"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 406
    new-instance v13, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/cred.conf"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiCredService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v13, v0, v1, v2}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;-><init>(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;Landroid/content/Context;)V

    .line 407
    .local v13, "parser":Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;
    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;->processLineByLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 417
    .end local v13    # "parser":Lcom/android/settings/wifi/WifiCredService$ReadWithScanner;
    :cond_0
    if-eqz v12, :cond_1

    .line 418
    :try_start_1
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 423
    .end local v8    # "file":Ljava/io/File;
    :cond_1
    :goto_0
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 425
    .local v14, "removeFile":Ljava/io/File;
    :try_start_2
    invoke-virtual {v14}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v7

    .line 426
    .local v7, "entries":[Ljava/lang/String;
    move-object v3, v7

    .local v3, "arr$":[Ljava/lang/String;
    array-length v10, v3

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v15, v3, v9

    .line 427
    .local v15, "s":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0, v15}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    .local v5, "currentFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6

    .line 426
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 409
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v5    # "currentFile":Ljava/io/File;
    .end local v7    # "entries":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "removeFile":Ljava/io/File;
    .end local v15    # "s":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 410
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    if-eqz v12, :cond_1

    .line 418
    :try_start_4
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 419
    :catch_1
    move-exception v17

    goto :goto_0

    .line 411
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v6

    .line 412
    .local v6, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 417
    if-eqz v12, :cond_1

    .line 418
    :try_start_6
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 419
    :catch_3
    move-exception v17

    goto :goto_0

    .line 413
    .end local v6    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 414
    .local v6, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 417
    if-eqz v12, :cond_1

    .line 418
    :try_start_8
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_0

    .line 419
    :catch_5
    move-exception v17

    goto :goto_0

    .line 416
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    .line 417
    if-eqz v12, :cond_2

    .line 418
    :try_start_9
    invoke-virtual {v12}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 421
    :cond_2
    :goto_2
    throw v17

    .line 430
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v7    # "entries":[Ljava/lang/String;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v14    # "removeFile":Ljava/io/File;
    :cond_3
    :try_start_a
    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_6

    .line 434
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v7    # "entries":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    :goto_3
    return-object v4

    .line 431
    :catch_6
    move-exception v6

    .line 432
    .local v6, "e":Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_3

    .line 419
    .end local v6    # "e":Ljava/lang/SecurityException;
    .end local v14    # "removeFile":Ljava/io/File;
    .restart local v8    # "file":Ljava/io/File;
    :catch_7
    move-exception v17

    goto :goto_0

    .end local v8    # "file":Ljava/io/File;
    :catch_8
    move-exception v18

    goto :goto_2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/Download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "pathToWatch":Ljava/lang/String;
    const-string v2, "WifiCredService"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiCredService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiCredService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 77
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiCredService;->list:Ljava/util/LinkedList;

    .line 79
    new-instance v2, Lcom/android/settings/wifi/WifiCredService$1;

    invoke-direct {v2, p0, v1, v1}, Lcom/android/settings/wifi/WifiCredService$1;-><init>(Lcom/android/settings/wifi/WifiCredService;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/settings/wifi/WifiCredService;->observer:Landroid/os/FileObserver;

    .line 146
    sget-object v2, Lcom/android/settings/wifi/WifiCredService;->observer:Landroid/os/FileObserver;

    invoke-virtual {v2}, Landroid/os/FileObserver;->startWatching()V

    .line 148
    new-instance v2, Lcom/android/settings/wifi/WifiCredService$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiCredService$2;-><init>(Lcom/android/settings/wifi/WifiCredService;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiCredService;->expiryTimerReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 203
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "android.net.wifi.HS20_EXPIRY_TIME_FOUND"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/android/settings/wifi/WifiCredService;->expiryTimerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/wifi/WifiCredService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 207
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/settings/wifi/WifiCredService;->expiryTimerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiCredService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 441
    sget-object v0, Lcom/android/settings/wifi/WifiCredService;->observer:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 442
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 443
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiCredService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiCredService;->mContext:Landroid/content/Context;

    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public unzip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "_zipFile"    # Ljava/lang/String;
    .param p2, "_location"    # Ljava/lang/String;

    .prologue
    .line 331
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 332
    .local v4, "fin":Ljava/io/FileInputStream;
    new-instance v9, Ljava/util/zip/ZipInputStream;

    invoke-direct {v9, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 333
    .local v9, "zin":Ljava/util/zip/ZipInputStream;
    const/4 v8, 0x0

    .line 335
    .local v8, "ze":Ljava/util/zip/ZipEntry;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 336
    const-string v10, "WifiCredService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unzipping********** "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 339
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, p2, v10}, Lcom/android/settings/wifi/WifiCredService;->_dirChecker(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 382
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 383
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    .line 388
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v8    # "ze":Ljava/util/zip/ZipEntry;
    .end local v9    # "zin":Ljava/util/zip/ZipInputStream;
    :goto_1
    return-void

    .line 341
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v8    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v9    # "zin":Ljava/util/zip/ZipInputStream;
    :cond_2
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 343
    .local v5, "fout":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->read()I

    move-result v0

    .local v0, "c":I
    :goto_2
    const/4 v10, -0x1

    if-eq v0, v10, :cond_4

    .line 344
    if-eqz v5, :cond_3

    .line 345
    invoke-virtual {v5, v0}, Ljava/io/FileOutputStream;->write(I)V

    .line 343
    :cond_3
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->read()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    goto :goto_2

    .line 352
    :cond_4
    if-eqz v9, :cond_5

    .line 353
    :try_start_5
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 359
    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 360
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 366
    .end local v0    # "c":I
    :cond_6
    :goto_4
    :try_start_7
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    .line 367
    .local v7, "type":Landroid/webkit/MimeTypeMap;
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 368
    .local v3, "fileName":Ljava/lang/String;
    const/16 v10, 0x2e

    invoke-virtual {v3, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 369
    .local v6, "i":I
    const-string v2, ""

    .line 370
    .local v2, "extension":Ljava/lang/String;
    if-lez v6, :cond_0

    .line 371
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v3, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 372
    const-string v10, "WifiCredService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ext"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v10, "WifiCredService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mime Type"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 355
    .end local v2    # "extension":Ljava/lang/String;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v6    # "i":I
    .end local v7    # "type":Landroid/webkit/MimeTypeMap;
    .restart local v0    # "c":I
    :catch_1
    move-exception v1

    .line 356
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 362
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 363
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    .line 348
    .end local v0    # "c":I
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 349
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 352
    if-eqz v9, :cond_7

    .line 353
    :try_start_9
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 359
    :cond_7
    :goto_5
    if-eqz v5, :cond_6

    .line 360
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_4

    .line 362
    :catch_4
    move-exception v1

    .line 363
    :try_start_b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 355
    :catch_5
    move-exception v1

    .line 356
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_5

    .line 351
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 352
    if-eqz v9, :cond_8

    .line 353
    :try_start_c
    invoke-virtual {v9}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    .line 359
    :cond_8
    :goto_6
    if-eqz v5, :cond_9

    .line 360
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 364
    :cond_9
    :goto_7
    :try_start_e
    throw v10

    .line 355
    :catch_6
    move-exception v1

    .line 356
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 362
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v1

    .line 363
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    goto :goto_7

    .line 384
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v5    # "fout":Ljava/io/FileOutputStream;
    .end local v8    # "ze":Ljava/util/zip/ZipEntry;
    .end local v9    # "zin":Ljava/util/zip/ZipInputStream;
    :catch_8
    move-exception v1

    .line 385
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v10, "WifiCredService"

    const-string v11, "Unzip Failed"

    invoke-static {v10, v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method
