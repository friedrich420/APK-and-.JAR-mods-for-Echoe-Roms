.class public Lcom/android/server/SystemConfig;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemConfig$PermissionEntry;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "SystemConfig"

.field static sInstance:Lcom/android/server/SystemConfig;


# instance fields
.field final mAllowInPowerSave:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailableFeatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mFixedImeApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalGids:[I

.field final mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mSharedLibraries:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mSystemPermissions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mSystemPermissions:Landroid/util/SparseArray;

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mSharedLibraries:Landroid/util/ArrayMap;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mAvailableFeatures:Ljava/util/HashMap;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mPermissions:Landroid/util/ArrayMap;

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mAllowInPowerSave:Landroid/util/ArraySet;

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mFixedImeApps:Landroid/util/ArraySet;

    .line 123
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysconfig"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, readPermissions(Ljava/io/File;Z)V

    .line 126
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "permissions"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, readPermissions(Ljava/io/File;Z)V

    .line 129
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "sysconfig"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, readPermissions(Ljava/io/File;Z)V

    .line 131
    invoke-static {}, Landroid/os/Environment;->getOemDirectory()Ljava/io/File;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "etc"

    aput-object v2, v1, v3

    const-string/jumbo v2, "permissions"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, readPermissions(Ljava/io/File;Z)V

    .line 133
    return-void
.end method

.method public static getInstance()Lcom/android/server/SystemConfig;
    .registers 2

    .prologue
    .line 85
    const-class v1, Lcom/android/server/SystemConfig;

    monitor-enter v1

    .line 86
    :try_start_3
    sget-object v0, sInstance:Lcom/android/server/SystemConfig;

    if-nez v0, :cond_e

    .line 87
    new-instance v0, Lcom/android/server/SystemConfig;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Lcom/android/server/SystemConfig;

    .line 89
    :cond_e
    sget-object v0, sInstance:Lcom/android/server/SystemConfig;

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method private readPermissionsFromXml(Ljava/io/File;Z)V
    .registers 27
    .param p1, "permFile"    # Ljava/io/File;
    .param p2, "onlyFeatures"    # Z

    .prologue
    .line 174
    const/4 v13, 0x0

    .line 176
    .local v13, "permReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v14, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_46

    .line 183
    .end local v13    # "permReader":Ljava/io/FileReader;
    .local v14, "permReader":Ljava/io/FileReader;
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v11

    .line 184
    .local v11, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 188
    :cond_f
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v17

    .local v17, "type":I
    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_23

    const/16 v21, 0x1

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 192
    :cond_23
    const/16 v21, 0x2

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_64

    .line 193
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v22, "No start tag found"

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_33
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_33} :catch_33
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_33} :catch_a0
    .catchall {:try_start_8 .. :try_end_33} :catchall_127

    .line 331
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "type":I
    :catch_33
    move-exception v2

    .line 332
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_34
    const-string v21, "SystemConfig"

    const-string v22, "Got execption parsing permissions."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_127

    .line 337
    if-eqz v14, :cond_44

    :try_start_41
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_3c1

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_44
    :goto_44
    move-object v13, v14

    .line 340
    .end local v14    # "permReader":Ljava/io/FileReader;
    .restart local v13    # "permReader":Ljava/io/FileReader;
    :goto_45
    return-void

    .line 177
    :catch_46
    move-exception v2

    .line 178
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Couldn\'t find or open permissions file "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 196
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "permReader":Ljava/io/FileReader;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v14    # "permReader":Ljava/io/FileReader;
    .restart local v17    # "type":I
    :cond_64
    :try_start_64
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v22, "permissions"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_ee

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "config"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_ee

    .line 197
    new-instance v21, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Unexpected start tag: found "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", expected \'permissions\' or \'config\'"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v21
    :try_end_a0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_64 .. :try_end_a0} :catch_33
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_a0} :catch_a0
    .catchall {:try_start_64 .. :try_end_a0} :catchall_127

    .line 333
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "type":I
    :catch_a0
    move-exception v2

    .line 334
    .local v2, "e":Ljava/io/IOException;
    :try_start_a1
    const-string v21, "SystemConfig"

    const-string v22, "Got execption parsing permissions."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ac
    .catchall {:try_start_a1 .. :try_end_ac} :catchall_127

    .line 337
    if-eqz v14, :cond_44

    :try_start_ae
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b1} :catch_b2

    goto :goto_44

    .line 338
    :catch_b2
    move-exception v7

    .local v7, "ie":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_44

    .line 207
    .end local v2    # "e":Ljava/io/IOException;
    .end local v7    # "ie":Ljava/io/IOException;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "type":I
    :cond_b7
    :try_start_b7
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    .line 208
    .local v10, "name":Ljava/lang/String;
    const-string v21, "group"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_12e

    if-nez p2, :cond_12e

    .line 209
    const/16 v21, 0x0

    const-string v22, "gid"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "gidStr":Ljava/lang/String;
    if-eqz v6, :cond_10a

    .line 211
    invoke-static {v6}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v5

    .line 212
    .local v5, "gid":I
    move-object/from16 v0, p0

    iget-object v0, v0, mGlobalGids:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-static {v0, v5}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, mGlobalGids:[I

    .line 218
    .end local v5    # "gid":I
    :goto_eb
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 202
    .end local v6    # "gidStr":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    :cond_ee
    :goto_ee
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 203
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_f4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b7 .. :try_end_f4} :catch_33
    .catch Ljava/io/IOException; {:try_start_b7 .. :try_end_f4} :catch_a0
    .catchall {:try_start_b7 .. :try_end_f4} :catchall_127

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b7

    .line 337
    if-eqz v14, :cond_44

    :try_start_ff
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_102
    .catch Ljava/io/IOException; {:try_start_ff .. :try_end_102} :catch_104

    goto/16 :goto_44

    .line 338
    :catch_104
    move-exception v7

    .restart local v7    # "ie":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_44

    .line 214
    .end local v7    # "ie":Ljava/io/IOException;
    .restart local v6    # "gidStr":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_10a
    :try_start_10a
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<group> without gid at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10a .. :try_end_126} :catch_33
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_126} :catch_a0
    .catchall {:try_start_10a .. :try_end_126} :catchall_127

    goto :goto_eb

    .line 336
    .end local v6    # "gidStr":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "type":I
    :catchall_127
    move-exception v21

    .line 337
    if-eqz v14, :cond_12d

    :try_start_12a
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_12d
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_12d} :catch_3c7

    .line 338
    :cond_12d
    :goto_12d
    throw v21

    .line 220
    .restart local v10    # "name":Ljava/lang/String;
    .restart local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "type":I
    :cond_12e
    :try_start_12e
    const-string/jumbo v21, "permission"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_174

    if-nez p2, :cond_174

    .line 221
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 222
    .local v12, "perm":Ljava/lang/String;
    if-nez v12, :cond_169

    .line 223
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<permission> without name at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_ee

    .line 228
    :cond_169
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 229
    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_ee

    .line 231
    .end local v12    # "perm":Ljava/lang/String;
    :cond_174
    const-string v21, "assign-permission"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_244

    if-nez p2, :cond_244

    .line 232
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 233
    .restart local v12    # "perm":Ljava/lang/String;
    if-nez v12, :cond_1af

    .line 234
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<assign-permission> without name at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_ee

    .line 239
    :cond_1af
    const/16 v21, 0x0

    const-string/jumbo v22, "uid"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 240
    .local v19, "uidStr":Ljava/lang/String;
    if-nez v19, :cond_1df

    .line 241
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<assign-permission> without uid at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_ee

    .line 246
    :cond_1df
    invoke-static/range {v19 .. v19}, Landroid/os/Process;->getUidForName(Ljava/lang/String;)I

    move-result v18

    .line 247
    .local v18, "uid":I
    if-gez v18, :cond_214

    .line 248
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<assign-permission> with unknown uid \""

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\" at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_ee

    .line 254
    :cond_214
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/HashSet;

    .line 256
    .local v15, "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-nez v15, :cond_23c

    .line 257
    new-instance v15, Ljava/util/HashSet;

    .end local v15    # "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/HashSet;-><init>()V

    .line 258
    .restart local v15    # "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mSystemPermissions:Landroid/util/SparseArray;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    :cond_23c
    invoke-virtual {v15, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_ee

    .line 263
    .end local v12    # "perm":Ljava/lang/String;
    .end local v15    # "perms":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "uid":I
    .end local v19    # "uidStr":Ljava/lang/String;
    :cond_244
    const-string v21, "library"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2b6

    if-nez p2, :cond_2b6

    .line 264
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 265
    .local v9, "lname":Ljava/lang/String;
    const/16 v21, 0x0

    const-string v22, "file"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 266
    .local v8, "lfile":Ljava/lang/String;
    if-nez v9, :cond_28b

    .line 267
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<library> without name at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_286
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_ee

    .line 269
    :cond_28b
    if-nez v8, :cond_2aa

    .line 270
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<library> without file at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_286

    .line 274
    :cond_2aa
    move-object/from16 v0, p0

    iget-object v0, v0, mSharedLibraries:Landroid/util/ArrayMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_286

    .line 279
    .end local v8    # "lfile":Ljava/lang/String;
    .end local v9    # "lname":Ljava/lang/String;
    :cond_2b6
    const-string v21, "feature"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_32c

    .line 280
    const/16 v21, 0x0

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "fname":Ljava/lang/String;
    if-nez v4, :cond_2ef

    .line 282
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<feature> without name at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_2ea
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_ee

    .line 286
    :cond_2ef
    new-instance v3, Landroid/content/pm/FeatureInfo;

    invoke-direct {v3}, Landroid/content/pm/FeatureInfo;-><init>()V

    .line 287
    .local v3, "fi":Landroid/content/pm/FeatureInfo;
    iput-object v4, v3, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;
    :try_end_2f6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12e .. :try_end_2f6} :catch_33
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_2f6} :catch_a0
    .catchall {:try_start_12e .. :try_end_2f6} :catchall_127

    .line 289
    const/16 v21, 0x0

    :try_start_2f8
    const-string v22, "level"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 290
    .local v20, "versionCode":Ljava/lang/String;
    if-eqz v20, :cond_318

    .line 291
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_30c
    .catch Ljava/lang/NumberFormatException; {:try_start_2f8 .. :try_end_30c} :catch_31f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2f8 .. :try_end_30c} :catch_33
    .catch Ljava/io/IOException; {:try_start_2f8 .. :try_end_30c} :catch_a0
    .catchall {:try_start_2f8 .. :try_end_30c} :catchall_127

    .line 298
    .end local v20    # "versionCode":Ljava/lang/String;
    :goto_30c
    :try_start_30c
    move-object/from16 v0, p0

    iget-object v0, v0, mAvailableFeatures:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_317
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_30c .. :try_end_317} :catch_33
    .catch Ljava/io/IOException; {:try_start_30c .. :try_end_317} :catch_a0
    .catchall {:try_start_30c .. :try_end_317} :catchall_127

    goto :goto_2ea

    .line 293
    .restart local v20    # "versionCode":Ljava/lang/String;
    :cond_318
    const/16 v21, 0x1

    :try_start_31a
    move/from16 v0, v21

    iput v0, v3, Landroid/content/pm/FeatureInfo;->flags:I
    :try_end_31e
    .catch Ljava/lang/NumberFormatException; {:try_start_31a .. :try_end_31e} :catch_31f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31a .. :try_end_31e} :catch_33
    .catch Ljava/io/IOException; {:try_start_31a .. :try_end_31e} :catch_a0
    .catchall {:try_start_31a .. :try_end_31e} :catchall_127

    goto :goto_30c

    .line 295
    .end local v20    # "versionCode":Ljava/lang/String;
    :catch_31f
    move-exception v2

    .line 296
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_320
    const-string v21, "SystemConfig"

    const-string v22, "Got execption parsing error."

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30c

    .line 303
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "fi":Landroid/content/pm/FeatureInfo;
    .end local v4    # "fname":Ljava/lang/String;
    :cond_32c
    const-string v21, "allow-in-power-save"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_374

    .line 304
    const/16 v21, 0x0

    const-string/jumbo v22, "package"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 305
    .local v16, "pkgname":Ljava/lang/String;
    if-nez v16, :cond_366

    .line 306
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<allow-in-power-save> without package at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :goto_361
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_ee

    .line 309
    :cond_366
    move-object/from16 v0, p0

    iget-object v0, v0, mAllowInPowerSave:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_361

    .line 314
    .end local v16    # "pkgname":Ljava/lang/String;
    :cond_374
    const-string v21, "fixed-ime-app"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_3bc

    .line 315
    const/16 v21, 0x0

    const-string/jumbo v22, "package"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v11, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 316
    .restart local v16    # "pkgname":Ljava/lang/String;
    if-nez v16, :cond_3ae

    .line 317
    const-string v21, "SystemConfig"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "<fixed-ime-app> without package at "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v11}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :goto_3a9
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_ee

    .line 320
    :cond_3ae
    move-object/from16 v0, p0

    iget-object v0, v0, mFixedImeApps:Landroid/util/ArraySet;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_3a9

    .line 326
    .end local v16    # "pkgname":Ljava/lang/String;
    :cond_3bc
    invoke-static {v11}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3bf
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_320 .. :try_end_3bf} :catch_33
    .catch Ljava/io/IOException; {:try_start_320 .. :try_end_3bf} :catch_a0
    .catchall {:try_start_320 .. :try_end_3bf} :catchall_127

    goto/16 :goto_ee

    .line 338
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "type":I
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3c1
    move-exception v7

    .restart local v7    # "ie":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_44

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7    # "ie":Ljava/io/IOException;
    :catch_3c7
    move-exception v7

    .restart local v7    # "ie":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_12d
