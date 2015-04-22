.class Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;
.super Landroid/app/IActivityContainer$Stub;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActivityContainer"
.end annotation


# static fields
.field static final CONTAINER_STATE_FINISHING:I = 0x2

.field static final CONTAINER_STATE_HAS_SURFACE:I = 0x0

.field static final CONTAINER_STATE_NO_SURFACE:I = 0x1

.field static final FORCE_NEW_TASK_FLAGS:I = 0x18010000


# instance fields
.field mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

.field mCallback:Landroid/app/IActivityContainerCallback;

.field mContainerState:I

.field mIdString:Ljava/lang/String;

.field mParentActivity:Lcom/android/server/am/ActivityRecord;

.field final mStack:Lcom/android/server/am/ActivityStack;

.field final mStackId:I

.field mVisible:Z

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;I)V
    .registers 5
    .param p2, "stackId"    # I

    .prologue
    .line 5111
    if-nez p2, :cond_8

    const/4 v0, 0x1

    :goto_3
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, <init>(Lcom/android/server/am/ActivityStackSupervisor;III)V

    .line 5112
    return-void

    .line 5111
    :cond_8
    const/4 v0, 0x2

    goto :goto_3
.end method

.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;III)V
    .registers 8
    .param p2, "stackId"    # I
    .param p3, "stackType"    # I
    .param p4, "zone"    # I

    .prologue
    const/4 v0, 0x0

    .line 5114
    iput-object p1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0}, Landroid/app/IActivityContainer$Stub;-><init>()V

    .line 5089
    iput-object v0, p0, mCallback:Landroid/app/IActivityContainerCallback;

    .line 5091
    iput-object v0, p0, mParentActivity:Lcom/android/server/am/ActivityRecord;

    .line 5094
    const/4 v0, 0x1

    iput-boolean v0, p0, mVisible:Z

    .line 5102
    const/4 v0, 0x0

    iput v0, p0, mContainerState:I

    .line 5116
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 5117
    :try_start_13
    iput p2, p0, mStackId:I

    .line 5120
    new-instance v0, Lcom/android/server/am/ActivityStack;

    invoke-direct {v0, p0, p3, p4}, Lcom/android/server/am/ActivityStack;-><init>(Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;II)V

    iput-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    .line 5122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActivtyContainer{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, mStackId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mIdString:Ljava/lang/String;

    .line 5124
    monitor-exit v1

    .line 5125
    return-void

    .line 5124
    :catchall_3c
    move-exception v0

    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_13 .. :try_end_3e} :catchall_3c

    throw v0
.end method

