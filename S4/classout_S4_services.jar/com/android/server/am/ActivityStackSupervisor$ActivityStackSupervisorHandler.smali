.class final Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;
.super Landroid/os/Handler;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityStackSupervisorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 4886
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    .line 4887
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4888
    return-void
.end method


# virtual methods
.method activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    const/4 v0, 0x0

    .line 4891
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 4892
    :try_start_6
    iget-object v2, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    if-eqz p1, :cond_c

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    :cond_c
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->activityIdleInternalLocked(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)Lcom/android/server/am/ActivityRecord;

    .line 4893
    monitor-exit v1

    .line 4894
    return-void

    .line 4893
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x2710

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4898
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_2ee

    .line 5082
    :cond_a
    :goto_a
    return-void

    .line 4901
    :sswitch_b
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v9, :cond_2f

    .line 4902
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4903
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v9, 0x64

    invoke-virtual {v8, v9}, obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 4904
    .local v5, "nmsg":Landroid/os/Message;
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v8, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4905
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v8, v5, v10, v11}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_a

    .line 4912
    .end local v5    # "nmsg":Landroid/os/Message;
    :cond_2f
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->SAMP_ENABLE:Z
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$000(Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v8

    if-eqz v8, :cond_4f

    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-eqz v8, :cond_4f

    .line 4913
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v10, 0x4

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    const-string v11, "idle timeout"

    invoke-virtual {v9, v10, v12, v8, v11}, Landroid/app/usage/UsageStatsManagerInternal;->reportPpmEvent(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4916
    :cond_4f
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v8}, activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_a

    .line 4920
    :sswitch_57
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    invoke-virtual {p0, v8}, activityIdleInternal(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_a

    .line 4923
    :sswitch_5f
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 4924
    :try_start_64
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->resumeTopActivitiesLocked()Z

    .line 4925
    monitor-exit v9

    goto :goto_a

    :catchall_6b
    move-exception v8

    monitor-exit v9
    :try_end_6d
    .catchall {:try_start_64 .. :try_end_6d} :catchall_6b

    throw v8

    .line 4928
    :sswitch_6e
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 4929
    :try_start_73
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->isSleepingOrShuttingDown()Z

    move-result v8

    if-eqz v8, :cond_8e

    .line 4930
    const-string v8, "ActivityManager"

    const-string v10, "Sleep timeout!  Sleeping now."

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4931
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/android/server/am/ActivityStackSupervisor;->mSleepTimeout:Z

    .line 4932
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityStackSupervisor;->checkReadyForSleepLocked()V

    .line 4934
    :cond_8e
    monitor-exit v9

    goto/16 :goto_a

    :catchall_91
    move-exception v8

    monitor-exit v9
    :try_end_93
    .catchall {:try_start_73 .. :try_end_93} :catchall_91

    throw v8

    .line 4937
    :sswitch_94
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v9, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v9, :cond_ad

    .line 4938
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v8, v9, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 4939
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v9, 0x68

    invoke-virtual {v8, v9, v10, v11}, sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_a

    .line 4942
    :cond_ad
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 4943
    :try_start_b2
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v8

    if-eqz v8, :cond_ca

    .line 4944
    const-string v8, "ActivityManager"

    const-string v10, "Launch timeout has expired, giving up wake lock!"

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4949
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4951
    :cond_ca
    monitor-exit v9

    goto/16 :goto_a

    :catchall_cd
    move-exception v8

    monitor-exit v9
    :try_end_cf
    .catchall {:try_start_b2 .. :try_end_cf} :catchall_cd

    throw v8

    .line 4954
    :sswitch_d0
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayAddedLocked(I)V

    goto/16 :goto_a

    .line 4957
    :sswitch_d9
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayChangedLocked(I)V

    goto/16 :goto_a

    .line 4960
    :sswitch_e2
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityStackSupervisor;->handleDisplayRemovedLocked(I)V

    goto/16 :goto_a

    .line 4963
    :sswitch_eb
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 4964
    .local v1, "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 4965
    .local v0, "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_a

    .line 4967
    :try_start_f3
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v7, :cond_103

    :goto_fb
    invoke-interface {v0, v9, v7}, Landroid/app/IActivityContainerCallback;->setVisible(Landroid/os/IBinder;Z)V
    :try_end_fe
    .catch Landroid/os/RemoteException; {:try_start_f3 .. :try_end_fe} :catch_100

    goto/16 :goto_a

    .line 4968
    :catch_100
    move-exception v8

    goto/16 :goto_a

    :cond_103
    move v7, v8

    .line 4967
    goto :goto_fb

    .line 4975
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :sswitch_105
    :try_start_105
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    if-nez v9, :cond_11d

    .line 4976
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$102(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 4978
    :cond_11d
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->show(Z)V

    .line 4979
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget v10, p1, Landroid/os/Message;->arg2:I

    if-nez v10, :cond_196

    :goto_12d
    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static {v9, v7}, Lcom/android/server/am/ActivityStackSupervisor;->access$202(Lcom/android/server/am/ActivityStackSupervisor;Z)Z

    .line 4980
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v8

    if-eqz v8, :cond_15e

    .line 4981
    const/high16 v4, 0x3bf0000

    .line 4983
    .local v4, "flags":I
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v8

    if-nez v8, :cond_145

    .line 4984
    const/high16 v8, 0x1200000

    xor-int/2addr v4, v8

    .line 4987
    :cond_145
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v8

    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v9

    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v10, v10, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v4, v9, v10}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 4990
    .end local v4    # "flags":I
    :cond_15e
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v9

    const-string v10, "Lock-to-App"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 4991
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v8

    if-eqz v8, :cond_185

    .line 4992
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    const/4 v10, 0x1

    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v9, v10, v8, v11}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 4996
    :cond_185
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(Z)V
    :try_end_18d
    .catch Landroid/os/RemoteException; {:try_start_105 .. :try_end_18d} :catch_18f

    goto/16 :goto_a

    .line 4998
    :catch_18f
    move-exception v3

    .line 4999
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_196
    move v7, v8

    .line 4979
    goto :goto_12d

    .line 5005
    :sswitch_198
    :try_start_198
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    if-eqz v9, :cond_1ba

    .line 5006
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$300(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v9

    const/4 v10, 0x0

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v11}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v11

    iget-object v12, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v12, v12, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Lcom/android/internal/statusbar/IStatusBarService;->disable(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 5009
    :cond_1ba
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mToken:Landroid/os/IBinder;
    invoke-static {v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$400(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/os/IBinder;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerService;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 5010
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    if-eqz v9, :cond_1dc

    .line 5011
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # invokes: Lcom/android/server/am/ActivityStackSupervisor;->getDevicePolicyManager()Landroid/app/admin/IDevicePolicyManager;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$500(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v9, v10, v11, v12}, Landroid/app/admin/IDevicePolicyManager;->notifyLockTaskModeChanged(ZLjava/lang/String;I)V

    .line 5014
    :cond_1dc
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    if-nez v9, :cond_1f4

    .line 5015
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v10, Lcom/android/server/am/LockTaskNotify;

    iget-object v11, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v11, v11, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/am/LockTaskNotify;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->access$102(Lcom/android/server/am/ActivityStackSupervisor;Lcom/android/server/am/LockTaskNotify;)Lcom/android/server/am/LockTaskNotify;

    .line 5017
    :cond_1f4
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskNotify:Lcom/android/server/am/LockTaskNotify;
    invoke-static {v9}, Lcom/android/server/am/ActivityStackSupervisor;->access$100(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/LockTaskNotify;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/am/LockTaskNotify;->show(Z)V
    :try_end_1fe
    .catch Landroid/os/RemoteException; {:try_start_198 .. :try_end_1fe} :catch_242

    .line 5019
    :try_start_1fe
    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "lock_to_app_exit_locked"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_249

    .line 5022
    .local v7, "shouldLockKeyguard":Z
    :goto_210
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mLockTaskIsLocked:Z
    invoke-static {v8}, Lcom/android/server/am/ActivityStackSupervisor;->access$200(Lcom/android/server/am/ActivityStackSupervisor;)Z

    move-result v8

    if-nez v8, :cond_238

    if-eqz v7, :cond_238

    .line 5023
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 5024
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->dismissKeyguard()V

    .line 5025
    new-instance v8, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v9, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V
    :try_end_238
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1fe .. :try_end_238} :catch_2ea
    .catch Landroid/os/RemoteException; {:try_start_1fe .. :try_end_238} :catch_242

    .line 5032
    .end local v7    # "shouldLockKeyguard":Z
    :cond_238
    :goto_238
    :try_start_238
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/wm/WindowManagerService;->onLockTaskModeChanged(Z)V
    :try_end_240
    .catch Landroid/os/RemoteException; {:try_start_238 .. :try_end_240} :catch_242

    goto/16 :goto_a

    .line 5034
    :catch_242
    move-exception v3

    .line 5035
    .restart local v3    # "ex":Landroid/os/RemoteException;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_249
    move v7, v8

    .line 5019
    goto :goto_210

    .line 5039
    :sswitch_24b
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 5040
    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v0, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mCallback:Landroid/app/IActivityContainerCallback;

    .line 5041
    .restart local v0    # "callback":Landroid/app/IActivityContainerCallback;
    if-eqz v0, :cond_a

    .line 5043
    :try_start_253
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v0, v8}, Landroid/app/IActivityContainerCallback;->onAllActivitiesComplete(Landroid/os/IBinder;)V
    :try_end_25a
    .catch Landroid/os/RemoteException; {:try_start_253 .. :try_end_25a} :catch_25c

    goto/16 :goto_a

    .line 5044
    :catch_25c
    move-exception v8

    goto/16 :goto_a

    .line 5049
    .end local v0    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :sswitch_25f
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 5050
    :try_start_264
    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Timeout waiting for all activities in task to finish. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5052
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 5053
    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    iget-object v8, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mStack:Lcom/android/server/am/ActivityStack;

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 5054
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->onTaskListEmptyLocked()V

    .line 5055
    monitor-exit v9

    goto/16 :goto_a

    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :catchall_28e
    move-exception v8

    monitor-exit v9
    :try_end_290
    .catchall {:try_start_264 .. :try_end_290} :catchall_28e

    throw v8

    .line 5058
    :sswitch_291
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 5059
    :try_start_296
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/os/IBinder;

    invoke-static {v8}, Lcom/android/server/am/ActivityRecord;->forToken(Landroid/os/IBinder;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 5060
    .local v6, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v6, :cond_2a5

    .line 5061
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v6}, Lcom/android/server/am/ActivityStackSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 5063
    :cond_2a5
    monitor-exit v9

    goto/16 :goto_a

    .end local v6    # "r":Lcom/android/server/am/ActivityRecord;
    :catchall_2a8
    move-exception v8

    monitor-exit v9
    :try_end_2aa
    .catchall {:try_start_296 .. :try_end_2aa} :catchall_2a8

    throw v8

    .line 5068
    :sswitch_2ab
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1030128

    invoke-direct {v2, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 5069
    .local v2, "context":Landroid/content/Context;
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v8, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040b81

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    .line 5074
    .end local v2    # "context":Landroid/content/Context;
    :sswitch_2d3
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v9, v8, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    .line 5075
    :try_start_2d8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    .line 5076
    .restart local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->detachLocked()V

    .line 5077
    iget-object v8, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v8, v1}, Lcom/android/server/am/ActivityStackSupervisor;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 5078
    monitor-exit v9

    goto/16 :goto_a

    .end local v1    # "container":Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
    :catchall_2e7
    move-exception v8

    monitor-exit v9
    :try_end_2e9
    .catchall {:try_start_2d8 .. :try_end_2e9} :catchall_2e7

    throw v8

    .line 5028
    :catch_2ea
    move-exception v8

    goto/16 :goto_238

    .line 4898
    nop

    :sswitch_data_2ee
    .sparse-switch
        0x64 -> :sswitch_b
        0x65 -> :sswitch_57
        0x66 -> :sswitch_5f
        0x67 -> :sswitch_6e
        0x68 -> :sswitch_94
        0x69 -> :sswitch_d0
        0x6a -> :sswitch_d9
        0x6b -> :sswitch_e2
        0x6c -> :sswitch_eb
        0x6d -> :sswitch_105
        0x6e -> :sswitch_198
        0x6f -> :sswitch_24b
        0x70 -> :sswitch_25f
        0x71 -> :sswitch_291
        0xc8 -> :sswitch_2ab
        0xc9 -> :sswitch_2d3
    .end sparse-switch
.end method
