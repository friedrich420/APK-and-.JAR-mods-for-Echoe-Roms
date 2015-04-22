.class Lcom/android/server/pm/PackageManagerService$PackageUsage;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUsage"
.end annotation


# static fields
.field private static final WRITE_INTERVAL:I = 0x1b7740


# instance fields
.field private final mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mFileLock:Ljava/lang/Object;

.field private mIsHistoricalPackageUsageAvailable:Z

.field private final mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 6

    .prologue
    .line 886
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 890
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mFileLock:Ljava/lang/Object;

    .line 891
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    .line 892
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 894
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsHistoricalPackageUsageAvailable:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "x1"    # Lcom/android/server/pm/PackageManagerService$1;

    .prologue
    .line 886
    invoke-direct {p0, p1}, <init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/PackageManagerService$PackageUsage;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$PackageUsage;

    .prologue
    .line 886
    invoke-direct {p0}, writeInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/pm/PackageManagerService$PackageUsage;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$PackageUsage;

    .prologue
    .line 886
    iget-object v0, p0, mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private getFile()Landroid/util/AtomicFile;
    .registers 5

    .prologue
    .line 1121
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 1122
    .local v0, "dataDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "system"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1123
    .local v2, "systemDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "package-usage.list"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1124
    .local v1, "fname":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    return-object v3
.end method

.method private readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    .registers 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "endOfToken"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1104
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 1106
    :goto_4
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 1107
    .local v0, "ch":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1b

    .line 1108
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-nez v1, :cond_13

    .line 1109
    const/4 v1, 0x0

    .line 1114
    :goto_12
    return-object v1

    .line 1111
    :cond_13
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected EOF"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1113
    :cond_1b
    if-ne v0, p3, :cond_22

    .line 1114
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    .line 1116
    :cond_22
    int-to-char v1, v0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