.method private checkEmbeddedAllowedInner(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 5241
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I
    invoke-static {v3}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v3

    const/4 v5, 0x2

    const-string v6, "ActivityContainer"

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 5244
    .local v6, "userId":I
    if-nez p2, :cond_45

    .line 5245
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object p2

    .line 5246
    if-nez p2, :cond_45

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_45

    const-string v0, "content"

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 5248
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object p2

    .line 5251
    :cond_45
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityStackSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v8

    .line 5252
    .local v8, "aInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v8, :cond_5f

    iget v0, v8, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-nez v0, :cond_5f

    .line 5253
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempt to embed activity that has not set allowEmbedded=\"true\""

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5256
    :cond_5f
    return-void
.end method


# virtual methods
.method public add(ILcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 5425
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 5426
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-nez v0, :cond_f

    .line 5427
    monitor-exit v1

    .line 5433
    :goto_e
    return-void

    .line 5429
    :cond_f
    invoke-virtual {p0}, isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 5430
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5432
    :cond_1c
    monitor-exit v1

    goto :goto_e

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 5277
    return-object p0
.end method

.method public attachToDisplay(I)V
    .registers 5
    .param p1, "displayId"    # I

    .prologue
    .line 5141
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 5142
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mActivityDisplays:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/am/ActivityStackSupervisor;->access$600(Lcom/android/server/am/ActivityStackSupervisor;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5143
    .local v0, "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    if-nez v0, :cond_15

    .line 5144
    monitor-exit v2

    .line 5148
    :goto_14
    return-void

    .line 5146
    :cond_15
    invoke-virtual {p0, v0}, attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V

    .line 5147
    monitor-exit v2

    goto :goto_14

    .end local v0    # "activityDisplay":Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
    :catchall_1a
    move-exception v1

    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method attachToDisplayLocked(Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;)V
    .registers 7
    .param p1, "activityDisplay"    # Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .prologue
    .line 5130
    iput-object p1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5131
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 5132
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mStacks:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 5134
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->attachActivities(Lcom/android/server/am/ActivityStack;)V

    .line 5135
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, mStackId:I

    iget v2, p1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    iget-object v3, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget v3, v3, Lcom/android/server/am/ActivityStack;->mStackType:I

    iget-object v4, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget v4, v4, Lcom/android/server/am/ActivityStack;->mStackZone:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService;->attachStack(IIII)V

    .line 5137
    return-void
.end method

.method public final checkEmbeddedAllowed(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5261
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, checkEmbeddedAllowedInner(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5262
    return-void
.end method

.method public final checkEmbeddedAllowedIntentSender(Landroid/content/IIntentSender;)V
    .registers 5
    .param p1, "intentSender"    # Landroid/content/IIntentSender;

    .prologue
    .line 5267
    instance-of v1, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v1, :cond_c

    .line 5268
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad PendingIntent object"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    move-object v0, p1

    .line 5270
    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    .line 5271
    .local v0, "pendingIntent":Lcom/android/server/am/PendingIntentRecord;
    iget-object v1, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, checkEmbeddedAllowedInner(Landroid/content/Intent;Ljava/lang/String;)V

    .line 5273
    return-void
.end method

.method protected detachLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 5202
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_20

    .line 5203
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    .line 5204
    iput-object v2, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    .line 5205
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/am/ActivityStack;->mDisplayId:I

    .line 5206
    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    iput-object v2, v0, Lcom/android/server/am/ActivityStack;->mStacks:Ljava/util/ArrayList;

    .line 5207
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, mStackId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->detachStack(I)V

    .line 5209
    :cond_20
    return-void
.end method

.method getBounds(Landroid/graphics/Point;)V
    .registers 5
    .param p1, "outBounds"    # Landroid/graphics/Point;

    .prologue
    .line 5294
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 5295
    :try_start_5
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_10

    .line 5296
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->getBounds(Landroid/graphics/Point;)V

    .line 5300
    :goto_e
    monitor-exit v1

    .line 5301
    return-void

    .line 5298
    :cond_10
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_e

    .line 5300
    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public getDisplayId()I
    .registers 3

    .prologue
    .line 5152
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 5153
    :try_start_5
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_f

    .line 5154
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    monitor-exit v1

    .line 5157
    :goto_e
    return v0

    .line 5156
    :cond_f
    monitor-exit v1

    .line 5157
    const/4 v0, -0x1

    goto :goto_e

    .line 5156
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v0
.end method

.method getOuter()Lcom/android/server/am/ActivityStackSupervisor;
    .registers 2

    .prologue
    .line 5286
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method public injectEvent(Landroid/view/InputEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    const/4 v2, 0x0

    .line 5162
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5164
    .local v0, "origId":J
    :try_start_5
    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_28

    .line 5165
    :try_start_a
    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v4, :cond_20

    .line 5166
    iget-object v2, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplayId:I

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v4, v5}, Landroid/hardware/input/InputManagerInternal;->injectInputEvent(Landroid/view/InputEvent;II)Z

    move-result v2

    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_25

    .line 5173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1f
    return v2

    .line 5170
    :cond_20
    :try_start_20
    monitor-exit v3
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_25

    .line 5173
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    .line 5170
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v2
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    .line 5173
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;)V
    .registers 3
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 5360
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;I)V

    .line 5361
    return-void
.end method

.method public insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;I)V
    .registers 10
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;
    .param p2, "homeIdx"    # I

    .prologue
    .line 5372
    iget-object v4, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, v4, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    .line 5373
    :try_start_5
    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v4, :cond_4e

    .line 5374
    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5377
    .local v3, "taskNdx":I
    iget-object v4, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v1

    .line 5378
    .local v1, "isProfiled":Z
    if-nez v1, :cond_35

    .line 5380
    :cond_1b
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_33

    .line 5381
    iget-object v6, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v6, v4}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 5385
    :cond_33
    add-int/lit8 v3, v3, 0x1

    .line 5389
    :cond_35
    if-lez v3, :cond_47

    .line 5390
    move v0, v3

    .line 5391
    .local v0, "idx":I
    :goto_38
    if-lez v0, :cond_44

    .line 5392
    iget-object v4, p1, Lcom/android/server/am/TaskRecord;->stack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isHomeStack()Z

    move-result v4

    if-eqz v4, :cond_50

    if-gt v0, p2, :cond_50

    .line 5414
    :cond_44
    if-ltz v0, :cond_47

    .line 5415
    move v3, v0

    .line 5419
    .end local v0    # "idx":I
    :cond_47
    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v3, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5421
    .end local v1    # "isProfiled":Z
    .end local v3    # "taskNdx":I
    :cond_4e
    monitor-exit v5

    .line 5422
    return-void

    .line 5395
    .restart local v0    # "idx":I
    .restart local v1    # "isProfiled":Z
    .restart local v3    # "taskNdx":I
    :cond_50
    iget-object v4, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v4, v4, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 5407
    .local v2, "targetTask":Lcom/android/server/am/TaskRecord;
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getLayer()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/am/TaskRecord;->getLayer()I

    move-result v6

    if-ge v4, v6, :cond_44

    .line 5410
    iget-object v4, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget v6, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v4, v6}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v4

    if-ne v1, v4, :cond_44

    .line 5391
    add-int/lit8 v0, v0, -0x1

    goto :goto_38

    .line 5421
    .end local v0    # "idx":I
    .end local v1    # "isProfiled":Z
    .end local v2    # "targetTask":Lcom/android/server/am/TaskRecord;
    .end local v3    # "taskNdx":I
    :catchall_73
    move-exception v4

    monitor-exit v5
    :try_end_75
    .catchall {:try_start_5 .. :try_end_75} :catchall_73

    throw v4