.end method


# virtual methods
.method public getAllowInPowerSave()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, mAllowInPowerSave:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getAvailableFeatures()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/FeatureInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, mAvailableFeatures:Ljava/util/HashMap;

    return-object v0
.end method

.method public getFixedImeApps()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, mFixedImeApps:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getGlobalGids()[I
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, mGlobalGids:[I

    return-object v0
.end method

.method public getPermissions()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/SystemConfig$PermissionEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, mPermissions:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSharedLibraries()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, mSharedLibraries:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getSystemPermissions()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, mSystemPermissions:Landroid/util/SparseArray;

    return-object v0
.end method

.method readPermission(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .registers 13
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x3

    .line 345
    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 347
    iget-object v6, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/SystemConfig$PermissionEntry;

    .line 348
    .local v3, "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    if-nez v3, :cond_19

    .line 349
    new-instance v3, Lcom/android/server/SystemConfig$PermissionEntry;

    .end local v3    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    invoke-direct {v3, p2}, Lcom/android/server/SystemConfig$PermissionEntry;-><init>(Ljava/lang/String;)V

    .line 350
    .restart local v3    # "perm":Lcom/android/server/SystemConfig$PermissionEntry;
    iget-object v6, p0, mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    :cond_19
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 355
    .local v2, "outerDepth":I
    :cond_1d
    :goto_1d
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_73

    if-ne v5, v9, :cond_2c

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_73

    .line 357
    :cond_2c
    if-eq v5, v9, :cond_1d

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1d

    .line 362
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 363
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "group"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_52

    .line 364
    const/4 v6, 0x0

    const-string v7, "gid"

    invoke-interface {p1, v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 365
    .local v1, "gidStr":Ljava/lang/String;
    if-eqz v1, :cond_56

    .line 366
    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v0

    .line 367
    .local v0, "gid":I
    iget-object v6, v3, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    invoke-static {v6, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    iput-object v6, v3, Lcom/android/server/SystemConfig$PermissionEntry;->gids:[I

    .line 373
    .end local v0    # "gid":I
    .end local v1    # "gidStr":Ljava/lang/String;
    :cond_52
    :goto_52
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1d

    .line 369
    .restart local v1    # "gidStr":Ljava/lang/String;
    :cond_56
    const-string v6, "SystemConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<group> without gid at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52

    .line 375
    .end local v1    # "gidStr":Ljava/lang/String;
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_73
    return-void
.end method

.method readPermissions(Ljava/io/File;Z)V
    .registers 11
    .param p1, "libraryDir"    # Ljava/io/File;
    .param p2, "onlyFeatures"    # Z

    .prologue
    .line 137
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 138
    :cond_c
    if-nez p2, :cond_2c

    .line 139
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", skipping"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_2c
    :goto_2c
    return-void

    .line 143
    :cond_2d
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_52

    .line 144
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Directory "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 149
    :cond_52
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, "arr$":[Ljava/io/File;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_58
    if-ge v2, v3, :cond_c9

    aget-object v1, v0, v2

    .line 151
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, "etc/permissions/platform.xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    .line 149
    :goto_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 155
    :cond_6b
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a0

    .line 156
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Non-xml file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " directory, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 159
    :cond_a0
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v5

    if-nez v5, :cond_c5

    .line 160
    const-string v5, "SystemConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Permissions library file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be read"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 164
    :cond_c5
    invoke-direct {p0, v1, p2}, readPermissionsFromXml(Ljava/io/File;Z)V

    goto :goto_68

    .line 168
    .end local v1    # "f":Ljava/io/File;
    :cond_c9
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v5

    const-string v6, "etc/permissions/platform.xml"

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    .local v4, "permFile":Ljava/io/File;
    invoke-direct {p0, v4, p2}, readPermissionsFromXml(Ljava/io/File;Z)V

    goto/16 :goto_2c
.end method