.method private writeInternal()V
    .registers 15

    .prologue
    .line 924
    sget-object v8, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v8

    .line 925
    :try_start_3
    iget-object v9, p0, mFileLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_91

    .line 926
    :try_start_6
    invoke-direct {p0}, getFile()Landroid/util/AtomicFile;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_8e

    move-result-object v2

    .line 927
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 929
    .local v1, "f":Ljava/io/FileOutputStream;
    :try_start_b
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 930
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 931
    .local v4, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    const/16 v10, 0x1b0

    const/16 v11, 0x3e8

    const/16 v12, 0x408

    invoke-static {v7, v10, v11, v12}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 932
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    .local v6, "sb":Ljava/lang/StringBuilder;
    sget-object v7, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/PackageParser$Package;

    .line 934
    .local v5, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-wide v10, v5, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    const-wide/16 v12, 0x0

    cmp-long v7, v10, v12

    if-eqz v7, :cond_34

    .line 937
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 938
    iget-object v7, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 940
    iget-wide v10, v5, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 941
    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 942
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v10, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_6d} :catch_6e
    .catchall {:try_start_b .. :try_end_6d} :catchall_8e

    goto :goto_34

    .line 946
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .end local v5    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catch_6e
    move-exception v0

    .line 947
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_74

    .line 948
    :try_start_71
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 950
    :cond_74
    const-string v7, "PackageManager"

    const-string v10, "Failed to write package usage times"

    invoke-static {v7, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 952
    .end local v0    # "e":Ljava/io/IOException;
    :goto_7b
    monitor-exit v9
    :try_end_7c
    .catchall {:try_start_71 .. :try_end_7c} :catchall_8e

    .line 953
    :try_start_7c
    monitor-exit v8
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_91

    .line 954
    iget-object v7, p0, mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 955
    return-void

    .line 944
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    .restart local v6    # "sb":Ljava/lang/StringBuilder;
    :cond_87
    :try_start_87
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 945
    invoke-virtual {v2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8d} :catch_6e
    .catchall {:try_start_87 .. :try_end_8d} :catchall_8e

    goto :goto_7b

    .line 952
    .end local v1    # "f":Ljava/io/FileOutputStream;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    .end local v6    # "sb":Ljava/lang/StringBuilder;
    :catchall_8e
    move-exception v7

    :try_start_8f
    monitor-exit v9
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    :try_start_90
    throw v7

    .line 953
    :catchall_91
    move-exception v7

    monitor-exit v8
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_91

    throw v7
.end method


# virtual methods
.method convertUsageHistory()V
    .registers 32

    .prologue
    .line 959
    const/4 v10, 0x0

    .line 960
    .local v10, "fis":Ljava/io/FileInputStream;
    new-instance v11, Landroid/util/AtomicFile;

    new-instance v25, Ljava/io/File;

    const-string v26, "/data/system/usage-history.xml"

    invoke-direct/range {v25 .. v26}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v25

    invoke-direct {v11, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 962
    .local v11, "historyFile":Landroid/util/AtomicFile;
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 966
    .local v16, "list":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :try_start_14
    invoke-virtual {v11}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10

    .line 967
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v20

    .line 968
    .local v20, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/16 v25, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-interface {v0, v10, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 969
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    .line 971
    .local v7, "eventType":I
    :goto_29
    const/16 v25, 0x2

    move/from16 v0, v25

    if-eq v7, v0, :cond_3a

    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v7, v0, :cond_3a

    .line 972
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_29

    .line 974
    :cond_3a
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 975
    .local v24, "tagName":Ljava/lang/String;
    const-string/jumbo v25, "usage-history"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_153

    .line 976
    const/16 v21, 0x0

    .line 978
    .local v21, "pkg":Ljava/lang/String;
    :cond_4d
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 979
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v7, v0, :cond_1f9

    .line 980
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v24

    .line 981
    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    .line 982
    .local v5, "depth":I
    const-string/jumbo v25, "pkg"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_159

    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v5, v0, :cond_159

    .line 983
    const/16 v25, 0x0

    const-string v26, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1006
    .end local v5    # "depth":I
    :cond_80
    :goto_80
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v7, v0, :cond_4d

    .line 1009
    sget-object v26, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v26
    :try_end_89
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_89} :catch_1d4
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_89} :catch_21e
    .catchall {:try_start_14 .. :try_end_89} :catchall_243

    .line 1010
    :try_start_89
    move-object/from16 v0, p0

    iget-object v0, v0, mFileLock:Ljava/lang/Object;

    move-object/from16 v27, v0

    monitor-enter v27
    :try_end_90
    .catchall {:try_start_89 .. :try_end_90} :catchall_21b

    .line 1011
    :try_start_90
    invoke-direct/range {p0 .. p0}, getFile()Landroid/util/AtomicFile;
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_218

    move-result-object v9

    .line 1012
    .local v9, "file":Landroid/util/AtomicFile;
    const/4 v8, 0x0

    .line 1014
    .local v8, "f":Ljava/io/FileOutputStream;
    :try_start_95
    invoke-virtual {v9}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v8

    .line 1015
    new-instance v17, Ljava/io/BufferedOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1016
    .local v17, "out":Ljava/io/BufferedOutputStream;
    invoke-virtual {v9}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v25

    const/16 v28, 0x1b0

    const/16 v29, 0x3e8

    const/16 v30, 0x408

    move-object/from16 v0, v25

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1017
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 1018
    .local v23, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_c6
    :goto_c6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_210

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1019
    .local v22, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 1020
    .local v18, "lrt":J
    const-wide/16 v28, 0x0

    cmp-long v25, v18, v28

    if-eqz v25, :cond_c6

    .line 1023
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1024
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    const/16 v25, 0x20

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1026
    move-object/from16 v0, v23

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1027
    const/16 v25, 0xa

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    sget-object v28, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/BufferedOutputStream;->write([B)V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_124} :catch_125
    .catchall {:try_start_95 .. :try_end_124} :catchall_218

    goto :goto_c6

    .line 1032
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .end local v18    # "lrt":J
    .end local v22    # "pkgName":Ljava/lang/String;
    .end local v23    # "sb":Ljava/lang/StringBuilder;
    :catch_125
    move-exception v6

    .line 1033
    .local v6, "e":Ljava/io/IOException;
    if-eqz v8, :cond_12b

    .line 1034
    :try_start_128
    invoke-virtual {v9, v8}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1036
    :cond_12b
    const-string v25, "PackageManager"

    const-string v28, "Failed to write package usage times"

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    .end local v6    # "e":Ljava/io/IOException;
    :goto_136
    monitor-exit v27
    :try_end_137
    .catchall {:try_start_128 .. :try_end_137} :catchall_218

    .line 1039
    :try_start_137
    monitor-exit v26
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_21b

    .line 1040
    :try_start_138
    move-object/from16 v0, p0

    iget-object v0, v0, mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    move-object/from16 v25, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    invoke-virtual/range {v25 .. v27}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1041
    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v25

    new-instance v26, Ljava/io/File;

    const-string v27, "/data/system/usage-history.xml.backup"

    invoke-direct/range {v26 .. v27}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v26}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_153
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_138 .. :try_end_153} :catch_1d4
    .catch Ljava/io/IOException; {:try_start_138 .. :try_end_153} :catch_21e
    .catchall {:try_start_138 .. :try_end_153} :catchall_243

    .line 1048
    .end local v8    # "f":Ljava/io/FileOutputStream;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v21    # "pkg":Ljava/lang/String;
    :cond_153
    if-eqz v10, :cond_158

    .line 1050
    :try_start_155
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_158
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_158} :catch_24a

    .line 1055
    .end local v7    # "eventType":I
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "tagName":Ljava/lang/String;
    :cond_158
    :goto_158
    return-void

    .line 984
    .restart local v5    # "depth":I
    .restart local v7    # "eventType":I
    .restart local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "pkg":Ljava/lang/String;
    .restart local v24    # "tagName":Ljava/lang/String;
    :cond_159
    :try_start_159
    const-string v25, "comp"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_80

    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v5, v0, :cond_80

    if-eqz v21, :cond_80

    .line 985
    const/16 v25, 0x0

    const-string v26, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 986
    .local v4, "comp":Ljava/lang/String;
    const/16 v25, 0x0

    const-string v26, "lrt"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_188
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_159 .. :try_end_188} :catch_1d4
    .catch Ljava/io/IOException; {:try_start_159 .. :try_end_188} :catch_21e
    .catchall {:try_start_159 .. :try_end_188} :catchall_243

    move-result-object v13

    .line 987
    .local v13, "lastResumeTimeStr":Ljava/lang/String;
    if-eqz v4, :cond_80

    if-eqz v13, :cond_80

    .line 989
    :try_start_18d
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 990
    .local v14, "lastResumeTime":J
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1c2

    .line 991
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Long;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    cmp-long v25, v26, v14

    if-gez v25, :cond_80

    .line 992
    new-instance v25, Ljava/lang/Long;

    move-object/from16 v0, v25

    invoke-direct {v0, v13}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_80

    .line 997
    .end local v14    # "lastResumeTime":J
    :catch_1bf
    move-exception v25

    goto/16 :goto_80

    .line 995
    .restart local v14    # "lastResumeTime":J
    :cond_1c2
    new-instance v25, Ljava/lang/Long;

    move-object/from16 v0, v25

    invoke-direct {v0, v13}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d2
    .catch Ljava/lang/NumberFormatException; {:try_start_18d .. :try_end_1d2} :catch_1bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18d .. :try_end_1d2} :catch_1d4
    .catch Ljava/io/IOException; {:try_start_18d .. :try_end_1d2} :catch_21e
    .catchall {:try_start_18d .. :try_end_1d2} :catchall_243

    goto/16 :goto_80

    .line 1043
    .end local v4    # "comp":Ljava/lang/String;
    .end local v5    # "depth":I
    .end local v7    # "eventType":I
    .end local v13    # "lastResumeTimeStr":Ljava/lang/String;
    .end local v14    # "lastResumeTime":J
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "pkg":Ljava/lang/String;
    .end local v24    # "tagName":Ljava/lang/String;
    :catch_1d4
    move-exception v6

    .line 1044
    .local v6, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1d5
    const-string v25, "PackageManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error reading history stats: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ef
    .catchall {:try_start_1d5 .. :try_end_1ef} :catchall_243

    .line 1048
    if-eqz v10, :cond_158

    .line 1050
    :try_start_1f1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_1f4
    .catch Ljava/io/IOException; {:try_start_1f1 .. :try_end_1f4} :catch_1f6

    goto/16 :goto_158

    .line 1051
    :catch_1f6
    move-exception v25

    goto/16 :goto_158

    .line 1001
    .end local v6    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7    # "eventType":I
    .restart local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v21    # "pkg":Ljava/lang/String;
    .restart local v24    # "tagName":Ljava/lang/String;
    :cond_1f9
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v7, v0, :cond_80

    .line 1002
    :try_start_1ff
    const-string/jumbo v25, "pkg"

    invoke-interface/range {v20 .. v20}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_209
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1ff .. :try_end_209} :catch_1d4
    .catch Ljava/io/IOException; {:try_start_1ff .. :try_end_209} :catch_21e
    .catchall {:try_start_1ff .. :try_end_209} :catchall_243

    move-result v25

    if-eqz v25, :cond_80

    .line 1003
    const/16 v21, 0x0

    goto/16 :goto_80

    .line 1030
    .restart local v8    # "f":Ljava/io/FileOutputStream;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v17    # "out":Ljava/io/BufferedOutputStream;
    .restart local v23    # "sb":Ljava/lang/StringBuilder;
    :cond_210
    :try_start_210
    invoke-virtual/range {v17 .. v17}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1031
    invoke-virtual {v9, v8}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_216
    .catch Ljava/io/IOException; {:try_start_210 .. :try_end_216} :catch_125
    .catchall {:try_start_210 .. :try_end_216} :catchall_218

    goto/16 :goto_136

    .line 1038
    .end local v8    # "f":Ljava/io/FileOutputStream;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v17    # "out":Ljava/io/BufferedOutputStream;
    .end local v23    # "sb":Ljava/lang/StringBuilder;
    :catchall_218
    move-exception v25

    :try_start_219
    monitor-exit v27
    :try_end_21a
    .catchall {:try_start_219 .. :try_end_21a} :catchall_218

    :try_start_21a
    throw v25

    .line 1039
    :catchall_21b
    move-exception v25

    monitor-exit v26
    :try_end_21d
    .catchall {:try_start_21a .. :try_end_21d} :catchall_21b

    :try_start_21d
    throw v25
    :try_end_21e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21d .. :try_end_21e} :catch_1d4
    .catch Ljava/io/IOException; {:try_start_21d .. :try_end_21e} :catch_21e
    .catchall {:try_start_21d .. :try_end_21e} :catchall_243

    .line 1045
    .end local v7    # "eventType":I
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v21    # "pkg":Ljava/lang/String;
    .end local v24    # "tagName":Ljava/lang/String;
    :catch_21e
    move-exception v6

    .line 1046
    .local v6, "e":Ljava/io/IOException;
    :try_start_21f
    const-string v25, "PackageManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Error reading history stats: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_239
    .catchall {:try_start_21f .. :try_end_239} :catchall_243

    .line 1048
    if-eqz v10, :cond_158

    .line 1050
    :try_start_23b
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_23e
    .catch Ljava/io/IOException; {:try_start_23b .. :try_end_23e} :catch_240

    goto/16 :goto_158

    .line 1051
    :catch_240
    move-exception v25

    goto/16 :goto_158

    .line 1048
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_243
    move-exception v25

    if-eqz v10, :cond_249

    .line 1050
    :try_start_246
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_249
    .catch Ljava/io/IOException; {:try_start_246 .. :try_end_249} :catch_24d

    .line 1052
    :cond_249
    :goto_249
    throw v25

    .line 1051
    .restart local v7    # "eventType":I
    .restart local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v24    # "tagName":Ljava/lang/String;
    :catch_24a
    move-exception v25

    goto/16 :goto_158

    .end local v7    # "eventType":I
    .end local v20    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v24    # "tagName":Ljava/lang/String;
    :catch_24d
    move-exception v26

    goto :goto_249
