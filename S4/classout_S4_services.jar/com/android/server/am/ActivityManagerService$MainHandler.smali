.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1630
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1631
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1632
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 78
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1636
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_c58

    .line 2501
    :cond_7
    :goto_7
    return-void

    .line 1638
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/util/HashMap;

    .line 1639
    .local v39, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "anr_show_background"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6e

    const/16 v69, 0x1

    .line 1641
    .local v69, "showBackground":Z
    :goto_25
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1642
    :try_start_2a
    const-string v4, "app"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    .line 1643
    .local v58, "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v4, "result"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/android/server/am/AppErrorResult;

    .line 1644
    .local v65, "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v58, :cond_71

    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_71

    .line 1645
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    if-eqz v65, :cond_69

    .line 1647
    const/4 v4, 0x0

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1649
    :cond_69
    monitor-exit v5

    goto :goto_7

    .line 1711
    .end local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v65    # "res":Lcom/android/server/am/AppErrorResult;
    :catchall_6b
    move-exception v4

    monitor-exit v5
    :try_end_6d
    .catchall {:try_start_2a .. :try_end_6d} :catchall_6b

    throw v4

    .line 1639
    .end local v69    # "showBackground":Z
    :cond_6e
    const/16 v69, 0x0

    goto :goto_25

    .line 1651
    .restart local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v65    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v69    # "showBackground":Z
    :cond_71
    :try_start_71
    move-object/from16 v0, v58

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v6, 0x2710

    if-lt v4, v6, :cond_ac

    move-object/from16 v0, v58

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v6, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v6, :cond_ac

    const/16 v47, 0x1

    .line 1654
    .local v47, "isBackground":Z
    :goto_87
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v36, v0

    .local v36, "arr$":[I
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v49, v0

    .local v49, "len$":I
    const/16 v45, 0x0

    .local v45, "i$":I
    :goto_96
    move/from16 v0, v45

    move/from16 v1, v49

    if-ge v0, v1, :cond_b1

    aget v75, v36, v45

    .line 1655
    .local v75, "userId":I
    move-object/from16 v0, v58

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v75

    if-eq v4, v0, :cond_af

    const/4 v4, 0x1

    :goto_a7
    and-int v47, v47, v4

    .line 1654
    add-int/lit8 v45, v45, 0x1

    goto :goto_96

    .line 1651
    .end local v36    # "arr$":[I
    .end local v45    # "i$":I
    .end local v47    # "isBackground":Z
    .end local v49    # "len$":I
    .end local v75    # "userId":I
    :cond_ac
    const/16 v47, 0x0

    goto :goto_87

    .line 1655
    .restart local v36    # "arr$":[I
    .restart local v45    # "i$":I
    .restart local v47    # "isBackground":Z
    .restart local v49    # "len$":I
    .restart local v75    # "userId":I
    :cond_af
    const/4 v4, 0x0

    goto :goto_a7

    .line 1657
    .end local v75    # "userId":I
    :cond_b1
    if-eqz v47, :cond_e0

    if-nez v69, :cond_e0

    .line 1658
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping crash dialog of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ": background"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    if-eqz v65, :cond_dd

    .line 1660
    const/4 v4, 0x0

    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 1662
    :cond_dd
    monitor-exit v5

    goto/16 :goto_7

    .line 1664
    :cond_e0
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_14b

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-nez v4, :cond_14b

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_14b

    .line 1665
    new-instance v8, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v65

    move-object/from16 v1, v58

    invoke-direct {v8, v4, v6, v0, v1}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1669
    .local v8, "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_129

    .line 1671
    new-instance v4, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1686
    new-instance v4, Lcom/android/server/am/ActivityManagerService$MainHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$2;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1696
    :cond_129
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1697
    move-object/from16 v0, v58

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1700
    const/16 v4, 0x3e8

    move-object/from16 v0, v58

    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v4, v6, :cond_141

    .line 1701
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->forceResetEasyOneHandService()V

    .line 1711
    .end local v8    # "d":Landroid/app/Dialog;
    :cond_141
    :goto_141
    monitor-exit v5
    :try_end_142
    .catchall {:try_start_71 .. :try_end_142} :catchall_6b

    .line 1713
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1707
    :cond_14b
    if-eqz v65, :cond_141

    .line 1708
    const/4 v4, 0x0

    :try_start_14e
    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_153
    .catchall {:try_start_14e .. :try_end_153} :catchall_6b

    goto :goto_141

    .line 1716
    .end local v36    # "arr$":[I
    .end local v39    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v45    # "i$":I
    .end local v47    # "isBackground":Z
    .end local v49    # "len$":I
    .end local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v65    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v69    # "showBackground":Z
    :sswitch_154
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 1717
    :try_start_15b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/util/HashMap;

    .line 1718
    .restart local v39    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "app"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    .line 1719
    .restart local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v58, :cond_195

    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_195

    .line 1720
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App already has anr dialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v58

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1721
    monitor-exit v20

    goto/16 :goto_7

    .line 1772
    .end local v39    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_192
    move-exception v4

    monitor-exit v20
    :try_end_194
    .catchall {:try_start_15b .. :try_end_194} :catchall_192

    throw v4

    .line 1724
    .restart local v39    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_195
    :try_start_195
    new-instance v7, Landroid/content/Intent;

    const-string v4, "android.intent.action.ANR"

    invoke-direct {v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1725
    .local v7, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_1a9

    .line 1726
    const/high16 v4, 0x50000000

    invoke-virtual {v7, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1729
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    const/16 v19, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I
    invoke-static/range {v4 .. v19}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZIII)I

    .line 1733
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_21b

    .line 1734
    new-instance v8, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v9, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_219

    const/4 v13, 0x1

    :goto_1e9
    move-object/from16 v11, v58

    invoke-direct/range {v8 .. v13}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    .line 1739
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v4

    if-eqz v4, :cond_208

    .line 1741
    new-instance v4, Lcom/android/server/am/ActivityManagerService$MainHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$3;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1756
    new-instance v4, Lcom/android/server/am/ActivityManagerService$MainHandler$4;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$4;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;)V

    invoke-virtual {v8, v4}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1766
    :cond_208
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1767
    move-object/from16 v0, v58

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1772
    .end local v8    # "d":Landroid/app/Dialog;
    :goto_20f
    monitor-exit v20
    :try_end_210
    .catchall {:try_start_195 .. :try_end_210} :catchall_192

    .line 1774
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1734
    :cond_219
    const/4 v13, 0x0

    goto :goto_1e9

    .line 1770
    :cond_21b
    :try_start_21b
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    move-object/from16 v0, v58

    invoke-virtual {v4, v0, v5}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_225
    .catchall {:try_start_21b .. :try_end_225} :catchall_192

    goto :goto_20f

    .line 1777
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v39    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    :sswitch_226
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/util/HashMap;

    .line 1778
    .restart local v39    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1779
    :try_start_233
    const-string v4, "app"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Lcom/android/server/am/ProcessRecord;

    .line 1780
    .restart local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v58, :cond_24c

    .line 1781
    const-string v4, "ActivityManager"

    const-string v6, "App not found when showing strict mode dialog."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    monitor-exit v5

    goto/16 :goto_7

    .line 1799
    .end local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_249
    move-exception v4

    monitor-exit v5
    :try_end_24b
    .catchall {:try_start_233 .. :try_end_24b} :catchall_249

    throw v4

    .line 1784
    .restart local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_24c
    :try_start_24c
    move-object/from16 v0, v58

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_26f

    .line 1785
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has strict mode dialog: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v58

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    monitor-exit v5

    goto/16 :goto_7

    .line 1788
    :cond_26f
    const-string/jumbo v4, "result"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/android/server/am/AppErrorResult;

    .line 1789
    .restart local v65    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_2ba

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-nez v4, :cond_2ba

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v4, :cond_2ba

    .line 1790
    new-instance v8, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v65

    move-object/from16 v1, v58

    invoke-direct {v8, v4, v6, v0, v1}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1792
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1793
    move-object/from16 v0, v58

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1799
    .end local v8    # "d":Landroid/app/Dialog;
    :goto_2b0
    monitor-exit v5
    :try_end_2b1
    .catchall {:try_start_24c .. :try_end_2b1} :catchall_249

    .line 1800
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1797
    :cond_2ba
    const/4 v4, 0x0

    :try_start_2bb
    move-object/from16 v0, v65

    invoke-virtual {v0, v4}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2c0
    .catchall {:try_start_2bb .. :try_end_2c0} :catchall_249

    goto :goto_2b0

    .line 1803
    .end local v39    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v58    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v65    # "res":Lcom/android/server/am/AppErrorResult;
    :sswitch_2c1
    new-instance v8, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "msg"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v8, v4, v5}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1805
    .restart local v8    # "d":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1806
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_7

    .line 1809
    .end local v8    # "d":Landroid/app/Dialog;
    :sswitch_2e2
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v66

    .line 1810
    .local v66, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/res/Configuration;

    move-object/from16 v0, v66

    invoke-static {v0, v4}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_7

    .line 1813
    .end local v66    # "resolver":Landroid/content/ContentResolver;
    :sswitch_2f9
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1814
    :try_start_2fe
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1815
    monitor-exit v5

    goto/16 :goto_7

    :catchall_308
    move-exception v4

    monitor-exit v5
    :try_end_30a
    .catchall {:try_start_2fe .. :try_end_30a} :catchall_308

    throw v4

    .line 1820
    :sswitch_30b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    move-object/from16 v56, v4

    check-cast v56, Landroid/util/Pair;

    .line 1821
    .local v56, "obj":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;>;"
    move-object/from16 v0, v56

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Lcom/android/server/am/ActivityRecord;

    .line 1822
    .local v62, "r":Lcom/android/server/am/ActivityRecord;
    monitor-enter p0

    .line 1823
    :try_start_31e
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v4, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    move-object/from16 v0, v62

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    move-object/from16 v0, v56

    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v9, 0x1

    invoke-virtual {v5, v6, v4, v9}, Lcom/android/server/am/ActivityStack;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;Z)V

    .line 1824
    monitor-exit p0

    goto/16 :goto_7

    :catchall_335
    move-exception v4

    monitor-exit p0
    :try_end_337
    .catchall {:try_start_31e .. :try_end_337} :catchall_335

    throw v4

    .line 1830
    .end local v56    # "obj":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ActivityRecord;Lcom/samsung/android/multiwindow/MultiWindowStyle;>;"
    .end local v62    # "r":Lcom/android/server/am/ActivityRecord;
    :sswitch_338
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1831
    :try_start_33d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/server/am/ProcessRecord;

    .line 1832
    .local v34, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_374

    .line 1833
    move-object/from16 v0, v34

    iget-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v4, :cond_36e

    .line 1834
    new-instance v8, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v34

    invoke-direct {v8, v4, v6, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1837
    .restart local v8    # "d":Landroid/app/Dialog;
    move-object/from16 v0, v34

    iput-object v8, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1838
    const/4 v4, 0x1

    move-object/from16 v0, v34

    iput-boolean v4, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1839
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 1847
    .end local v8    # "d":Landroid/app/Dialog;
    :cond_36e
    :goto_36e
    monitor-exit v5

    goto/16 :goto_7

    .end local v34    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_371
    move-exception v4

    monitor-exit v5
    :try_end_373
    .catchall {:try_start_33d .. :try_end_373} :catchall_371

    throw v4

    .line 1842
    .restart local v34    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_374
    :try_start_374
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v4, :cond_36e

    .line 1843
    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 1844
    const/4 v4, 0x0

    move-object/from16 v0, v34

    iput-object v4, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_386
    .catchall {:try_start_374 .. :try_end_386} :catchall_371

    goto :goto_36e

    .line 1850
    .end local v34    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_387
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_3bb

    .line 1851
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1852
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, obtainMessage(I)Landroid/os/Message;

    move-result-object v53

    .line 1853
    .local v53, "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v53

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1854
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v20, 0x7530

    move-object/from16 v0, v53

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1857
    .end local v53    # "nmsg":Landroid/os/Message;
    :cond_3bb
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_7

    .line 1860
    :sswitch_3cc
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1861
    :try_start_3d1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .local v44, "i":I
    :goto_3dd
    if-ltz v44, :cond_420

    .line 1862
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/am/ProcessRecord;

    .line 1863
    .local v62, "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_3f1
    .catchall {:try_start_3d1 .. :try_end_3f1} :catchall_41d

    if-eqz v4, :cond_3fa

    .line 1865
    :try_start_3f3
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_3fa
    .catch Landroid/os/RemoteException; {:try_start_3f3 .. :try_end_3fa} :catch_3fd
    .catchall {:try_start_3f3 .. :try_end_3fa} :catchall_41d

    .line 1861
    :cond_3fa
    :goto_3fa
    add-int/lit8 v44, v44, -0x1

    goto :goto_3dd

    .line 1866
    :catch_3fd
    move-exception v43

    .line 1867
    .local v43, "ex":Landroid/os/RemoteException;
    :try_start_3fe
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update time zone for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v62

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3fa

    .line 1871
    .end local v43    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_41d
    move-exception v4

    monitor-exit v5
    :try_end_41f
    .catchall {:try_start_3fe .. :try_end_41f} :catchall_41d

    throw v4

    .restart local v44    # "i":I
    :cond_420
    :try_start_420
    monitor-exit v5
    :try_end_421
    .catchall {:try_start_420 .. :try_end_421} :catchall_41d

    goto/16 :goto_7

    .line 1874
    .end local v44    # "i":I
    :sswitch_423
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1875
    :try_start_428
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_434
    if-ltz v44, :cond_477

    .line 1876
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/am/ProcessRecord;

    .line 1877
    .restart local v62    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_448
    .catchall {:try_start_428 .. :try_end_448} :catchall_474

    if-eqz v4, :cond_451

    .line 1879
    :try_start_44a
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_451
    .catch Landroid/os/RemoteException; {:try_start_44a .. :try_end_451} :catch_454
    .catchall {:try_start_44a .. :try_end_451} :catchall_474

    .line 1875
    :cond_451
    :goto_451
    add-int/lit8 v44, v44, -0x1

    goto :goto_434

    .line 1880
    :catch_454
    move-exception v43

    .line 1881
    .restart local v43    # "ex":Landroid/os/RemoteException;
    :try_start_455
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clear dns cache for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v62

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_451

    .line 1885
    .end local v43    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_474
    move-exception v4

    monitor-exit v5
    :try_end_476
    .catchall {:try_start_455 .. :try_end_476} :catchall_474

    throw v4

    .restart local v44    # "i":I
    :cond_477
    :try_start_477
    monitor-exit v5
    :try_end_478
    .catchall {:try_start_477 .. :try_end_478} :catchall_474

    goto/16 :goto_7

    .line 1888
    .end local v44    # "i":I
    :sswitch_47a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v61, v0

    check-cast v61, Landroid/net/ProxyInfo;

    .line 1889
    .local v61, "proxy":Landroid/net/ProxyInfo;
    const-string v10, ""

    .line 1890
    .local v10, "host":Ljava/lang/String;
    const-string v11, ""

    .line 1892
    .local v11, "port":Ljava/lang/String;
    const-string v12, ""

    .line 1893
    .local v12, "username":Ljava/lang/String;
    const-string v13, ""

    .line 1895
    .local v13, "password":Ljava/lang/String;
    const-string v14, ""

    .line 1896
    .local v14, "exclList":Ljava/lang/String;
    sget-object v15, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 1897
    .local v15, "pacFileUrl":Landroid/net/Uri;
    if-eqz v61, :cond_4ac

    .line 1898
    invoke-virtual/range {v61 .. v61}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v10

    .line 1899
    invoke-virtual/range {v61 .. v61}, Landroid/net/ProxyInfo;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 1901
    invoke-virtual/range {v61 .. v61}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v12

    .line 1902
    invoke-virtual/range {v61 .. v61}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v13

    .line 1904
    invoke-virtual/range {v61 .. v61}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v14

    .line 1905
    invoke-virtual/range {v61 .. v61}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v15

    .line 1907
    :cond_4ac
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1908
    :try_start_4b1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_4bd
    if-ltz v44, :cond_512

    .line 1909
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/am/ProcessRecord;

    .line 1910
    .restart local v62    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_4d1
    .catchall {:try_start_4b1 .. :try_end_4d1} :catchall_50f

    if-eqz v4, :cond_4e4

    .line 1913
    if-eqz v12, :cond_4e7

    :try_start_4d5
    const-string v4, ""

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e7

    .line 1914
    move-object/from16 v0, v62

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface/range {v9 .. v15}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 1908
    :cond_4e4
    :goto_4e4
    add-int/lit8 v44, v44, -0x1

    goto :goto_4bd

    .line 1916
    :cond_4e7
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4, v10, v11, v14, v15}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_4ee
    .catch Landroid/os/RemoteException; {:try_start_4d5 .. :try_end_4ee} :catch_4ef
    .catchall {:try_start_4d5 .. :try_end_4ee} :catchall_50f

    goto :goto_4e4

    .line 1919
    :catch_4ef
    move-exception v43

    .line 1920
    .restart local v43    # "ex":Landroid/os/RemoteException;
    :try_start_4f0
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update http proxy for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v62

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e4

    .line 1925
    .end local v43    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_50f
    move-exception v4

    monitor-exit v5
    :try_end_511
    .catchall {:try_start_4f0 .. :try_end_511} :catchall_50f

    throw v4

    .restart local v44    # "i":I
    :cond_512
    :try_start_512
    monitor-exit v5
    :try_end_513
    .catchall {:try_start_512 .. :try_end_513} :catchall_50f

    goto/16 :goto_7

    .line 1928
    .end local v10    # "host":Ljava/lang/String;
    .end local v11    # "port":Ljava/lang/String;
    .end local v12    # "username":Ljava/lang/String;
    .end local v13    # "password":Ljava/lang/String;
    .end local v14    # "exclList":Ljava/lang/String;
    .end local v15    # "pacFileUrl":Landroid/net/Uri;
    .end local v44    # "i":I
    .end local v61    # "proxy":Landroid/net/ProxyInfo;
    :sswitch_515
    const-string v73, "System UIDs Inconsistent"

    .line 1929
    .local v73, "title":Ljava/lang/String;
    const-string v71, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    .line 1931
    .local v71, "text":Ljava/lang/String;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v73

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1932
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1934
    new-instance v8, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v4}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1935
    .local v8, "d":Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7da

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 1936
    const/4 v4, 0x0

    invoke-virtual {v8, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1937
    move-object/from16 v0, v73

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1938
    move-object/from16 v0, v71

    invoke-virtual {v8, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1939
    const/4 v4, -0x1

    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v9, 0xf

    invoke-virtual {v6, v9}, obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v8, v4, v5, v6}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1941
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v8, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1942
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_7

    .line 1946
    .end local v8    # "d":Landroid/app/AlertDialog;
    .end local v71    # "text":Ljava/lang/String;
    .end local v73    # "title":Ljava/lang/String;
    :sswitch_582
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v4, :cond_7

    .line 1947
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 1948
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_7

    .line 1952
    :sswitch_59c
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v4, :cond_5d0

    .line 1953
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1954
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, obtainMessage(I)Landroid/os/Message;

    move-result-object v53

    .line 1955
    .restart local v53    # "nmsg":Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v53

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1956
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v20, 0x2710

    move-object/from16 v0, v53

    move-wide/from16 v1, v20

    invoke-virtual {v4, v0, v1, v2}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1959
    .end local v53    # "nmsg":Landroid/os/Message;
    :cond_5d0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/server/am/ProcessRecord;

    .line 1960
    .restart local v34    # "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1961
    :try_start_5dd
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v34

    # invokes: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v4, v0}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1962
    monitor-exit v5

    goto/16 :goto_7

    :catchall_5e9
    move-exception v4

    monitor-exit v5
    :try_end_5eb
    .catchall {:try_start_5dd .. :try_end_5eb} :catchall_5e9

    throw v4

    .line 1965
    .end local v34    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_5ec
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1966
    :try_start_5f1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStackSupervisor;->doPendingActivityLaunchesLocked(Z)V

    .line 1967
    monitor-exit v5

    goto/16 :goto_7

    :catchall_5fe
    move-exception v4

    monitor-exit v5
    :try_end_600
    .catchall {:try_start_5f1 .. :try_end_600} :catchall_5fe

    throw v4

    .line 1970
    :sswitch_601
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 1971
    :try_start_606
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v18, v0

    .line 1972
    .local v18, "appid":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_648

    const/16 v19, 0x1

    .line 1973
    .local v19, "restart":Z
    :goto_615
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/Bundle;

    .line 1974
    .local v37, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1975
    .local v17, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1976
    .local v25, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v16, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    # invokes: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z
    invoke-static/range {v16 .. v25}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1978
    monitor-exit v5

    goto/16 :goto_7

    .end local v17    # "pkg":Ljava/lang/String;
    .end local v18    # "appid":I
    .end local v19    # "restart":Z
    .end local v25    # "reason":Ljava/lang/String;
    .end local v37    # "bundle":Landroid/os/Bundle;
    :catchall_645
    move-exception v4

    monitor-exit v5
    :try_end_647
    .catchall {:try_start_606 .. :try_end_647} :catchall_645

    throw v4

    .line 1972
    .restart local v18    # "appid":I
    :cond_648
    const/16 v19, 0x0

    goto :goto_615

    .line 1981
    .end local v18    # "appid":I
    :sswitch_64b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v4}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_7

    .line 1984
    :sswitch_656
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v46

    .line 1985
    .local v46, "inm":Landroid/app/INotificationManager;
    if-eqz v46, :cond_7

    .line 1989
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Lcom/android/server/am/ActivityRecord;

    .line 1990
    .local v67, "root":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v59, v0

    .line 1991
    .local v59, "process":Lcom/android/server/am/ProcessRecord;
    if-eqz v59, :cond_7

    .line 1996
    :try_start_66c
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v59

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v38

    .line 1997
    .local v38, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104049a

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    invoke-virtual/range {v38 .. v38}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v16

    aput-object v16, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v71

    .line 1999
    .restart local v71    # "text":Ljava/lang/String;
    new-instance v54, Landroid/app/Notification;

    invoke-direct/range {v54 .. v54}, Landroid/app/Notification;-><init>()V

    .line 2000
    .local v54, "notification":Landroid/app/Notification;
    const v4, 0x1080878

    move-object/from16 v0, v54

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 2001
    const-wide/16 v4, 0x0

    move-object/from16 v0, v54

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    .line 2002
    const/4 v4, 0x2

    move-object/from16 v0, v54

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 2003
    move-object/from16 v0, v71

    move-object/from16 v1, v54

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2004
    const/4 v4, 0x0

    move-object/from16 v0, v54

    iput v4, v0, Landroid/app/Notification;->defaults:I

    .line 2005
    const/4 v4, 0x0

    move-object/from16 v0, v54

    iput-object v4, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 2006
    const/4 v4, 0x0

    move-object/from16 v0, v54

    iput-object v4, v0, Landroid/app/Notification;->vibrate:[J

    .line 2007
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060058

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v54

    iput v4, v0, Landroid/app/Notification;->color:I

    .line 2009
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x104049b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v28, v0

    const/high16 v29, 0x10000000

    const/16 v30, 0x0

    new-instance v31, Landroid/os/UserHandle;

    move-object/from16 v0, v67

    iget v5, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static/range {v26 .. v31}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    move-object/from16 v0, v54

    move-object/from16 v1, v38

    move-object/from16 v2, v71

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_71a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_66c .. :try_end_71a} :catch_743

    .line 2016
    const/4 v4, 0x1

    :try_start_71b
    new-array v0, v4, [I

    move-object/from16 v32, v0

    .line 2017
    .local v32, "outId":[I
    const-string v27, "android"

    const-string v28, "android"

    const/16 v29, 0x0

    const v30, 0x104049a

    move-object/from16 v0, v67

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->userId:I

    move/from16 v33, v0

    move-object/from16 v26, v46

    move-object/from16 v31, v54

    invoke-interface/range {v26 .. v33}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;[II)V
    :try_end_735
    .catch Ljava/lang/RuntimeException; {:try_start_71b .. :try_end_735} :catch_737
    .catch Landroid/os/RemoteException; {:try_start_71b .. :try_end_735} :catch_c54
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_71b .. :try_end_735} :catch_743

    goto/16 :goto_7

    .line 2020
    .end local v32    # "outId":[I
    :catch_737
    move-exception v42

    .line 2021
    .local v42, "e":Ljava/lang/RuntimeException;
    :try_start_738
    const-string v4, "ActivityManager"

    const-string v5, "Error showing notification for heavy-weight app"

    move-object/from16 v0, v42

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_741
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_738 .. :try_end_741} :catch_743

    goto/16 :goto_7

    .line 2025
    .end local v38    # "context":Landroid/content/Context;
    .end local v42    # "e":Ljava/lang/RuntimeException;
    .end local v54    # "notification":Landroid/app/Notification;
    .end local v71    # "text":Ljava/lang/String;
    :catch_743
    move-exception v42

    .line 2026
    .local v42, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ActivityManager"

    const-string v5, "Unable to create context for heavy notification"

    move-object/from16 v0, v42

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2030
    .end local v42    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v46    # "inm":Landroid/app/INotificationManager;
    .end local v59    # "process":Lcom/android/server/am/ProcessRecord;
    .end local v67    # "root":Lcom/android/server/am/ActivityRecord;
    :sswitch_74f
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v46

    .line 2031
    .restart local v46    # "inm":Landroid/app/INotificationManager;
    if-eqz v46, :cond_7

    .line 2035
    :try_start_755
    const-string v4, "android"

    const/4 v5, 0x0

    const v6, 0x104049a

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, v46

    invoke-interface {v0, v4, v5, v6, v9}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_764
    .catch Ljava/lang/RuntimeException; {:try_start_755 .. :try_end_764} :catch_766
    .catch Landroid/os/RemoteException; {:try_start_755 .. :try_end_764} :catch_c51

    goto/16 :goto_7

    .line 2037
    :catch_766
    move-exception v42

    .line 2038
    .local v42, "e":Ljava/lang/RuntimeException;
    const-string v4, "ActivityManager"

    const-string v5, "Error canceling notification for service"

    move-object/from16 v0, v42

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2044
    .end local v42    # "e":Ljava/lang/RuntimeException;
    .end local v46    # "inm":Landroid/app/INotificationManager;
    :sswitch_772
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2045
    :try_start_777
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 2046
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, removeMessages(I)V

    .line 2047
    const/16 v4, 0x1b

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, obtainMessage(I)Landroid/os/Message;

    move-result-object v53

    .line 2048
    .restart local v53    # "nmsg":Landroid/os/Message;
    const-wide/32 v20, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v53

    move-wide/from16 v2, v20

    invoke-virtual {v0, v1, v2, v3}, sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2049
    monitor-exit v5

    goto/16 :goto_7

    .end local v53    # "nmsg":Landroid/os/Message;
    :catchall_79d
    move-exception v4

    monitor-exit v5
    :try_end_79f
    .catchall {:try_start_777 .. :try_end_79f} :catchall_79d

    throw v4

    .line 2053
    :sswitch_7a0
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v6, v9, v0}, Lcom/android/server/am/ActivityManagerService;->setActivitySwitchBooster(ZZZLjava/lang/String;)V

    goto/16 :goto_7

    .line 2057
    :sswitch_7b0
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2058
    :try_start_7b5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/server/am/ActivityRecord;

    .line 2059
    .local v35, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v4, :cond_7f3

    .line 2060
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v4, v4, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v35

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7e3

    .line 2062
    monitor-exit v5

    goto/16 :goto_7

    .line 2081
    .end local v35    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_7e0
    move-exception v4

    monitor-exit v5
    :try_end_7e2
    .catchall {:try_start_7b5 .. :try_end_7e2} :catchall_7e0

    throw v4

    .line 2064
    .restart local v35    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_7e3
    :try_start_7e3
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v4}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 2065
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 2067
    :cond_7f3
    if-eqz v35, :cond_7f5

    .line 2081
    :cond_7f5
    monitor-exit v5
    :try_end_7f6
    .catchall {:try_start_7e3 .. :try_end_7f6} :catchall_7e0

    goto/16 :goto_7

    .line 2085
    .end local v35    # "ar":Lcom/android/server/am/ActivityRecord;
    :sswitch_7f8
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 2089
    :sswitch_801
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v57, v0

    .line 2090
    .local v57, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v74, v0

    .line 2091
    .local v74, "uid":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v57

    move/from16 v1, v74

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v4, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_7

    .line 2095
    .end local v57    # "pid":I
    .end local v74    # "uid":I
    :sswitch_81a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/util/ArrayList;

    .line 2096
    .local v50, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v72, Lcom/android/server/am/ActivityManagerService$MainHandler$5;

    move-object/from16 v0, v72

    move-object/from16 v1, p0

    move-object/from16 v2, v50

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler$5;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 2286
    .local v72, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v72 .. v72}, Ljava/lang/Thread;->start()V

    goto/16 :goto_7

    .line 2290
    .end local v50    # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v72    # "thread":Ljava/lang/Thread;
    :sswitch_832
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityManagerService;->showUserSwitchDialog(ILjava/lang/String;)V
    invoke-static {v5, v6, v4}, Lcom/android/server/am/ActivityManagerService;->access$700(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    goto/16 :goto_7

    .line 2294
    :sswitch_845
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->dispatchUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 2299
    :sswitch_85c
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040b13

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 2308
    :sswitch_87d
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->continueUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 2312
    :sswitch_894
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/UserStartedState;

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v4, v6, v9}, Lcom/android/server/am/ActivityManagerService;->timeoutUserSwitch(Lcom/android/server/am/UserStartedState;II)V

    goto/16 :goto_7

    .line 2316
    :sswitch_8ab
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_8ce

    const/16 v52, 0x1

    .line 2317
    .local v52, "nextState":Z
    :goto_8b3
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v4

    move/from16 v0, v52

    if-eq v4, v0, :cond_7

    .line 2322
    if-eqz v52, :cond_8d1

    .line 2323
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->acquire()V

    goto/16 :goto_7

    .line 2316
    .end local v52    # "nextState":Z
    :cond_8ce
    const/16 v52, 0x0

    goto :goto_8b3

    .line 2325
    .restart local v52    # "nextState":Z
    :cond_8d1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4}, Landroid/os/UpdateLock;->release()V

    goto/16 :goto_7

    .line 2331
    .end local v52    # "nextState":Z
    :sswitch_8dc
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->writeGrantedUriPermissions()V
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_7

    .line 2335
    :sswitch_8e5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/android/server/am/ActivityManagerService;->requestPssAllProcsLocked(JZZ)V

    goto/16 :goto_7

    .line 2339
    :sswitch_8f6
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2340
    :try_start_8fb
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->startProfilesLocked()V

    .line 2341
    monitor-exit v5

    goto/16 :goto_7

    :catchall_905
    move-exception v4

    monitor-exit v5
    :try_end_907
    .catchall {:try_start_8fb .. :try_end_907} :catchall_905

    throw v4

    .line 2345
    :sswitch_908
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2346
    :try_start_90d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v44, v4, -0x1

    .restart local v44    # "i":I
    :goto_919
    if-ltz v44, :cond_965

    .line 2347
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/am/ProcessRecord;

    .line 2348
    .restart local v62    # "r":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_92d
    .catchall {:try_start_90d .. :try_end_92d} :catchall_962

    if-eqz v4, :cond_93d

    .line 2350
    :try_start_92f
    move-object/from16 v0, v62

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-nez v4, :cond_940

    const/4 v4, 0x0

    :goto_93a
    invoke-interface {v6, v4}, Landroid/app/IApplicationThread;->updateTimePrefs(Z)V
    :try_end_93d
    .catch Landroid/os/RemoteException; {:try_start_92f .. :try_end_93d} :catch_942
    .catchall {:try_start_92f .. :try_end_93d} :catchall_962

    .line 2346
    :cond_93d
    :goto_93d
    add-int/lit8 v44, v44, -0x1

    goto :goto_919

    .line 2350
    :cond_940
    const/4 v4, 0x1

    goto :goto_93a

    .line 2351
    :catch_942
    move-exception v43

    .line 2352
    .restart local v43    # "ex":Landroid/os/RemoteException;
    :try_start_943
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to update preferences for: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v62

    iget-object v9, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93d

    .line 2356
    .end local v43    # "ex":Landroid/os/RemoteException;
    .end local v44    # "i":I
    .end local v62    # "r":Lcom/android/server/am/ProcessRecord;
    :catchall_962
    move-exception v4

    monitor-exit v5
    :try_end_964
    .catchall {:try_start_943 .. :try_end_964} :catchall_962

    throw v4

    .restart local v44    # "i":I
    :cond_965
    :try_start_965
    monitor-exit v5
    :try_end_966
    .catchall {:try_start_965 .. :try_end_966} :catchall_962

    goto/16 :goto_7

    .line 2362
    .end local v44    # "i":I
    :sswitch_968
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mOverheatTextId:I
    invoke-static {v6}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_7

    .line 2369
    :sswitch_98e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v60, v0

    .line 2370
    .local v60, "processId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v70, v0

    .line 2371
    .local v70, "stopReason":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move/from16 v0, v60

    move/from16 v1, v70

    invoke-static {v5, v4, v0, v1}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStop(Landroid/content/Context;Ljava/lang/String;II)V

    goto/16 :goto_7

    .line 2378
    .end local v60    # "processId":I
    .end local v70    # "stopReason":I
    :sswitch_9af
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v5, 0x8007

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2380
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startUser(I)V

    goto/16 :goto_7

    .line 2384
    :sswitch_9d6
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const/16 v5, 0x4008

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2387
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    const v5, 0x8008

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5, v6, v9}, Lcom/android/server/am/BatteryStatsService;->noteEvent(ILjava/lang/String;I)V

    .line 2390
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->switchUser(I)V

    .line 2391
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mLockToAppRequest:Lcom/android/server/am/LockToAppRequestDialog;
    invoke-static {v4}, Lcom/android/server/am/ActivityManagerService;->access$1000(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/LockToAppRequestDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/LockToAppRequestDialog;->clearPrompt()V

    goto/16 :goto_7

    .line 2395
    :sswitch_a1f
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2396
    :try_start_a24
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v4}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v62

    .line 2397
    .local v62, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v62, :cond_a4b

    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_a4b

    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_a3c
    .catchall {:try_start_a24 .. :try_end_a3c} :catchall_a4e

    if-eqz v4, :cond_a4b

    .line 2399
    :try_start_a3e
    move-object/from16 v0, v62

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, v62

    iget-object v6, v0, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-interface {v4, v6}, Landroid/app/IApplicationThread;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    :try_end_a4b
    .catch Landroid/os/RemoteException; {:try_start_a3e .. :try_end_a4b} :catch_c4e
    .catchall {:try_start_a3e .. :try_end_a4b} :catchall_a4e

    .line 2403
    :cond_a4b
    :goto_a4b
    :try_start_a4b
    monitor-exit v5

    goto/16 :goto_7

    .end local v62    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_a4e
    move-exception v4

    monitor-exit v5
    :try_end_a50
    .catchall {:try_start_a4b .. :try_end_a50} :catchall_a4e

    throw v4

    .line 2407
    :sswitch_a51
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_a5e

    .line 2408
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2410
    :cond_a5e
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_7

    .line 2411
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    goto/16 :goto_7

    .line 2417
    :sswitch_a6d
    :try_start_a6d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Ljava/util/Locale;

    .line 2418
    .local v48, "l":Ljava/util/Locale;
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v68

    .line 2419
    .local v68, "service":Landroid/os/IBinder;
    invoke-static/range {v68 .. v68}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v51

    .line 2420
    .local v51, "mountService":Landroid/os/storage/IMountService;
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Storing locale "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v48 .. v48}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for decryption UI"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    const-string v4, "SystemLocale"

    invoke-virtual/range {v48 .. v48}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v51

    invoke-interface {v0, v4, v5}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aac
    .catch Landroid/os/RemoteException; {:try_start_a6d .. :try_end_aac} :catch_aae

    goto/16 :goto_7

    .line 2422
    .end local v48    # "l":Ljava/util/Locale;
    .end local v51    # "mountService":Landroid/os/storage/IMountService;
    .end local v68    # "service":Landroid/os/IBinder;
    :catch_aae
    move-exception v42

    .line 2423
    .local v42, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v5, "Error storing locale for decryption UI"

    move-object/from16 v0, v42

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 2429
    .end local v42    # "e":Landroid/os/RemoteException;
    :sswitch_aba
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_ae8

    .line 2430
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v26, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "ACTIVITY_RESUME_BOOSTER"

    const/16 v29, 0xc

    const-wide/16 v30, 0x0

    invoke-direct/range {v26 .. v31}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v26

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    .line 2431
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2433
    :cond_ae8
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_b16

    .line 2434
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v26, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "ACTIVITY_RESUME_BOOSTER"

    const/16 v29, 0x10

    const-wide/16 v30, 0x0

    invoke-direct/range {v26 .. v31}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v26

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    .line 2435
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2437
    :cond_b16
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_b44

    .line 2438
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v26, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "ACTIVITY_RESUME_BOOSTER"

    const/16 v29, 0x13

    const-wide/16 v30, 0x0

    invoke-direct/range {v26 .. v31}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v26

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    .line 2439
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2441
    :cond_b44
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    if-nez v4, :cond_b72

    .line 2442
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    new-instance v26, Landroid/os/DVFSHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string v28, "ACTIVITY_RESUME_BOOSTER"

    const/16 v29, 0xe

    const-wide/16 v30, 0x0

    invoke-direct/range {v26 .. v31}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    move-object/from16 v0, v26

    iput-object v0, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    .line 2443
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    const-string v5, "ActivityManager_resume"

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V

    .line 2446
    :cond_b72
    sget v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b85

    .line 2447
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTail:Landroid/os/DVFSHelper;

    sget v5, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2448
    const/4 v4, 0x0

    sput v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperTailRun:I

    .line 2450
    :cond_b85
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_b9c

    .line 2451
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForGPUTail:Landroid/os/DVFSHelper;

    sget v5, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2453
    :cond_b9c
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v4

    if-eqz v4, :cond_bb3

    .line 2454
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForBUSTail:Landroid/os/DVFSHelper;

    sget v5, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 2456
    :cond_bb3
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    invoke-virtual {v4}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v4

    if-eqz v4, :cond_7

    .line 2457
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mDVFSHelperForCoreTail:Landroid/os/DVFSHelper;

    sget v5, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    invoke-virtual {v4, v5}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_7

    .line 2463
    :sswitch_bcc
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/app/ApplicationErrorReport;

    .line 2464
    .local v63, "report":Landroid/app/ApplicationErrorReport;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v75, v0

    .line 2465
    .restart local v75    # "userId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-lez v4, :cond_c3a

    const/16 v55, 0x1

    .line 2466
    .local v55, "notify":Z
    :goto_be2
    if-eqz v63, :cond_7

    .line 2467
    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 2468
    const/16 v41, 0x0

    .line 2469
    .local v41, "dumpStrTmp":Ljava/lang/String;
    :try_start_beb
    move-object/from16 v0, v63

    iget v4, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_c3d

    .line 2470
    const-string v41, "-k -t -z -d -o /data/log/dumpstate_app_error"

    .line 2475
    :cond_bf4
    :goto_bf4
    move-object/from16 v40, v41

    .line 2477
    .local v40, "dumpCmd":Ljava/lang/String;
    if-eqz v40, :cond_c16

    .line 2478
    const-string/jumbo v4, "user"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c47

    .line 2479
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/am/ActivityManagerService$MainHandler$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v6, v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler$6;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/lang/String;)V

    const-string v9, "dumpstate"

    invoke-direct {v4, v6, v9}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 2488
    :cond_c16
    :goto_c16
    monitor-exit v5
    :try_end_c17
    .catchall {:try_start_beb .. :try_end_c17} :catchall_c4b

    .line 2490
    if-eqz v55, :cond_7

    .line 2491
    new-instance v64, Landroid/content/Intent;

    const-string v4, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2492
    .local v64, "reportIntent":Landroid/content/Intent;
    const-string v4, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v64

    move-object/from16 v1, v63

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2493
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mVRApplicationPolicy:Lcom/android/server/am/VRApplicationPolicy;

    move-object/from16 v0, v64

    move/from16 v1, v75

    invoke-virtual {v4, v0, v1}, Lcom/android/server/am/VRApplicationPolicy;->notifyToVRServiceLocked(Landroid/content/Intent;I)V

    goto/16 :goto_7

    .line 2465
    .end local v40    # "dumpCmd":Ljava/lang/String;
    .end local v41    # "dumpStrTmp":Ljava/lang/String;
    .end local v55    # "notify":Z
    .end local v64    # "reportIntent":Landroid/content/Intent;
    :cond_c3a
    const/16 v55, 0x0

    goto :goto_be2

    .line 2471
    .restart local v41    # "dumpStrTmp":Ljava/lang/String;
    .restart local v55    # "notify":Z
    :cond_c3d
    :try_start_c3d
    move-object/from16 v0, v63

    iget v4, v0, Landroid/app/ApplicationErrorReport;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_bf4

    .line 2472
    const-string v41, "-k -t -z -d -o /data/log/dumpstate_app_anr"

    goto :goto_bf4

    .line 2485
    .restart local v40    # "dumpCmd":Ljava/lang/String;
    :cond_c47
    invoke-static/range {v40 .. v40}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    goto :goto_c16

    .line 2488
    .end local v40    # "dumpCmd":Ljava/lang/String;
    :catchall_c4b
    move-exception v4

    monitor-exit v5
    :try_end_c4d
    .catchall {:try_start_c3d .. :try_end_c4d} :catchall_c4b

    throw v4

    .line 2400
    .end local v41    # "dumpStrTmp":Ljava/lang/String;
    .end local v55    # "notify":Z
    .end local v63    # "report":Landroid/app/ApplicationErrorReport;
    .end local v75    # "userId":I
    .restart local v62    # "r":Lcom/android/server/am/ActivityRecord;
    :catch_c4e
    move-exception v4

    goto/16 :goto_a4b

    .line 2040
    .end local v62    # "r":Lcom/android/server/am/ActivityRecord;
    .restart local v46    # "inm":Landroid/app/INotificationManager;
    :catch_c51
    move-exception v4

    goto/16 :goto_7

    .line 2023
    .restart local v38    # "context":Landroid/content/Context;
    .restart local v54    # "notification":Landroid/app/Notification;
    .restart local v59    # "process":Lcom/android/server/am/ProcessRecord;
    .restart local v67    # "root":Lcom/android/server/am/ActivityRecord;
    .restart local v71    # "text":Ljava/lang/String;
    :catch_c54
    move-exception v4

    goto/16 :goto_7

    .line 1636
    nop

    :sswitch_data_c58
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_154
        0x3 -> :sswitch_2c1
        0x4 -> :sswitch_2e2
        0x5 -> :sswitch_2f9
        0x6 -> :sswitch_338
        0xc -> :sswitch_387
        0xd -> :sswitch_3cc
        0xe -> :sswitch_515
        0xf -> :sswitch_582
        0x14 -> :sswitch_59c
        0x15 -> :sswitch_5ec
        0x16 -> :sswitch_601
        0x17 -> :sswitch_64b
        0x18 -> :sswitch_656
        0x19 -> :sswitch_74f
        0x1a -> :sswitch_226
        0x1b -> :sswitch_772
        0x1c -> :sswitch_423
        0x1d -> :sswitch_47a
        0x1e -> :sswitch_7b0
        0x1f -> :sswitch_7f8
        0x20 -> :sswitch_801
        0x21 -> :sswitch_81a
        0x22 -> :sswitch_845
        0x23 -> :sswitch_87d
        0x24 -> :sswitch_894
        0x25 -> :sswitch_8ab
        0x26 -> :sswitch_8dc
        0x27 -> :sswitch_8e5
        0x28 -> :sswitch_8f6
        0x29 -> :sswitch_908
        0x2a -> :sswitch_9af
        0x2b -> :sswitch_9d6
        0x2c -> :sswitch_a1f
        0x2d -> :sswitch_a51
        0x2e -> :sswitch_832
        0x2f -> :sswitch_a6d
        0x31 -> :sswitch_aba
        0x32 -> :sswitch_bcc
        0x190 -> :sswitch_98e
        0x1f4 -> :sswitch_968
        0x259 -> :sswitch_85c
        0x2bc -> :sswitch_30b
        0x3e7 -> :sswitch_7a0
    .end sparse-switch
.end method