.end method

.method isAttachedLocked()Z
    .registers 2

    .prologue
    .line 5290
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isEligibleForNewTasks()Z
    .registers 2

    .prologue
    .line 5319
    const/4 v0, 0x1

    return v0
.end method

.method public moveGlobalTaskToTop(Lcom/android/server/am/TaskRecord;)V
    .registers 5
    .param p1, "top"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 5445
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 5446
    :try_start_5
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    if-nez v1, :cond_f

    .line 5447
    monitor-exit v2

    .line 5460
    :goto_e
    return-void

    .line 5449
    :cond_f
    iget-object v1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v1, :cond_2b

    .line 5450
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 5451
    iget-object v1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 5452
    .local v0, "homeIdx":I
    iget-object v1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5453
    invoke-virtual {p0, p1, v0}, insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;I)V

    .line 5459
    .end local v0    # "homeIdx":I
    :cond_2b
    :goto_2b
    monitor-exit v2

    goto :goto_e

    :catchall_2d
    move-exception v1

    monitor-exit v2
    :try_end_2f
    .catchall {:try_start_5 .. :try_end_2f} :catchall_2d

    throw v1

    .line 5455
    :cond_30
    :try_start_30
    iget-object v1, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5456
    invoke-virtual {p0, p1}, insertGlobalTaskAtTop(Lcom/android/server/am/TaskRecord;)V
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_2d

    goto :goto_2b
.end method

.method public moveTaskToBackLocked(Lcom/android/server/am/TaskRecord;)V
    .registers 4
    .param p1, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 5463
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 5464
    :try_start_5
    invoke-virtual {p0, p1}, remove(Lcom/android/server/am/TaskRecord;)Z

    .line 5465
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, add(ILcom/android/server/am/TaskRecord;)V

    .line 5466
    monitor-exit v1

    .line 5467
    return-void

    .line 5466
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method onTaskListEmptyLocked()V
    .registers 4

    .prologue
    .line 5323
    iget-object v1, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v1

    if-nez v1, :cond_9

    .line 5331
    :goto_8
    return-void

    .line 5328
    :cond_9
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v2, 0xc9

    invoke-virtual {v1, v2, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5329
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_8
.end method

.method public release()V
    .registers 9

    .prologue
    const/4 v5, 0x2

    .line 5179
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 5180
    :try_start_6
    iget v1, p0, mContainerState:I

    if-ne v1, v5, :cond_c

    .line 5181
    monitor-exit v4

    .line 5197
    :goto_b
    return-void

    .line 5183
    :cond_c
    const/4 v1, 0x2

    iput v1, p0, mContainerState:I

    .line 5185
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v5, 0x70

    invoke-virtual {v1, v5, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5187
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v1, v0, v6, v7}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_25
    .catchall {:try_start_6 .. :try_end_25} :catchall_38

    move-result-wide v2

    .line 5191
    .local v2, "origId":J
    :try_start_26
    iget-object v1, p0, mStack:Lcom/android/server/am/ActivityStack;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStack;->finishAllActivitiesLocked(Z)V

    .line 5192
    iget-object v1, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v5, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1, v5}, Lcom/android/server/am/ActivityStackSupervisor;->removePendingActivityLaunchesLocked(Lcom/android/server/am/ActivityStack;)V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_3b

    .line 5194
    :try_start_33
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5196
    monitor-exit v4

    goto :goto_b

    .end local v0    # "msg":Landroid/os/Message;
    .end local v2    # "origId":J
    :catchall_38
    move-exception v1

    monitor-exit v4
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_38

    throw v1

    .line 5194
    .restart local v0    # "msg":Landroid/os/Message;
    .restart local v2    # "origId":J
    :catchall_3b
    move-exception v1

    :try_start_3c
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_38
.end method