.end method

.method isHistoricalPackageUsageAvailable()Z
    .registers 2

    .prologue
    .line 897
    iget-boolean v0, p0, mIsHistoricalPackageUsageAvailable:Z

    return v0
.end method

.method readLP()V
    .registers 16

    .prologue
    .line 1059
    iget-object v12, p0, mFileLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1061
    :try_start_3
    invoke-virtual {p0}, convertUsageHistory()V

    .line 1063
    invoke-direct {p0}, getFile()Landroid/util/AtomicFile;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5a

    move-result-object v2

    .line 1064
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    .line 1066
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_b
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v11

    invoke-direct {v4, v11}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_14} :catch_a9
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_14} :catch_a7
    .catchall {:try_start_b .. :try_end_14} :catchall_a5

    .line 1067
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .local v4, "in":Ljava/io/BufferedInputStream;
    :try_start_14
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 1069
    .local v7, "sb":Ljava/lang/StringBuffer;
    :cond_19
    :goto_19
    const/16 v11, 0x20

    invoke-direct {p0, v4, v7, v11}, readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1e} :catch_51
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1e} :catch_72
    .catchall {:try_start_14 .. :try_end_1e} :catchall_9f

    move-result-object v5

    .line 1070
    .local v5, "packageName":Ljava/lang/String;
    if-nez v5, :cond_30

    .line 1096
    :try_start_21
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v3, v4

    .line 1098
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :goto_25
    monitor-exit v12
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_5a

    .line 1099
    iget-object v11, p0, mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 1100
    return-void

    .line 1073
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    :cond_30
    const/16 v11, 0xa

    :try_start_32
    invoke-direct {p0, v4, v7, v11}, readToken(Ljava/io/InputStream;Ljava/lang/StringBuffer;C)Ljava/lang/String;

    move-result-object v10

    .line 1074
    .local v10, "timeInMillisString":Ljava/lang/String;
    if-nez v10, :cond_5d

    .line 1075
    new-instance v11, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to find last usage time for package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_51} :catch_51
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_51} :catch_72
    .catchall {:try_start_32 .. :try_end_51} :catchall_9f

    .line 1091
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "timeInMillisString":Ljava/lang/String;
    :catch_51
    move-exception v1

    move-object v3, v4

    .line 1092
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v1, "expected":Ljava/io/FileNotFoundException;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :goto_53
    const/4 v11, 0x0

    :try_start_54
    iput-boolean v11, p0, mIsHistoricalPackageUsageAvailable:Z
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_a5

    .line 1096
    :try_start_56
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_25

    .line 1098
    .end local v1    # "expected":Ljava/io/FileNotFoundException;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    :catchall_5a
    move-exception v11

    monitor-exit v12
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5a

    throw v11

    .line 1078
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v10    # "timeInMillisString":Ljava/lang/String;
    :cond_5d
    :try_start_5d
    sget-object v11, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v11, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;
    :try_end_65
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_65} :catch_51
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_65} :catch_72
    .catchall {:try_start_5d .. :try_end_65} :catchall_9f

    .line 1079
    .local v6, "pkg":Landroid/content/pm/PackageParser$Package;
    if-eqz v6, :cond_19

    .line 1084
    :try_start_67
    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_6e
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_6e} :catch_7f
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_6e} :catch_51
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6e} :catch_72
    .catchall {:try_start_67 .. :try_end_6e} :catchall_9f

    move-result-wide v8

    .line 1089
    .local v8, "timeInMillis":J
    :try_start_6f
    iput-wide v8, v6, Landroid/content/pm/PackageParser$Package;->mLastPackageUsageTimeInMills:J
    :try_end_71
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_71} :catch_51
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_71} :catch_72
    .catchall {:try_start_6f .. :try_end_71} :catchall_9f

    goto :goto_19

    .line 1093
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "timeInMillis":J
    .end local v10    # "timeInMillisString":Ljava/lang/String;
    :catch_72
    move-exception v0

    move-object v3, v4

    .line 1094
    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :goto_74
    :try_start_74
    const-string v11, "PackageManager"

    const-string v13, "Failed to read package usage times"

    invoke-static {v11, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_a5

    .line 1096
    :try_start_7b
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_5a

    goto :goto_25

    .line 1085
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v10    # "timeInMillisString":Ljava/lang/String;
    :catch_7f
    move-exception v0

    .line 1086
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_80
    new-instance v11, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Failed to parse "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " as a long."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v13, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11
    :try_end_9f
    .catch Ljava/io/FileNotFoundException; {:try_start_80 .. :try_end_9f} :catch_51
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_9f} :catch_72
    .catchall {:try_start_80 .. :try_end_9f} :catchall_9f

    .line 1096
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "timeInMillisString":Ljava/lang/String;
    :catchall_9f
    move-exception v11

    move-object v3, v4

    .end local v4    # "in":Ljava/io/BufferedInputStream;
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    :goto_a1
    :try_start_a1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v11
    :try_end_a5
    .catchall {:try_start_a1 .. :try_end_a5} :catchall_5a

    :catchall_a5
    move-exception v11

    goto :goto_a1

    .line 1093
    :catch_a7
    move-exception v0

    goto :goto_74

    .line 1091
    :catch_a9
    move-exception v1

    goto :goto_53
.end method

.method write(Z)V
    .registers 6
    .param p1, "force"    # Z

    .prologue
    .line 901
    if-eqz p1, :cond_6

    .line 902
    invoke-direct {p0}, writeInternal()V

    .line 921
    :cond_5
    :goto_5
    return-void

    .line 905
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, mLastWritten:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-ltz v0, :cond_5

    .line 909
    iget-object v0, p0, mBackgroundWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 910
    new-instance v0, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;

    const-string v1, "PackageUsage_DiskWriter"

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;-><init>(Lcom/android/server/pm/PackageManagerService$PackageUsage;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageUsage$1;->start()V

    goto :goto_5
.end method
