.class Lcom/android/server/backup/BackupManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .registers 2

    .prologue
    .line 1732
    iput-object p1, p0, this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 32
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1734
    const-string v25, "BackupManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Received broadcast "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 1737
    .local v4, "action":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1738
    .local v20, "replacing":Z
    const/4 v5, 0x0

    .line 1739
    .local v5, "added":Z
    const/4 v8, 0x0

    .line 1740
    .local v8, "changed":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 1741
    .local v11, "extras":Landroid/os/Bundle;
    const/16 v18, 0x0

    .line 1742
    .local v18, "pkgList":[Ljava/lang/String;
    const-string v25, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_48

    const-string v25, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_48

    const-string v25, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_21a

    .line 1745
    :cond_48
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v24

    .line 1746
    .local v24, "uri":Landroid/net/Uri;
    if-nez v24, :cond_4f

    .line 1854
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_4e
    :goto_4e
    return-void

    .line 1749
    .restart local v24    # "uri":Landroid/net/Uri;
    :cond_4f
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v19

    .line 1750
    .local v19, "pkgName":Ljava/lang/String;
    if-eqz v19, :cond_61

    .line 1751
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .end local v18    # "pkgList":[Ljava/lang/String;
    const/16 v25, 0x0

    aput-object v19, v18, v25

    .line 1753
    .restart local v18    # "pkgList":[Ljava/lang/String;
    :cond_61
    const-string v25, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1756
    if-eqz v8, :cond_153

    .line 1762
    :try_start_6b
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_78} :catch_14d

    .line 1763
    :try_start_78
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 1764
    .local v9, "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v9, :cond_129

    .line 1765
    iget-object v0, v9, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    .line 1766
    .local v21, "svc":Landroid/content/pm/ServiceInfo;
    new-instance v22, Landroid/content/ComponentName;

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    .local v22, "svcName":Landroid/content/ComponentName;
    invoke-virtual/range {v22 .. v22}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v12

    .line 1769
    .local v12, "flatName":Ljava/lang/String;
    const-string v25, "BackupManagerService"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unbinding "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportNames:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    .end local v12    # "flatName":Ljava/lang/String;
    .end local v21    # "svc":Landroid/content/pm/ServiceInfo;
    .end local v22    # "svcName":Landroid/content/ComponentName;
    :cond_129
    monitor-exit v26
    :try_end_12a
    .catchall {:try_start_78 .. :try_end_12a} :catchall_150

    .line 1778
    :try_start_12a
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1779
    .local v6, "app":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V
    :try_end_14b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12a .. :try_end_14b} :catch_14d

    goto/16 :goto_4e

    .line 1780
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v9    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catch_14d
    move-exception v25

    goto/16 :goto_4e

    .line 1776
    :catchall_150
    move-exception v25

    :try_start_151
    monitor-exit v26
    :try_end_152
    .catchall {:try_start_151 .. :try_end_152} :catchall_150

    :try_start_152
    throw v25
    :try_end_153
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_152 .. :try_end_153} :catch_14d

    .line 1789
    :cond_153
    const-string v25, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1790
    const-string v25, "android.intent.extra.REPLACING"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v11, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 1799
    .end local v19    # "pkgName":Ljava/lang/String;
    .end local v24    # "uri":Landroid/net/Uri;
    :cond_167
    :goto_167
    if-eqz v18, :cond_4e

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    if-eqz v25, :cond_4e

    .line 1803
    const-string v25, "android.intent.extra.UID"

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v23

    .line 1804
    .local v23, "uid":I
    if-eqz v5, :cond_276

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1806
    if-eqz v20, :cond_198

    .line 1809
    :try_start_189
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 1811
    :cond_198
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->addPackageParticipantsLocked([Ljava/lang/String;)V

    .line 1812
    monitor-exit v26
    :try_end_1a6
    .catchall {:try_start_189 .. :try_end_1a6} :catchall_248

    .line 1814
    move-object/from16 v7, v18

    .local v7, "arr$":[Ljava/lang/String;
    array-length v14, v7

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1aa
    if-ge v13, v14, :cond_4e

    aget-object v15, v7, v13

    .line 1816
    .local v15, "packageName":Ljava/lang/String;
    :try_start_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->access$700(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1817
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 1818
    .local v16, "now":J
    invoke-static {v6}, Lcom/android/server/backup/BackupManagerService;->appGetsFullBackup(Landroid/content/pm/PackageInfo;)Z

    move-result v25

    if-eqz v25, :cond_1e2

    .line 1819
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-wide/from16 v1, v16

    invoke-virtual {v0, v15, v1, v2}, Lcom/android/server/backup/BackupManagerService;->enqueueFullBackup(Ljava/lang/String;J)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->scheduleNextFullBackupJob()V

    .line 1825
    :cond_1e2
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransports:Landroid/util/ArrayMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_1ef
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1ae .. :try_end_1ef} :catch_25a

    .line 1826
    :try_start_1ef
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mTransportConnections:Landroid/util/ArrayMap;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/backup/BackupManagerService$TransportConnection;

    .line 1827
    .restart local v9    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    if-eqz v9, :cond_24b

    .line 1831
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    iget-object v0, v9, Lcom/android/server/backup/BackupManagerService$TransportConnection;->mTransport:Landroid/content/pm/ServiceInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService;->bindTransport(Landroid/content/pm/ServiceInfo;)Z

    .line 1835
    :goto_216
    monitor-exit v26
    :try_end_217
    .catchall {:try_start_1ef .. :try_end_217} :catchall_257

    .line 1814
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v9    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .end local v16    # "now":J
    :goto_217
    add-int/lit8 v13, v13, 0x1

    goto :goto_1aa

    .line 1791
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v23    # "uid":I
    :cond_21a
    const-string v25, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_231

    .line 1792
    const/4 v5, 0x1

    .line 1793
    const-string v25, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_167

    .line 1794
    :cond_231
    const-string v25, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_167

    .line 1795
    const/4 v5, 0x0

    .line 1796
    const-string v25, "android.intent.extra.changed_package_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_167

    .line 1812
    .restart local v23    # "uid":I
    :catchall_248
    move-exception v25

    :try_start_249
    monitor-exit v26
    :try_end_24a
    .catchall {:try_start_249 .. :try_end_24a} :catchall_248

    throw v25

    .line 1833
    .restart local v6    # "app":Landroid/content/pm/PackageInfo;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v9    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    .restart local v15    # "packageName":Ljava/lang/String;
    .restart local v16    # "now":J
    :cond_24b
    :try_start_24b
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Lcom/android/server/backup/BackupManagerService;->checkForTransportAndBind(Landroid/content/pm/PackageInfo;)V

    goto :goto_216

    .line 1835
    .end local v9    # "conn":Lcom/android/server/backup/BackupManagerService$TransportConnection;
    :catchall_257
    move-exception v25

    monitor-exit v26
    :try_end_259
    .catchall {:try_start_24b .. :try_end_259} :catchall_257

    :try_start_259
    throw v25
    :try_end_25a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_259 .. :try_end_25a} :catch_25a

    .line 1837
    .end local v6    # "app":Landroid/content/pm/PackageInfo;
    .end local v16    # "now":J
    :catch_25a
    move-exception v10

    .line 1840
    .local v10, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v25, "BackupManagerService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Can\'t resolve new app "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_217

    .line 1846
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "packageName":Ljava/lang/String;
    :cond_276
    if-nez v20, :cond_4e

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupParticipants:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 1850
    :try_start_285
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->removePackageParticipantsLocked([Ljava/lang/String;I)V

    .line 1851
    monitor-exit v26

    goto/16 :goto_4e

    :catchall_297
    move-exception v25

    monitor-exit v26
    :try_end_299
    .catchall {:try_start_285 .. :try_end_299} :catchall_297

    throw v25
.end method