.method public remove(Lcom/android/server/am/TaskRecord;)Z
    .registers 4
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 5436
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 5437
    :try_start_5
    invoke-virtual {p0}, isAttachedLocked()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5438
    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 5440
    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_14

    .line 5441
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method setDrawn()V
    .registers 1

    .prologue
    .line 5315
    return-void
.end method

.method public setSurface(Landroid/view/Surface;III)V
    .registers 7
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    .line 5282
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "ActivityContainer.attachToSurface"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 5283
    return-void
.end method

.method setVisible(Z)V
    .registers 6
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 5305
    iget-boolean v0, p0, mVisible:Z

    if-eq v0, p1, :cond_1b

    .line 5306
    iput-boolean p1, p0, mVisible:Z

    .line 5307
    iget-object v0, p0, mCallback:Landroid/app/IActivityContainerCallback;

    if-eqz v0, :cond_1b

    .line 5308
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHandler:Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;

    const/16 v3, 0x6c

    if-eqz p1, :cond_1c

    const/4 v0, 0x1

    :goto_14
    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/android/server/am/ActivityStackSupervisor$ActivityStackSupervisorHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5312
    :cond_1b
    return-void

    :cond_1c
    move v0, v1

    .line 5308
    goto :goto_14
.end method

.method public final startActivity(Landroid/content/Intent;)I
    .registers 22
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 5213
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v2, "ActivityContainer.startActivity"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 5214
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    # getter for: Lcom/android/server/am/ActivityStackSupervisor;->mCurrentUser:I
    invoke-static {v4}, Lcom/android/server/am/ActivityStackSupervisor;->access$700(Lcom/android/server/am/ActivityStackSupervisor;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "ActivityContainer"

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v17

    .line 5218
    .local v17, "userId":I
    const/high16 v1, 0x18010000

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5219
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v6

    .line 5220
    .local v6, "mimeType":Ljava/lang/String;
    if-nez v6, :cond_5d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5d

    const-string v1, "content"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 5222
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v1, v1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActivityManagerService;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v6

    .line 5224
    :cond_5d
    move-object/from16 v0, p0

    iget-object v1, v0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v5, p1

    move-object/from16 v18, p0

    invoke-virtual/range {v1 .. v19}, Lcom/android/server/am/ActivityStackSupervisor;->startActivityMayWait(Landroid/app/IApplicationThread;ILjava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;Landroid/os/Bundle;ILandroid/app/IActivityContainer;Lcom/android/server/am/TaskRecord;)I

    move-result v1

    return v1
.end method

.method public final startActivityIntentSender(Landroid/content/IIntentSender;)I
    .registers 15
    .param p1, "intentSender"    # Landroid/content/IIntentSender;

    .prologue
    const/high16 v9, 0x18010000

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5230
    iget-object v0, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "ActivityContainer.startActivityIntentSender"

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 5232
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_19

    .line 5233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad PendingIntent object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object v0, p1

    .line 5236
    check-cast v0, Lcom/android/server/am/PendingIntentRecord;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move v8, v1

    move v10, v9

    move-object v11, v2

    move-object v12, p0

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IActivityContainer;)I

    move-result v0

    return v0
.end method

.method public switchUserLocked()V
    .registers 7

    .prologue
    .line 5340
    iget-object v3, p0, this$0:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v4, v3, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 5341
    :try_start_5
    iget-object v3, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-eqz v3, :cond_3c

    .line 5342
    iget-object v3, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5343
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_12
    if-ge v0, v1, :cond_3c

    .line 5344
    iget-object v3, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    .line 5345
    .local v2, "task":Lcom/android/server/am/TaskRecord;
    iget-object v3, p0, mStack:Lcom/android/server/am/ActivityStack;

    iget v5, v2, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityStack;->isCurrentProfileLocked(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 5347
    iget-object v3, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5348
    iget-object v3, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mGlobalTaskHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5349
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 5352
    :cond_39
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    .line 5356
    .end local v0    # "i":I
    .end local v1    # "index":I
    .end local v2    # "task":Lcom/android/server/am/TaskRecord;
    :cond_3c
    monitor-exit v4

    .line 5357
    return-void

    .line 5356
    :catchall_3e
    move-exception v3

    monitor-exit v4
    :try_end_40
    .catchall {:try_start_5 .. :try_end_40} :catchall_3e

    throw v3
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 5335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mIdString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    if-nez v0, :cond_38

    const-string v0, "N"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->isFloatingStack()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "F"

    :goto_1f
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, mStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getZone()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_38
    const-string v0, "A"

    goto :goto_11

    :cond_3b
    const-string v0, ""

    goto :goto_1f
.end method
