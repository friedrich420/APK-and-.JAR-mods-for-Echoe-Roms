.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 3608
    iput-object p1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    .line 3609
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3610
    const-string v0, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Ljava/lang/String;)I

    .line 3612
    return-void
.end method

.method private filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .registers 8
    .param p1, "containerId"    # I

    .prologue
    .line 4667
    iget-object v5, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$3700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .line 4668
    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    .line 4669
    .local v4, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 4670
    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_1e

    .line 4675
    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_30
    return-object v3

    :cond_31
    const/4 v3, 0x0

    goto :goto_30
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 111
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3615
    const-string v4, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Ljava/lang/String;)I

    .line 3616
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_1ace

    .line 4645
    :cond_c
    :goto_c
    :pswitch_c
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    and-int/lit16 v4, v4, 0x1388

    const/16 v5, 0x1388

    if-ne v4, v5, :cond_7a

    .line 4647
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    add-int/lit16 v0, v4, -0x1388

    move/from16 v71, v0

    .line 4652
    .local v71, "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->propagateOnSessionExpired(I)V

    .line 4654
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v77

    .line 4655
    .local v77, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v77, :cond_7a

    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_7a

    .line 4656
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 4657
    .local v22, "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v77

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v5, :cond_7a

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 4658
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "locking persona due to session expiry."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4659
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 4660
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;II)V

    .line 4664
    .end local v22    # "currentUser":Ljava/lang/Integer;
    .end local v71    # "personaId":I
    .end local v77    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_7a
    :goto_7a
    return-void

    .line 3619
    :pswitch_7b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v33, v0

    .line 3620
    .local v33, "event":I
    if-eqz v33, :cond_c

    .line 3621
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v76

    .line 3622
    .local v76, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v76 .. v76}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .local v40, "i$":Ljava/util/Iterator;
    :cond_90
    :goto_90
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/content/pm/PersonaInfo;

    .line 3623
    .local v64, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v64, :cond_90

    .line 3624
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v64

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Long;

    .line 3625
    .local v39, "i":Ljava/lang/Long;
    if-eqz v39, :cond_90

    .line 3626
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CANCEL_TIMER_IN_USER_ACTIVITY called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v64

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3627
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v64

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_90

    .line 3635
    .end local v33    # "event":I
    .end local v39    # "i":Ljava/lang/Long;
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_df
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SCHEDULE_TIMER_IN_HANDLER called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3636
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 3637
    .restart local v71    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_c

    .line 3641
    .end local v71    # "personaId":I
    :pswitch_10d
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_STOP_TIMER called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 3643
    .restart local v71    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v37, v0

    .line 3644
    .local v37, "force":I
    const/4 v4, 0x1

    move/from16 v0, v37

    if-eq v0, v4, :cond_154

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3645
    :cond_154
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 3650
    .end local v37    # "force":I
    .end local v71    # "personaId":I
    :pswitch_15f
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_LOCK_TIME_EXPIRED called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 3652
    .restart local v71    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V
    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 3653
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3654
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 3659
    .end local v71    # "personaId":I
    :pswitch_1a2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/Bundle;

    .line 3660
    .local v18, "b":Landroid/os/Bundle;
    const-string/jumbo v4, "type"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v102

    .line 3661
    .local v102, "type":Z
    const-string v4, "flag"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v36

    .line 3662
    .local v36, "flag":I
    const-string/jumbo v4, "uid"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v104

    .line 3663
    .local v104, "uid":I
    const-string/jumbo v4, "pid"

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v78

    .line 3664
    .local v78, "pid":I
    const-string/jumbo v4, "package"

    const-string v5, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    .line 3665
    .local v67, "packageName":Ljava/lang/String;
    invoke-static/range {v104 .. v104}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v106

    .line 3666
    .local v106, "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v102

    move/from16 v1, v36

    move/from16 v2, v104

    move/from16 v3, v106

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->handleWakeLockChange(ZIII)V

    goto/16 :goto_c

    .line 3670
    .end local v18    # "b":Landroid/os/Bundle;
    .end local v36    # "flag":I
    .end local v67    # "packageName":Ljava/lang/String;
    .end local v78    # "pid":I
    .end local v102    # "type":Z
    .end local v104    # "uid":I
    .end local v106    # "userId":I
    :pswitch_1f1
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_ACTION_SCREEN_OFF called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->isScreenOffInOwner:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3673
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mScreenOff:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 3674
    new-instance v47, Landroid/content/Intent;

    const-string v4, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver.screenOff"

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3675
    .local v47, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.knox.containeragent2"

    const-string v6, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3676
    const-string/jumbo v4, "screenOff"

    const/4 v5, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3677
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 3679
    :try_start_233
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v76

    .line 3680
    .restart local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v76 .. v76}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .restart local v40    # "i$":Ljava/util/Iterator;
    :cond_240
    :goto_240
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36f

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/content/pm/PersonaInfo;

    .line 3681
    .restart local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v64, :cond_240

    .line 3682
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v64

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, v64

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3684
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v64

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v94

    .line 3685
    .local v94, "sessionLength":J
    const-wide/16 v6, 0x0

    cmp-long v4, v94, v6

    if-nez v4, :cond_2e9

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v64

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_2e9

    .line 3686
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_2b2

    .line 3687
    const-string v4, "PersonaManagerServiceHandler"

    const-string v6, "Screen Off Reason Check, OFF_BECAUSE_OF_PROX_SENSOR!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_240

    .line 3714
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v94    # "sessionLength":J
    :catchall_2af
    move-exception v4

    monitor-exit v5
    :try_end_2b1
    .catchall {:try_start_233 .. :try_end_2b1} :catchall_2af

    throw v4

    .line 3689
    .restart local v40    # "i$":Ljava/util/Iterator;
    .restart local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v94    # "sessionLength":J
    :cond_2b2
    :try_start_2b2
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v64

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 3690
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->isScreenOffInOwner:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_240

    .line 3692
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v7, Landroid/os/UserHandle;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3693
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->isScreenOffInOwner:Z
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1902(Lcom/android/server/pm/PersonaManagerService;Z)Z

    goto/16 :goto_240

    .line 3696
    :cond_2e9
    move-object/from16 v0, v64

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_31c

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_31c

    .line 3698
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "knox.power_button_instantly_locks"

    const/4 v7, 0x0

    move-object/from16 v0, v64

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v55

    .line 3701
    .local v55, "lockinstantly":I
    if-lez v55, :cond_240

    .line 3702
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v64

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_240

    .line 3703
    .end local v55    # "lockinstantly":I
    :cond_31c
    move-object/from16 v0, v64

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_240

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v64

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_240

    const-wide/16 v6, 0x0

    cmp-long v4, v94, v6

    if-lez v4, :cond_240

    .line 3705
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 3706
    .restart local v22    # "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v64

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v6, :cond_240

    .line 3707
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v6, 0x16

    invoke-virtual {v4, v6}, obtainMessage(I)Landroid/os/Message;

    move-result-object v56

    .line 3708
    .local v56, "message":Landroid/os/Message;
    move-object/from16 v0, v64

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v56

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 3709
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_240

    .line 3714
    .end local v22    # "currentUser":Ljava/lang/Integer;
    .end local v56    # "message":Landroid/os/Message;
    .end local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v94    # "sessionLength":J
    :cond_36f
    monitor-exit v5
    :try_end_370
    .catchall {:try_start_2b2 .. :try_end_370} :catchall_2af

    goto/16 :goto_c

    .line 3718
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v47    # "intent":Landroid/content/Intent;
    .end local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_372
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_ACTION_SCREEN_ON called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    new-instance v47, Landroid/content/Intent;

    const-string v4, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver.screenOn"

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3720
    .restart local v47    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.knox.containeragent2"

    const-string v6, "com.sec.knox.containeragent2.ui.keyguard.KnoxKeyguardReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v47

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3721
    const-string/jumbo v4, "screenOn"

    const/4 v5, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3722
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mScreenOff:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 3723
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->isScreenOffInOwner:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1902(Lcom/android/server/pm/PersonaManagerService;Z)Z

    .line 3724
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    .line 3725
    :try_start_3b2
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v76

    .line 3726
    .restart local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v76 .. v76}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .restart local v40    # "i$":Ljava/util/Iterator;
    :cond_3bf
    :goto_3bf
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4aa

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/content/pm/PersonaInfo;

    .line 3727
    .restart local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v64, :cond_3bf

    .line 3728
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v64

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3729
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, v64

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v47

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3730
    move-object/from16 v0, v64

    iget v0, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v71, v0

    .line 3731
    .restart local v71    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v94

    .line 3732
    .restart local v94    # "sessionLength":J
    move-object/from16 v0, v64

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_430

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v64

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_430

    .line 3733
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v6, 0x2648

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v0, v6}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;II)V

    .line 3736
    :cond_430
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->isSessionExpired(I)Z

    move-result v4

    if-nez v4, :cond_3bf

    const-wide/16 v6, 0x0

    cmp-long v4, v94, v6

    if-lez v4, :cond_3bf

    .line 3737
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v62

    .line 3738
    .local v62, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v50

    .line 3739
    .local v50, "lastTime":J
    sub-long v24, v62, v50

    .line 3741
    .local v24, "duration":J
    sub-long v100, v94, v24

    .line 3742
    .local v100, "timeRemaining":J
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "timeRemaining: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v100

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move/from16 v0, v71

    or-int/lit16 v6, v0, 0x1388

    invoke-virtual {v4, v6}, obtainMessage(I)Landroid/os/Message;

    move-result-object v56

    .line 3745
    .restart local v56    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move/from16 v0, v71

    or-int/lit16 v6, v0, 0x1388

    invoke-virtual {v4, v6}, removeMessages(I)V

    .line 3746
    const-wide/16 v6, 0x1

    cmp-long v4, v100, v6

    if-gez v4, :cond_496

    const-wide/16 v100, 0x0

    .line 3747
    :cond_496
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v56

    move-wide/from16 v1, v100

    invoke-virtual {v4, v0, v1, v2}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3bf

    .line 3752
    .end local v24    # "duration":J
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v50    # "lastTime":J
    .end local v56    # "message":Landroid/os/Message;
    .end local v62    # "now":J
    .end local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v71    # "personaId":I
    .end local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v94    # "sessionLength":J
    .end local v100    # "timeRemaining":J
    :catchall_4a7
    move-exception v4

    monitor-exit v5
    :try_end_4a9
    .catchall {:try_start_3b2 .. :try_end_4a9} :catchall_4a7

    throw v4

    .restart local v40    # "i$":Ljava/util/Iterator;
    .restart local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_4aa
    :try_start_4aa
    monitor-exit v5
    :try_end_4ab
    .catchall {:try_start_4aa .. :try_end_4ab} :catchall_4a7

    goto/16 :goto_c

    .line 3756
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v47    # "intent":Landroid/content/Intent;
    .end local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_4ad
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SETTINGS_OBSERVER_TRIGGERED called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    .line 3758
    .restart local v22    # "currentUser":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v76

    .line 3759
    .restart local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v76 .. v76}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .restart local v40    # "i$":Ljava/util/Iterator;
    :cond_4c9
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/content/pm/PersonaInfo;

    .line 3760
    .restart local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v64, :cond_4c9

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v64

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v5, :cond_4c9

    .line 3761
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v64

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_c

    .line 3769
    .end local v22    # "currentUser":Ljava/lang/Integer;
    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v76    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_4ef
    :try_start_4ef
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v107, v0

    .line 3770
    .local v107, "userid":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v107

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkIfAdminHasBeenRemoved(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_4fe
    .catch Ljava/lang/Exception; {:try_start_4ef .. :try_end_4fe} :catch_500

    goto/16 :goto_c

    .line 3771
    .end local v107    # "userid":I
    :catch_500
    move-exception v26

    .line 3772
    .local v26, "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot process DPM state change broadcast :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v26 .. v26}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 3777
    .end local v26    # "e":Ljava/lang/Exception;
    :pswitch_51f
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v105, v0

    .line 3778
    .local v105, "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v39

    .line 3779
    .local v39, "i":I
    :goto_531
    if-lez v39, :cond_570

    .line 3780
    add-int/lit8 v39, v39, -0x1

    .line 3782
    :try_start_535
    const-string v4, "PersonaManagerService"

    const-string v5, " sending remove persona event to system observers "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3783
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ISystemPersonaObserver;

    move/from16 v0, v105

    invoke-interface {v4, v0}, Landroid/content/pm/ISystemPersonaObserver;->onRemovePersona(I)V
    :try_end_551
    .catch Ljava/lang/Exception; {:try_start_535 .. :try_end_551} :catch_552

    goto :goto_531

    .line 3784
    :catch_552
    move-exception v27

    .line 3787
    .local v27, "e2":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Caught:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v27 .. v27}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_531

    .line 3790
    .end local v27    # "e2":Ljava/lang/Exception;
    :cond_570
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_c

    .line 3794
    .end local v39    # "i":I
    .end local v105    # "userHandle":I
    :pswitch_57d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOKnoxContainerLaunch(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 3798
    :pswitch_588
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOPersonaActive(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 3802
    :pswitch_593
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOResetPersona(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2600(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 3806
    :pswitch_59e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOStateChange(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_c

    .line 3810
    :pswitch_5a9
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_BROADCAST_KNOX_MODE_CHANGE_OBSERVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3811
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v105, v0

    .line 3812
    .restart local v105    # "userHandle":I
    new-instance v47, Landroid/content/Intent;

    const-string v4, "com.sec.knox.container.INTENT_KNOX_USER_CHANGED"

    move-object/from16 v0, v47

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3813
    .restart local v47    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3814
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v39

    .line 3815
    .restart local v39    # "i":I
    :goto_5da
    if-lez v39, :cond_62c

    .line 3816
    add-int/lit8 v39, v39, -0x1

    .line 3818
    :try_start_5de
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sending onKnoxModeChange persona event to knox observers during switch #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3819
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v39

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IKnoxModeChangeObserver;

    move/from16 v0, v105

    invoke-interface {v4, v0}, Landroid/content/pm/IKnoxModeChangeObserver;->onKnoxModeChange(I)V
    :try_end_60d
    .catch Ljava/lang/Exception; {:try_start_5de .. :try_end_60d} :catch_60e

    goto :goto_5da

    .line 3820
    :catch_60e
    move-exception v34

    .line 3823
    .local v34, "exK":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Caught during onKnoxModeChange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5da

    .line 3826
    .end local v34    # "exK":Ljava/lang/Exception;
    :cond_62c
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_c

    .line 3830
    .end local v39    # "i":I
    .end local v47    # "intent":Landroid/content/Intent;
    .end local v105    # "userHandle":I
    :pswitch_639
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_BROADCAST_KNOX_MODE_STATE_NOT_ACTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3831
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v105, v0

    .line 3832
    .restart local v105    # "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v105

    # invokes: Lcom/android/server/pm/PersonaManagerService;->broadcastKnoxModeChangeIntent(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 3837
    .end local v105    # "userHandle":I
    :pswitch_651
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .restart local v40    # "i$":Ljava/util/Iterator;
    :cond_65d
    :goto_65d
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6a5

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Integer;

    .line 3838
    .local v39, "i":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v103

    .line 3839
    .local v103, "ui":Landroid/content/pm/PersonaInfo;
    if-eqz v103, :cond_65d

    .line 3840
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing partially created user #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v103

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3841
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v103

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;I)V

    goto :goto_65d

    .line 3844
    .end local v39    # "i":Ljava/lang/Integer;
    .end local v103    # "ui":Landroid/content/pm/PersonaInfo;
    :cond_6a5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_c

    .line 3850
    .end local v40    # "i$":Ljava/util/Iterator;
    :pswitch_6b2
    const/16 v44, 0x0

    .line 3852
    .local v44, "in":Ljava/io/InputStream;
    :try_start_6b4
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3200(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/tima/ITimaService;

    move-result-object v4

    if-eqz v4, :cond_709

    .line 3853
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3300()Z

    move-result v4

    if-eqz v4, :cond_6e9

    .line 3854
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "retrieving TIMA version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$3200(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/tima/ITimaService;

    move-result-object v6

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    :cond_6e9
    const-string v4, "2.0"

    move-object/from16 v0, p0

    iget-object v5, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$3200(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/tima/ITimaService;

    move-result-object v5

    invoke-interface {v5}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    # setter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3402(Z)Z

    .line 3856
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3500(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/knox/container/util/KnoxFileHandler;->updateTimaVersion()V

    .line 3858
    :cond_709
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "reading from xml resource for fota"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3859
    new-instance v35, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3600()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "enterprisedata.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3861
    .local v35, "file":Ljava/io/File;
    invoke-virtual/range {v35 .. v35}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_a11

    .line 3862
    new-instance v45, Ljava/io/FileInputStream;

    move-object/from16 v0, v45

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_73e
    .catch Ljava/lang/Exception; {:try_start_6b4 .. :try_end_73e} :catch_a1a
    .catchall {:try_start_6b4 .. :try_end_73e} :catchall_a3f

    .line 3864
    .end local v44    # "in":Ljava/io/InputStream;
    .local v45, "in":Ljava/io/InputStream;
    :try_start_73e
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v69

    .line 3865
    .local v69, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    move-object/from16 v0, v69

    move-object/from16 v1, v45

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 3866
    new-instance v32, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    move-object/from16 v0, v32

    move-object/from16 v1, v69

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 3867
    .local v32, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual/range {v32 .. v32}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    .line 3868
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v32 .. v32}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v5

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3702(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;
    :try_end_761
    .catch Ljava/lang/Exception; {:try_start_73e .. :try_end_761} :catch_1ac5
    .catchall {:try_start_73e .. :try_end_761} :catchall_1ac0

    move-object/from16 v44, v45

    .line 3876
    .end local v32    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v45    # "in":Ljava/io/InputStream;
    .end local v69    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v44    # "in":Ljava/io/InputStream;
    :goto_763
    if-eqz v44, :cond_768

    .line 3878
    :try_start_765
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V
    :try_end_768
    .catch Ljava/lang/Exception; {:try_start_765 .. :try_end_768} :catch_1aba

    .line 3884
    .end local v35    # "file":Ljava/io/File;
    :cond_768
    :goto_768
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v74

    .line 3885
    .local v74, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v74 .. v74}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    :cond_775
    :goto_775
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/content/pm/PersonaInfo;

    .line 3887
    .restart local v77    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v77, :cond_775

    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_775

    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_775

    .line 3890
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_81b

    .line 3891
    move-object/from16 v0, v77

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-eqz v4, :cond_7ab

    move-object/from16 v0, v77

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7b6

    .line 3892
    :cond_7ab
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3800(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 3894
    :cond_7b6
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v77

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_81b

    .line 3895
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3897
    const/4 v4, 0x1

    :try_start_7d2
    move-object/from16 v0, v77

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    .line 3898
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PMS systemReady: setting upgradeInProgress for ContainerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v77

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; pi.upgradeInProgress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v77

    iget-boolean v7, v0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v77

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3900
    monitor-exit v5
    :try_end_812
    .catchall {:try_start_7d2 .. :try_end_812} :catchall_a46

    .line 3901
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleFOTAUpgrade(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4000(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 3904
    :cond_81b
    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_8e3

    .line 3905
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mSdpLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3907
    :try_start_82a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Landroid/service/sdp/ISdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/sdp/ISdpManagerService;

    move-result-object v4

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-interface {v4, v6}, Landroid/service/sdp/ISdpManagerService;->onBoot(I)Z
    :try_end_839
    .catch Landroid/os/RemoteException; {:try_start_82a .. :try_end_839} :catch_a49
    .catchall {:try_start_82a .. :try_end_839} :catchall_a55

    .line 3911
    :goto_839
    :try_start_839
    monitor-exit v5
    :try_end_83a
    .catchall {:try_start_839 .. :try_end_83a} :catchall_a55

    .line 3913
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_a5b

    .line 3917
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mSdpLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3918
    :try_start_851
    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_863

    .line 3919
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v7, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4300(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 3921
    :cond_863
    monitor-exit v5
    :try_end_864
    .catchall {:try_start_851 .. :try_end_864} :catchall_a58

    .line 3927
    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-nez v4, :cond_8e3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_8e3

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_8e3

    .line 3929
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_8a7

    .line 3930
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 3932
    :cond_8a7
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_8c5

    .line 3933
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    move-object/from16 v0, v77

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 3935
    :cond_8c5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_8e3

    .line 3936
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    move-object/from16 v0, v77

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 3983
    :cond_8e3
    :goto_8e3
    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_911

    .line 3984
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resetPersonaOnReboot:  resetting persona :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3985
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;IZ)I

    .line 3988
    :cond_911
    invoke-virtual/range {v77 .. v77}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_968

    .line 3989
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_d63

    .line 3991
    :try_start_927
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3500(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v77

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual/range {v77 .. v77}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v7

    invoke-virtual/range {v77 .. v77}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v8

    move-object/from16 v0, v77

    iget-boolean v9, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    invoke-virtual/range {v4 .. v9}, Lcom/sec/knox/container/util/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZ)Z

    move-result v57

    .line 3993
    .local v57, "mountStatus":Z
    if-nez v57, :cond_ae2

    .line 3994
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File system not mounted successfully for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_968
    .catch Ljava/lang/Exception; {:try_start_927 .. :try_end_968} :catch_c25

    .line 4058
    .end local v57    # "mountStatus":Z
    :cond_968
    :goto_968
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "systemReady: getDeviceFirmwareVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; pi.fwversion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v77

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_775

    .line 4060
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v77

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_775

    .line 4062
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pi.removePersona = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v77

    iget-boolean v6, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; pi.state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_775

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_775

    .line 4065
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    # invokes: Lcom/android/server/pm/PersonaManagerService;->upgradeContainer(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    goto/16 :goto_775

    .line 3871
    .end local v74    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v77    # "pi":Landroid/content/pm/PersonaInfo;
    .restart local v35    # "file":Ljava/io/File;
    :cond_a11
    :try_start_a11
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to find enterprisedata.xml in system container"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a18
    .catch Ljava/lang/Exception; {:try_start_a11 .. :try_end_a18} :catch_a1a
    .catchall {:try_start_a11 .. :try_end_a18} :catchall_a3f

    goto/16 :goto_763

    .line 3873
    .end local v35    # "file":Ljava/io/File;
    :catch_a1a
    move-exception v26

    .line 3874
    .restart local v26    # "e":Ljava/lang/Exception;
    :goto_a1b
    :try_start_a1b
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to open file - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a35
    .catchall {:try_start_a1b .. :try_end_a35} :catchall_a3f

    .line 3876
    if-eqz v44, :cond_768

    .line 3878
    :try_start_a37
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V
    :try_end_a3a
    .catch Ljava/lang/Exception; {:try_start_a37 .. :try_end_a3a} :catch_a3c

    goto/16 :goto_768

    .line 3879
    :catch_a3c
    move-exception v4

    goto/16 :goto_768

    .line 3876
    .end local v26    # "e":Ljava/lang/Exception;
    :catchall_a3f
    move-exception v4

    :goto_a40
    if-eqz v44, :cond_a45

    .line 3878
    :try_start_a42
    invoke-virtual/range {v44 .. v44}, Ljava/io/InputStream;->close()V
    :try_end_a45
    .catch Ljava/lang/Exception; {:try_start_a42 .. :try_end_a45} :catch_1abd

    .line 3880
    :cond_a45
    :goto_a45
    throw v4

    .line 3900
    .restart local v74    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v77    # "pi":Landroid/content/pm/PersonaInfo;
    :catchall_a46
    move-exception v4

    :try_start_a47
    monitor-exit v5
    :try_end_a48
    .catchall {:try_start_a47 .. :try_end_a48} :catchall_a46

    throw v4

    .line 3908
    :catch_a49
    move-exception v86

    .line 3909
    .local v86, "re":Landroid/os/RemoteException;
    :try_start_a4a
    const-string v4, "PersonaManagerService"

    const-string v6, "Failed to call onBoot"

    move-object/from16 v0, v86

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_839

    .line 3911
    .end local v86    # "re":Landroid/os/RemoteException;
    :catchall_a55
    move-exception v4

    monitor-exit v5
    :try_end_a57
    .catchall {:try_start_a4a .. :try_end_a57} :catchall_a55

    throw v4

    .line 3921
    :catchall_a58
    move-exception v4

    :try_start_a59
    monitor-exit v5
    :try_end_a5a
    .catchall {:try_start_a59 .. :try_end_a5a} :catchall_a58

    throw v4

    .line 3940
    :cond_a5b
    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_8e3

    .line 3947
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mSdpLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 3949
    :try_start_a6a
    const-string v4, "PersonaManagerService"

    const-string v6, "inside systemReady keyguard is disabled sdp minor"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3950
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v7, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4300(Lcom/android/server/pm/PersonaManagerService;IZ)V

    .line 3952
    const/16 v84, 0x0

    .line 3953
    .local v84, "pwdResetToken":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3400()Z

    move-result v4

    if-eqz v4, :cond_ac2

    .line 3954
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;
    :try_end_a90
    .catchall {:try_start_a6a .. :try_end_a90} :catchall_abf

    move-result-object v84

    .line 3959
    :goto_a91
    if-eqz v84, :cond_abc

    .line 3960
    :try_start_a93
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v7, 0x2

    move-object/from16 v0, v84

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;I)Ljava/lang/String;
    invoke-static {v4, v6, v0, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 3962
    .local v21, "containerMasterKey":Ljava/lang/String;
    if-eqz v21, :cond_acf

    .line 3964
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Landroid/service/sdp/ISdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/sdp/ISdpManagerService;

    move-result-object v4

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v21

    invoke-interface {v4, v6, v0}, Landroid/service/sdp/ISdpManagerService;->onDeviceUnlocked(ILjava/lang/String;)Z

    .line 3965
    if-eqz v21, :cond_abc

    .line 3966
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->clear()V
    :try_end_aba
    .catch Landroid/os/RemoteException; {:try_start_a93 .. :try_end_aba} :catch_ad7
    .catchall {:try_start_a93 .. :try_end_aba} :catchall_abf

    .line 3967
    const/16 v21, 0x0

    .line 3979
    .end local v21    # "containerMasterKey":Ljava/lang/String;
    :cond_abc
    :goto_abc
    :try_start_abc
    monitor-exit v5

    goto/16 :goto_8e3

    .end local v84    # "pwdResetToken":Ljava/lang/String;
    :catchall_abf
    move-exception v4

    monitor-exit v5
    :try_end_ac1
    .catchall {:try_start_abc .. :try_end_ac1} :catchall_abf

    throw v4

    .line 3956
    .restart local v84    # "pwdResetToken":Ljava/lang/String;
    :cond_ac2
    :try_start_ac2
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;
    :try_end_acd
    .catchall {:try_start_ac2 .. :try_end_acd} :catchall_abf

    move-result-object v84

    goto :goto_a91

    .line 3973
    .restart local v21    # "containerMasterKey":Ljava/lang/String;
    :cond_acf
    :try_start_acf
    const-string v4, "PersonaManagerService"

    const-string v6, "CMK is NULL : can\'t unlock SDP"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad6
    .catch Landroid/os/RemoteException; {:try_start_acf .. :try_end_ad6} :catch_ad7
    .catchall {:try_start_acf .. :try_end_ad6} :catchall_abf

    goto :goto_abc

    .line 3976
    .end local v21    # "containerMasterKey":Ljava/lang/String;
    :catch_ad7
    move-exception v86

    .line 3977
    .restart local v86    # "re":Landroid/os/RemoteException;
    :try_start_ad8
    const-string v4, "PersonaManagerService"

    const-string v6, "Failed to call onDeviceUnlocked"

    move-object/from16 v0, v86

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ae1
    .catchall {:try_start_ad8 .. :try_end_ae1} :catchall_abf

    goto :goto_abc

    .line 3996
    .end local v84    # "pwdResetToken":Ljava/lang/String;
    .end local v86    # "re":Landroid/os/RemoteException;
    .restart local v57    # "mountStatus":Z
    :cond_ae2
    :try_start_ae2
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File system successfully mounted for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3998
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_d26

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3700(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_d26

    .line 3999
    move-object/from16 v0, v77

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v20

    .line 4000
    .local v20, "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v20, :cond_d26

    .line 4001
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v14

    .line 4002
    .local v14, "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v16

    .line 4003
    .local v16, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Positive Delta for Knox upgrade : Before"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4004
    if-eqz v14, :cond_cf5

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_cf5

    .line 4005
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v66

    .line 4007
    .local v66, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App install list from PM for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v66

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4008
    if-eqz v66, :cond_c5e

    invoke-interface/range {v66 .. v66}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c5e

    .line 4009
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App install list from PM for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v66 .. v66}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4010
    invoke-interface/range {v66 .. v66}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .local v41, "i$":Ljava/util/Iterator;
    :cond_bc8
    :goto_bc8
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c42

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v70

    check-cast v70, Landroid/content/pm/PackageInfo;

    .line 4011
    .local v70, "personaApp":Landroid/content/pm/PackageInfo;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App installed for persona"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v70

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4012
    move-object/from16 v0, v70

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v14, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bc8

    .line 4013
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App installed for persona"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v70

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "present in Ent Install List;Remove"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    move-object/from16 v0, v70

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v14, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_c24
    .catch Ljava/lang/Exception; {:try_start_ae2 .. :try_end_c24} :catch_c25

    goto :goto_bc8

    .line 4049
    .end local v14    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v57    # "mountStatus":Z
    .end local v66    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v70    # "personaApp":Landroid/content/pm/PackageInfo;
    :catch_c25
    move-exception v26

    .line 4050
    .restart local v26    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to mount file system. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_968

    .line 4017
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v14    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v41    # "i$":Ljava/util/Iterator;
    .restart local v57    # "mountStatus":Z
    .restart local v66    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_c42
    :try_start_c42
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Positive Delta for Knox upgrade:After"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    .end local v41    # "i$":Ljava/util/Iterator;
    :cond_c5e
    if-eqz v14, :cond_cf5

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_cf5

    .line 4020
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona firmware version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v77

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4021
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_cf5

    .line 4022
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v77

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_cf5

    .line 4024
    move-object/from16 v0, v77

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-nez v4, :cond_cc1

    .line 4025
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3800(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4028
    :cond_cc1
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41    # "i$":Ljava/util/Iterator;
    :goto_cc5
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_cf5

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 4029
    .local v15, "appName":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application upgrade-Add : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4030
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static {v4, v5, v15}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I

    goto :goto_cc5

    .line 4036
    .end local v15    # "appName":Ljava/lang/String;
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v66    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_cf5
    if-eqz v16, :cond_d26

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d26

    .line 4037
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application upgrade-Remove : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->unInstallSystemApplications(ILjava/util/List;)I

    .line 4042
    .end local v14    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_d26
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_968

    .line 4045
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3500(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v77

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v92

    .line 4046
    .local v92, "retVal":Z
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persona is in SUPER_LOCKED state, hence unmounting the filesystem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v92

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d61
    .catch Ljava/lang/Exception; {:try_start_c42 .. :try_end_d61} :catch_c25

    goto/16 :goto_968

    .line 4053
    .end local v57    # "mountStatus":Z
    .end local v92    # "retVal":Z
    :cond_d63
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did not mount file system for superLocked persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or due to container state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_968

    .line 4074
    .end local v44    # "in":Ljava/io/InputStream;
    .end local v74    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v77    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_d87
    :try_start_d87
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v75

    check-cast v75, Landroid/os/PersonaManager;

    .line 4079
    .local v75, "personaManager":Landroid/os/PersonaManager;
    if-eqz v75, :cond_c

    .line 4080
    const/4 v4, 0x0

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v74

    .line 4082
    .restart local v74    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v74, :cond_c

    invoke-interface/range {v74 .. v74}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 4083
    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v72, v0

    .line 4084
    .local v72, "personaIds":[I
    const/16 v59, 0x0

    .line 4085
    .local v59, "n":I
    invoke-interface/range {v74 .. v74}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .restart local v40    # "i$":Ljava/util/Iterator;
    move/from16 v60, v59

    .end local v40    # "i$":Ljava/util/Iterator;
    .end local v59    # "n":I
    .local v60, "n":I
    :goto_dbd
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fcb

    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Landroid/content/pm/PersonaInfo;

    .line 4086
    .restart local v77    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v77, :cond_1aca

    add-int/lit8 v59, v60, 0x1

    .end local v60    # "n":I
    .restart local v59    # "n":I
    move-object/from16 v0, v77

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    aput v4, v72, v60

    .line 4088
    :goto_dd3
    new-instance v28, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 4089
    .local v28, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v77

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v61

    .line 4091
    .local v61, "ownerUid":I
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v29

    .line 4092
    .local v29, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v77

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v0, v61

    invoke-direct {v5, v0, v6}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v5}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v49

    .line 4093
    .local v49, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_fc4

    .line 4094
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v77

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_fc4

    .line 4095
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isVoiceCapable()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_e3e

    .line 4096
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v77

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4098
    :cond_e3e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isSMSCapable()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_e57

    .line 4099
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v77

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v4, v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4102
    :cond_e57
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona firmware version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v77

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4103
    move-object/from16 v0, v77

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v20

    .line 4104
    .restart local v20    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v20, :cond_fa5

    .line 4105
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v10

    .line 4106
    .local v10, "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_f0b

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f0b

    .line 4107
    new-instance v82, Ljava/util/ArrayList;

    invoke-direct/range {v82 .. v82}, Ljava/util/ArrayList;-><init>()V

    .line 4108
    .local v82, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41    # "i$":Ljava/util/Iterator;
    :goto_ea6
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_ef3

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/lang/String;

    .line 4109
    .local v46, "info":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v46

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4110
    move-object/from16 v0, v82

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ed3
    .catch Ljava/lang/Exception; {:try_start_d87 .. :try_end_ed3} :catch_ed4

    goto :goto_ea6

    .line 4152
    .end local v10    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v28    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v29    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v46    # "info":Ljava/lang/String;
    .end local v49    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v59    # "n":I
    .end local v61    # "ownerUid":I
    .end local v72    # "personaIds":[I
    .end local v74    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v75    # "personaManager":Landroid/os/PersonaManager;
    .end local v77    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v82    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_ed4
    move-exception v26

    .line 4153
    .restart local v26    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4112
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v10    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v20    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v28    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v29    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v41    # "i$":Ljava/util/Iterator;
    .restart local v49    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v59    # "n":I
    .restart local v61    # "ownerUid":I
    .restart local v72    # "personaIds":[I
    .restart local v74    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v75    # "personaManager":Landroid/os/PersonaManager;
    .restart local v77    # "pi":Landroid/content/pm/PersonaInfo;
    .restart local v82    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ef3
    :try_start_ef3
    invoke-interface/range {v82 .. v82}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v82

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Ljava/lang/String;

    .line 4113
    .local v23, "disablePackages":[Ljava/lang/String;
    invoke-virtual/range {v49 .. v49}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v4, v0, v5}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 4116
    .end local v23    # "disablePackages":[Ljava/lang/String;
    .end local v41    # "i$":Ljava/util/Iterator;
    .end local v82    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_f0b
    invoke-virtual/range {v20 .. v20}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v11

    .line 4117
    .local v11, "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PersonaManagerService"

    const-string v5, "FOTA Boot receiver re_enable: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    if-eqz v11, :cond_fa5

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_fa5

    .line 4119
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver re_enable:Size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4120
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 4121
    .local v31, "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v41

    .restart local v41    # "i$":Ljava/util/Iterator;
    :goto_f43
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f71

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Ljava/lang/String;

    .line 4122
    .local v79, "pkgInfo":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo for re_enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v79

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4123
    move-object/from16 v0, v31

    move-object/from16 v1, v79

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f43

    .line 4125
    .end local v79    # "pkgInfo":Ljava/lang/String;
    :cond_f71
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo for re_enable:Enable pks size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4126
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v30

    check-cast v30, [Ljava/lang/String;

    .line 4127
    .local v30, "enablePackages":[Ljava/lang/String;
    invoke-virtual/range {v49 .. v49}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v4, v0, v5}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .line 4131
    .end local v10    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v30    # "enablePackages":[Ljava/lang/String;
    .end local v31    # "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v41    # "i$":Ljava/util/Iterator;
    :cond_fa5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$900(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_fae
    .catch Ljava/lang/Exception; {:try_start_ef3 .. :try_end_fae} :catch_ed4

    .line 4132
    :try_start_fae
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v77

    iput-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    .line 4133
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v77

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .line 4134
    monitor-exit v5

    .end local v20    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_fc4
    move/from16 v60, v59

    .line 4137
    .end local v59    # "n":I
    .restart local v60    # "n":I
    goto/16 :goto_dbd

    .line 4134
    .end local v60    # "n":I
    .restart local v20    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v59    # "n":I
    :catchall_fc8
    move-exception v4

    monitor-exit v5
    :try_end_fca
    .catchall {:try_start_fae .. :try_end_fca} :catchall_fc8

    :try_start_fca
    throw v4

    .line 4139
    .end local v20    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v28    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v29    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v49    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v59    # "n":I
    .end local v61    # "ownerUid":I
    .end local v77    # "pi":Landroid/content/pm/PersonaInfo;
    .restart local v60    # "n":I
    :cond_fcb
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z
    :try_end_fd2
    .catch Ljava/lang/Exception; {:try_start_fca .. :try_end_fd2} :catch_ed4

    move-result v4

    if-nez v4, :cond_c

    .line 4140
    const/16 v39, 0x0

    .line 4142
    .local v39, "i":I
    const/16 v39, 0x0

    :goto_fd9
    move/from16 v0, v39

    move/from16 v1, v60

    if-ge v0, v1, :cond_c

    .line 4143
    :try_start_fdf
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    aget v5, v72, v39

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    .line 4144
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3300()Z

    move-result v4

    if-eqz v4, :cond_100e

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting contaienr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v72, v39

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in background after reboot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_100e
    .catch Ljava/lang/Exception; {:try_start_fdf .. :try_end_100e} :catch_1011

    .line 4142
    :cond_100e
    add-int/lit8 v39, v39, 0x1

    goto :goto_fd9

    .line 4146
    :catch_1011
    move-exception v26

    .line 4147
    .restart local v26    # "e":Ljava/lang/Exception;
    :try_start_1012
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3300()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v72, v39

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in background after reboot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_103e
    .catch Ljava/lang/Exception; {:try_start_1012 .. :try_end_103e} :catch_ed4

    goto/16 :goto_c

    .line 4161
    .end local v26    # "e":Ljava/lang/Exception;
    .end local v39    # "i":I
    .end local v60    # "n":I
    .end local v72    # "personaIds":[I
    .end local v74    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v75    # "personaManager":Landroid/os/PersonaManager;
    :pswitch_1040
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaHandler.MSG_START_REMOVE_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4164
    :try_start_105c
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4165
    .restart local v71    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/pm/PersonaInfo;

    .line 4166
    .local v73, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v73, :cond_1083

    .line 4167
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_107b
    .catch Ljava/lang/Exception; {:try_start_105c .. :try_end_107b} :catch_107d

    goto/16 :goto_7a

    .line 4191
    .end local v71    # "personaId":I
    .end local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_107d
    move-exception v26

    .line 4192
    .restart local v26    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 4171
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v71    # "personaId":I
    .restart local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_1083
    :try_start_1083
    invoke-virtual/range {v73 .. v73}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v68

    .line 4173
    .local v68, "parentUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_10a0

    .line 4175
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v4, :cond_10a0

    .line 4176
    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isKnoxKioskMode"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4181
    :cond_10a0
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v68

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    move-result v90

    .line 4182
    .local v90, "result":Z
    if-eqz v90, :cond_10d3

    .line 4183
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v19

    .line 4184
    .local v19, "code":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startRemovingPersona return code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4187
    .end local v19    # "code":I
    :cond_10d3
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Failed to switch persona. Aborted removing of persona..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10da
    .catch Ljava/lang/Exception; {:try_start_1083 .. :try_end_10da} :catch_107d

    goto/16 :goto_c

    .line 4198
    .end local v68    # "parentUserId":I
    .end local v71    # "personaId":I
    .end local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v90    # "result":Z
    :pswitch_10dc
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4199
    .restart local v71    # "personaId":I
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler:: UnInstalling of Thirdparty apps for reset persona is done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4201
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v46

    .line 4202
    .local v46, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v46, :cond_1105

    move-object/from16 v0, v46

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_1105

    .line 4203
    const-string v4, "PersonaManagerServiceHandler"

    const-string/jumbo v5, "resetPartition is skipped. It\'s already done in AMS.SystemReady"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a

    .line 4207
    :cond_1105
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->cleanPartition(I)Z
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5300(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v91

    .line 4208
    .local v91, "ret":Z
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resetPersona: ret value of EPM resetPartition():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v91

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4222
    .end local v46    # "info":Landroid/content/pm/PersonaInfo;
    .end local v71    # "personaId":I
    .end local v91    # "ret":Z
    :pswitch_112b
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaHandler.MSG_START_RESET_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    :try_start_1147
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4226
    .restart local v71    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/pm/PersonaInfo;

    .line 4227
    .restart local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v73, :cond_116e

    .line 4228
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1166
    .catch Ljava/lang/Exception; {:try_start_1147 .. :try_end_1166} :catch_1168

    goto/16 :goto_7a

    .line 4245
    .end local v71    # "personaId":I
    .end local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_1168
    move-exception v26

    .line 4246
    .restart local v26    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    .line 4232
    .end local v26    # "e":Ljava/lang/Exception;
    .restart local v71    # "personaId":I
    .restart local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_116e
    :try_start_116e
    invoke-virtual/range {v73 .. v73}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v68

    .line 4235
    .restart local v68    # "parentUserId":I
    const/16 v90, 0x0

    .line 4236
    .restart local v90    # "result":Z
    if-eqz v90, :cond_119e

    .line 4237
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I
    invoke-static {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;IZ)I

    move-result v19

    .line 4238
    .restart local v19    # "code":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startResetPersona return code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4241
    .end local v19    # "code":I
    :cond_119e
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Failed to switch persona. Aborted reset of persona..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11a5
    .catch Ljava/lang/Exception; {:try_start_116e .. :try_end_11a5} :catch_1168

    goto/16 :goto_c

    .line 4252
    .end local v68    # "parentUserId":I
    .end local v71    # "personaId":I
    .end local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v90    # "result":Z
    :pswitch_11a7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4253
    .restart local v71    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v96

    .line 4254
    .local v96, "state":Landroid/content/pm/PersonaState;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v12

    .line 4255
    .local v12, "adminUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v22

    .line 4256
    .local v22, "currentUser":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyKeyguardShow(false) on MSG_SUPER_LOCK_PERSONA for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4257
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v71

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    .line 4258
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/pm/PersonaInfo;

    .line 4259
    .restart local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v73, :cond_1204

    .line 4260
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7a

    .line 4264
    :cond_1204
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SUPER_LOCK_PERSONA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current user from AMS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " adminUid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4265
    const/16 v90, 0x1

    .line 4267
    .restart local v90    # "result":Z
    move/from16 v0, v71

    move/from16 v1, v22

    if-ne v0, v1, :cond_1245

    .line 4268
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: current user from AMS is the one being super-locked, not stopping persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4269
    const/16 v90, 0x0

    .line 4272
    :cond_1245
    move-object/from16 v0, v73

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-nez v4, :cond_1260

    move-object/from16 v0, v73

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isLightWeightContainer:Z

    if-nez v4, :cond_1260

    .line 4273
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 4274
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: switching to owner"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    :cond_1260
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move/from16 v0, v71

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_127f

    .line 4278
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move/from16 v0, v71

    if-ne v4, v0, :cond_127f

    .line 4279
    const/16 v90, 0x0

    .line 4280
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: BYOD case, don\'t stop Persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4283
    :cond_127f
    const/16 v89, -0x1

    .line 4284
    .local v89, "res":I
    if-eqz v90, :cond_12ca

    .line 4285
    move-object/from16 v0, v73

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v4, :cond_12ae

    .line 4286
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stopping persona for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->stopPersona(I)I

    move-result v89

    .line 4289
    :cond_12ae
    if-eqz v89, :cond_12ca

    .line 4290
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityManagerNative.getDefault().stopUser failed to execure with error code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v89

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    :cond_12ca
    if-nez v90, :cond_12da

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move/from16 v0, v71

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_12dc

    :cond_12da
    if-eqz v89, :cond_1339

    .line 4297
    :cond_12dc
    new-instance v28, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 4298
    .restart local v28    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v28

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v61

    .line 4299
    .restart local v61    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v61

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v81

    .line 4300
    .local v81, "pkgNames":[Ljava/lang/String;
    if-eqz v81, :cond_1328

    .line 4301
    move-object/from16 v17, v81

    .local v17, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v54, v0

    .local v54, "len$":I
    const/16 v40, 0x0

    .local v40, "i$":I
    :goto_1310
    move/from16 v0, v40

    move/from16 v1, v54

    if-ge v0, v1, :cond_1334

    aget-object v80, v17, v40

    .line 4302
    .local v80, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v80

    move/from16 v1, v71

    move/from16 v2, v61

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 4301
    add-int/lit8 v40, v40, 0x1

    goto :goto_1310

    .line 4305
    .end local v17    # "arr$":[Ljava/lang/String;
    .end local v40    # "i$":I
    .end local v54    # "len$":I
    .end local v80    # "pkgName":Ljava/lang/String;
    :cond_1328
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v71

    move/from16 v1, v61

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 4307
    :cond_1334
    const/4 v4, 0x0

    move-object/from16 v0, v73

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .line 4311
    .end local v28    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v61    # "ownerUid":I
    .end local v81    # "pkgNames":[Ljava/lang/String;
    :cond_1339
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move/from16 v0, v71

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v73

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_c

    .line 4313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v42

    .line 4315
    .local v42, "ident":J
    :try_start_1351
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v83

    .line 4316
    .local v83, "pm":Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    const-string v5, "com.sec.knox.home.crossprofilefilter"

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    move-object/from16 v0, v83

    invoke-interface {v0, v4, v5, v6}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;I)V
    :try_end_1369
    .catch Landroid/os/RemoteException; {:try_start_1351 .. :try_end_1369} :catch_137c
    .catchall {:try_start_1351 .. :try_end_1369} :catchall_1384

    .line 4320
    invoke-static/range {v42 .. v43}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4323
    .end local v83    # "pm":Landroid/content/pm/IPackageManager;
    :goto_136c
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v73 .. v73}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    const/4 v6, 0x1

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startActivityAdminLocked(III)V
    invoke-static {v4, v5, v0, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;III)V

    goto/16 :goto_c

    .line 4317
    :catch_137c
    move-exception v86

    .line 4318
    .restart local v86    # "re":Landroid/os/RemoteException;
    :try_start_137d
    invoke-virtual/range {v86 .. v86}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1380
    .catchall {:try_start_137d .. :try_end_1380} :catchall_1384

    .line 4320
    invoke-static/range {v42 .. v43}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_136c

    .end local v86    # "re":Landroid/os/RemoteException;
    :catchall_1384
    move-exception v4

    invoke-static/range {v42 .. v43}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 4329
    .end local v12    # "adminUid":I
    .end local v22    # "currentUser":I
    .end local v42    # "ident":J
    .end local v71    # "personaId":I
    .end local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v89    # "res":I
    .end local v90    # "result":Z
    .end local v96    # "state":Landroid/content/pm/PersonaState;
    :pswitch_1389
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4334
    .restart local v71    # "personaId":I
    :try_start_138f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x4

    move/from16 v0, v71

    invoke-interface {v4, v0, v5}, Landroid/app/IActivityManager;->updateKnoxContainerRuntimeState(II)V

    .line 4335
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityManagerService;

    .line 4336
    .local v13, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v13, :cond_13a8

    .line 4337
    move/from16 v0, v71

    invoke-virtual {v13, v0}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z
    :try_end_13a8
    .catch Landroid/os/RemoteException; {:try_start_138f .. :try_end_13a8} :catch_13ef

    .line 4344
    .end local v13    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_13a8
    :goto_13a8
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_13f8

    const/16 v87, 0x1

    .line 4345
    .local v87, "removePersona":Z
    :goto_13b1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3900(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/content/pm/PersonaInfo;

    .line 4346
    .restart local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v87, :cond_13fb

    .line 4347
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "userStopped triggered removal process..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v65

    .line 4350
    .local v65, "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v65, :cond_13e4

    invoke-interface/range {v65 .. v65}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_13e4

    .line 4351
    const-string/jumbo v4, "sys.knox.exists"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4355
    :cond_13e4
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 4339
    .end local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v65    # "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v87    # "removePersona":Z
    :catch_13ef
    move-exception v86

    .line 4340
    .restart local v86    # "re":Landroid/os/RemoteException;
    const-string v4, "PersonaManagerService"

    const-string v5, "handleMessage() MSG_PERSONA_STOPPED remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13a8

    .line 4344
    .end local v86    # "re":Landroid/os/RemoteException;
    :cond_13f8
    const/16 v87, 0x0

    goto :goto_13b1

    .line 4356
    .restart local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v87    # "removePersona":Z
    :cond_13fb
    if-eqz v64, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move/from16 v0, v71

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual/range {v64 .. v64}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4358
    :try_start_1411
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3500(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v92

    .line 4359
    .restart local v92    # "retVal":Z
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unmounting file system due to super lock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v92

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4361
    new-instance v28, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .line 4362
    .restart local v28    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v28

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v61

    .line 4363
    .restart local v61    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v61

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v81

    .line 4364
    .restart local v81    # "pkgNames":[Ljava/lang/String;
    if-eqz v81, :cond_1486

    .line 4365
    move-object/from16 v17, v81

    .restart local v17    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v54, v0

    .restart local v54    # "len$":I
    const/16 v40, 0x0

    .restart local v40    # "i$":I
    :goto_146e
    move/from16 v0, v40

    move/from16 v1, v54

    if-ge v0, v1, :cond_1492

    aget-object v80, v17, v40

    .line 4366
    .restart local v80    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v80

    move/from16 v1, v71

    move/from16 v2, v61

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    .line 4365
    add-int/lit8 v40, v40, 0x1

    goto :goto_146e

    .line 4369
    .end local v17    # "arr$":[Ljava/lang/String;
    .end local v40    # "i$":I
    .end local v54    # "len$":I
    .end local v80    # "pkgName":Ljava/lang/String;
    :cond_1486
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v71

    move/from16 v1, v61

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v5, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    :try_end_1492
    .catch Landroid/os/RemoteException; {:try_start_1411 .. :try_end_1492} :catch_1499
    .catchall {:try_start_1411 .. :try_end_1492} :catchall_14a8

    .line 4374
    :cond_1492
    const/4 v4, 0x0

    move-object/from16 v0, v64

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_c

    .line 4371
    .end local v28    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v61    # "ownerUid":I
    .end local v81    # "pkgNames":[Ljava/lang/String;
    .end local v92    # "retVal":Z
    :catch_1499
    move-exception v86

    .line 4372
    .restart local v86    # "re":Landroid/os/RemoteException;
    :try_start_149a
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to unmount file system on super lock."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14a1
    .catchall {:try_start_149a .. :try_end_14a1} :catchall_14a8

    .line 4374
    const/4 v4, 0x0

    move-object/from16 v0, v64

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_c

    .end local v86    # "re":Landroid/os/RemoteException;
    :catchall_14a8
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, v64

    iput-boolean v5, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    throw v4

    .line 4381
    .end local v64    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v71    # "personaId":I
    .end local v87    # "removePersona":Z
    :pswitch_14af
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Start lock timer: persona is in background."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4382
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4383
    .restart local v71    # "personaId":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v62

    .line 4384
    .restart local v62    # "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v52

    .line 4385
    .local v52, "lastTimeToBackground":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v98

    .line 4386
    .local v98, "timeOutValue":J
    sub-long v4, v62, v52

    sub-long v100, v98, v4

    .line 4387
    .restart local v100    # "timeRemaining":J
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    move/from16 v0, v71

    move-wide/from16 v1, v100

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IIJ)V
    invoke-static {v4, v0, v5, v1, v2}, Lcom/android/server/pm/PersonaManagerService;->access$5600(Lcom/android/server/pm/PersonaManagerService;IIJ)V

    goto/16 :goto_c

    .line 4392
    .end local v52    # "lastTimeToBackground":J
    .end local v62    # "now":J
    .end local v71    # "personaId":I
    .end local v98    # "timeOutValue":J
    .end local v100    # "timeRemaining":J
    :pswitch_14e7
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4393
    .restart local v71    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v88, v0

    .line 4394
    .local v88, "requestId":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop timer with request id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v88

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " persona Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4395
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    move/from16 v1, v88

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;II)V

    goto/16 :goto_c

    .line 4400
    .end local v71    # "personaId":I
    .end local v88    # "requestId":I
    :pswitch_1526
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4401
    .restart local v71    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v46

    .line 4402
    .restart local v46    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v46, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move/from16 v0, v71

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 4403
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "locking persona due to lock timeout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->lockPersona(I)V

    goto/16 :goto_c

    .line 4410
    .end local v46    # "info":Landroid/content/pm/PersonaInfo;
    .end local v71    # "personaId":I
    :pswitch_1558
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "locking persona due to reset timeout.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4412
    .restart local v71    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearResetPasswordKey(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4413
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v46

    .line 4414
    .restart local v46    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v46, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v46

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move/from16 v0, v71

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 4416
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move/from16 v0, v71

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_15b1

    .line 4417
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    move/from16 v0, v71

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    .line 4418
    :cond_15b1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    move/from16 v0, v71

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 4419
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 4420
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguard(I)V

    goto/16 :goto_c

    .line 4437
    .end local v46    # "info":Landroid/content/pm/PersonaInfo;
    .end local v71    # "personaId":I
    :pswitch_15d0
    const-string v4, "PersonaManagerService"

    const-string/jumbo v5, "received MSG_ACTIVATE_SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4439
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4440
    .restart local v71    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killSdpTimer(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5800(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4441
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mSdpLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4442
    :try_start_15f0
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v46

    .line 4443
    .restart local v46    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v46, :cond_1620

    move-object/from16 v0, v46

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_1620

    .line 4444
    const-string v4, "PersonaManagerService"

    const-string v6, "activating sdp.."

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4445
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v0, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4300(Lcom/android/server/pm/PersonaManagerService;IZ)V
    :try_end_1613
    .catchall {:try_start_15f0 .. :try_end_1613} :catchall_1658

    .line 4448
    :try_start_1613
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Landroid/service/sdp/ISdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/sdp/ISdpManagerService;

    move-result-object v4

    move/from16 v0, v71

    invoke-interface {v4, v0}, Landroid/service/sdp/ISdpManagerService;->onDeviceLocked(I)Z
    :try_end_1620
    .catch Landroid/os/RemoteException; {:try_start_1613 .. :try_end_1620} :catch_164d
    .catchall {:try_start_1613 .. :try_end_1620} :catchall_1658

    .line 4453
    :cond_1620
    :goto_1620
    :try_start_1620
    monitor-exit v5
    :try_end_1621
    .catchall {:try_start_1620 .. :try_end_1621} :catchall_1658

    .line 4455
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4466
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4467
    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/ActivityManagerService;

    .line 4468
    .restart local v13    # "ams":Lcom/android/server/am/ActivityManagerService;
    const-string v4, "com.android.settings"

    move/from16 v0, v71

    invoke-virtual {v13, v4, v0}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto/16 :goto_c

    .line 4449
    .end local v13    # "ams":Lcom/android/server/am/ActivityManagerService;
    :catch_164d
    move-exception v86

    .line 4450
    .restart local v86    # "re":Landroid/os/RemoteException;
    :try_start_164e
    const-string v4, "PersonaManagerService"

    const-string v6, "Failed to call onDeviceLocked"

    move-object/from16 v0, v86

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1620

    .line 4453
    .end local v46    # "info":Landroid/content/pm/PersonaInfo;
    .end local v86    # "re":Landroid/os/RemoteException;
    :catchall_1658
    move-exception v4

    monitor-exit v5
    :try_end_165a
    .catchall {:try_start_164e .. :try_end_165a} :catchall_1658

    throw v4

    .line 4474
    .end local v71    # "personaId":I
    :pswitch_165b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4475
    .restart local v71    # "personaId":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "received MSG_CALM_SDP... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v77

    .line 4478
    .restart local v77    # "pi":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killSdpTimer(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5800(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4479
    if-nez v77, :cond_16ad

    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4480
    :cond_16ad
    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_16df

    .line 4481
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sdp not-active (skip calming)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4482
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 4485
    :cond_16df
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mSdpLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 4486
    const/16 v21, 0x0

    .line 4488
    .restart local v21    # "containerMasterKey":Ljava/lang/String;
    :try_start_16ea
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1785

    .line 4489
    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6000(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x1

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;I)Ljava/lang/String;
    invoke-static {v6, v0, v4, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    .line 4523
    :cond_1719
    :goto_1719
    if-eqz v21, :cond_1854

    .line 4524
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x0

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v0, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4300(Lcom/android/server/pm/PersonaManagerService;IZ)V
    :try_end_1725
    .catchall {:try_start_16ea .. :try_end_1725} :catchall_1782

    .line 4528
    :try_start_1725
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Landroid/service/sdp/ISdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/sdp/ISdpManagerService;

    move-result-object v4

    move/from16 v0, v71

    move-object/from16 v1, v21

    invoke-interface {v4, v0, v1}, Landroid/service/sdp/ISdpManagerService;->onDeviceUnlocked(ILjava/lang/String;)Z

    .line 4529
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move/from16 v0, v71

    invoke-virtual {v4, v6, v0}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_174e

    .line 4530
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v7, 0x0

    move/from16 v0, v71

    invoke-virtual {v4, v6, v7, v0}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    .line 4532
    :cond_174e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move/from16 v0, v71

    invoke-virtual {v4, v6, v0}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_1768

    .line 4533
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    const/4 v7, 0x0

    move/from16 v0, v71

    invoke-virtual {v4, v6, v7, v0}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z
    :try_end_1768
    .catch Landroid/os/RemoteException; {:try_start_1725 .. :try_end_1768} :catch_1848
    .catchall {:try_start_1725 .. :try_end_1768} :catchall_1782

    .line 4543
    :cond_1768
    :goto_1768
    :try_start_1768
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->clear()V

    .line 4544
    const/16 v21, 0x0

    .line 4550
    :goto_176d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4551
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearResetPasswordKey(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;I)V

    .line 4552
    monitor-exit v5

    goto/16 :goto_c

    :catchall_1782
    move-exception v4

    monitor-exit v5
    :try_end_1784
    .catchall {:try_start_1768 .. :try_end_1784} :catchall_1782

    throw v4

    .line 4491
    :cond_1785
    :try_start_1785
    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_1719

    move-object/from16 v0, v77

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_1719

    .line 4492
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persona : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v71

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "(SDP-MINOR) check if finger print"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4494
    const-string v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v93

    check-cast v93, Lcom/android/server/LockSettingsService;
    :try_end_17ba
    .catchall {:try_start_1785 .. :try_end_17ba} :catchall_1782

    .line 4495
    .local v93, "service":Lcom/android/server/LockSettingsService;
    if-eqz v93, :cond_1719

    .line 4496
    const/16 v97, 0x0

    .line 4498
    .local v97, "token":Ljava/lang/String;
    :try_start_17be
    const-string v4, "lockscreen.password_type"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v93

    move/from16 v1, v71

    invoke-virtual {v0, v4, v6, v7, v1}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v0, v6

    move/from16 v85, v0

    .line 4500
    .local v85, "quality":I
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "persona : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v71

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "password is not present in map CMK generating form pwd token "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v85

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v7, v0}, Lcom/android/server/pm/PersonaManagerService;->getIsFingerAsSupplement(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4503
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3400()Z

    move-result v4

    if-eqz v4, :cond_182a

    .line 4504
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v97

    .line 4507
    :goto_1819
    if-eqz v97, :cond_1835

    .line 4508
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x2

    move/from16 v0, v71

    move-object/from16 v1, v97

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;I)Ljava/lang/String;
    invoke-static {v4, v0, v1, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_1719

    .line 4506
    :cond_182a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v97

    goto :goto_1819

    .line 4511
    :cond_1835
    const-string v4, "PersonaManagerService"

    const-string v6, "No token from TIMA"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_183c
    .catch Landroid/os/RemoteException; {:try_start_17be .. :try_end_183c} :catch_183e
    .catchall {:try_start_17be .. :try_end_183c} :catchall_1782

    goto/16 :goto_1719

    .line 4514
    .end local v85    # "quality":I
    :catch_183e
    move-exception v86

    .line 4515
    .restart local v86    # "re":Landroid/os/RemoteException;
    :try_start_183f
    const-string v4, "PersonaManagerServiceHandler"

    const-string v6, "error in MSG_CALM_SDP while getting password quality"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1719

    .line 4535
    .end local v86    # "re":Landroid/os/RemoteException;
    .end local v93    # "service":Lcom/android/server/LockSettingsService;
    .end local v97    # "token":Ljava/lang/String;
    :catch_1848
    move-exception v86

    .line 4536
    .restart local v86    # "re":Landroid/os/RemoteException;
    const-string v4, "PersonaManagerService"

    const-string v6, "Failed to call onDeviceUnlocked"

    move-object/from16 v0, v86

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1768

    .line 4546
    .end local v86    # "re":Landroid/os/RemoteException;
    :cond_1854
    const-string v4, "PersonaManagerService.KeyMgnt"

    const-string v6, "In CALM_SDP: Container master key is NULL!!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_185b
    .catchall {:try_start_183f .. :try_end_185b} :catchall_1782

    goto/16 :goto_176d

    .line 4557
    .end local v21    # "containerMasterKey":Ljava/lang/String;
    .end local v71    # "personaId":I
    .end local v77    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_185d
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleRestart(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 4563
    :pswitch_186a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4564
    .restart local v71    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE is called for personaId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    const/16 v4, 0x64

    move/from16 v0, v71

    if-lt v0, v4, :cond_1920

    .line 4567
    :try_start_1890
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v108

    .line 4568
    .local v108, "value":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE Owner accessability value->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v108

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4569
    const/4 v4, 0x1

    move/from16 v0, v108

    if-ne v0, v4, :cond_18ee

    .line 4570
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isSamsunAccessibilityServiceRunning()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_1913

    .line 4571
    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE stopping owner accessibility..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4573
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$6302(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_18ee
    .catch Ljava/lang/Exception; {:try_start_1890 .. :try_end_18ee} :catch_191b

    .line 4590
    .end local v108    # "value":I
    :cond_18ee
    :goto_18ee
    if-eqz v71, :cond_c

    .line 4591
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, obtainMessage(I)Landroid/os/Message;

    move-result-object v58

    .line 4592
    .local v58, "msg1":Landroid/os/Message;
    move/from16 v0, v71

    move-object/from16 v1, v58

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 4593
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_c

    .line 4575
    .end local v58    # "msg1":Landroid/os/Message;
    .restart local v108    # "value":I
    :cond_1913
    :try_start_1913
    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE not stopping owner accessibility..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_191a
    .catch Ljava/lang/Exception; {:try_start_1913 .. :try_end_191a} :catch_191b

    goto :goto_18ee

    .line 4586
    .end local v108    # "value":I
    :catch_191b
    move-exception v26

    .line 4587
    .restart local v26    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18ee

    .line 4579
    .end local v26    # "e":Ljava/lang/Exception;
    :cond_1920
    :try_start_1920
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE restartAccessibilityServiceForOwner -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$6300(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6300(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_18ee

    .line 4581
    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE starting owner accessibility"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4582
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$400(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 4583
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$6302(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_196c
    .catch Ljava/lang/Exception; {:try_start_1920 .. :try_end_196c} :catch_191b

    goto :goto_18ee

    .line 4600
    .end local v71    # "personaId":I
    :pswitch_196d
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_NOTIFY_EXT_SDCARD_UPDATE is called for persona - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    const/16 v73, 0x0

    .line 4602
    .restart local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4603
    .restart local v71    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v73

    .line 4604
    if-eqz v73, :cond_1a2b

    move-object/from16 v0, v73

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    if-eqz v4, :cond_1a2b

    .line 4605
    const/16 v48, 0x0

    .line 4606
    .local v48, "isSdcardAlertAlreadyShown":Z
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mShownSdcardAlertMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19cd

    .line 4607
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mShownSdcardAlertMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v48

    .line 4609
    :cond_19cd
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "state -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v6, v0}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and needsRestart-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v73

    iget-boolean v6, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and isSdcardAlertAlreadyShown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4610
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move/from16 v0, v71

    invoke-virtual {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_c

    if-nez v48, :cond_c

    move-object/from16 v0, v73

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    if-nez v4, :cond_c

    .line 4611
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    # invokes: Lcom/android/server/pm/PersonaManagerService;->notifyNeedRestartMsg(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_c

    .line 4614
    .end local v48    # "isSdcardAlertAlreadyShown":Z
    :cond_1a2b
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Sdcard policy has not been updated..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 4620
    .end local v71    # "personaId":I
    .end local v73    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :pswitch_1a34
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4621
    .restart local v71    # "personaId":I
    const-string v4, "PersonaManagerService"

    const-string v5, "PersonaManagerService$PersonaHandler.handleMessage() launchPersonaHome for kioskModeEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4622
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    .line 4625
    const/16 v4, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v71

    invoke-virtual {v0, v4, v1, v5}, obtainMessage(III)Landroid/os/Message;

    move-result-object v38

    .line 4626
    .local v38, "forceUpdateMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_c

    .line 4631
    .end local v38    # "forceUpdateMsg":Landroid/os/Message;
    .end local v71    # "personaId":I
    :pswitch_1a5e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4632
    .restart local v71    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force update wallpaper for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4633
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    const/4 v5, 0x1

    move/from16 v0, v71

    invoke-virtual {v4, v0, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchPersonaWallpaper(IZ)V

    goto/16 :goto_c

    .line 4639
    .end local v71    # "personaId":I
    :pswitch_1a8e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v71, v0

    .line 4640
    .restart local v71    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyKeyguardShow(false) on MSG_DELETING_PERSONA for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v71

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4641
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v71

    invoke-virtual {v4, v0, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    goto/16 :goto_c

    .line 3879
    .end local v71    # "personaId":I
    .restart local v35    # "file":Ljava/io/File;
    .restart local v44    # "in":Ljava/io/InputStream;
    :catch_1aba
    move-exception v4

    goto/16 :goto_768

    .end local v35    # "file":Ljava/io/File;
    :catch_1abd
    move-exception v5

    goto/16 :goto_a45

    .line 3876
    .end local v44    # "in":Ljava/io/InputStream;
    .restart local v35    # "file":Ljava/io/File;
    .restart local v45    # "in":Ljava/io/InputStream;
    :catchall_1ac0
    move-exception v4

    move-object/from16 v44, v45

    .end local v45    # "in":Ljava/io/InputStream;
    .restart local v44    # "in":Ljava/io/InputStream;
    goto/16 :goto_a40

    .line 3873
    .end local v44    # "in":Ljava/io/InputStream;
    .restart local v45    # "in":Ljava/io/InputStream;
    :catch_1ac5
    move-exception v26

    move-object/from16 v44, v45

    .end local v45    # "in":Ljava/io/InputStream;
    .restart local v44    # "in":Ljava/io/InputStream;
    goto/16 :goto_a1b

    .end local v35    # "file":Ljava/io/File;
    .end local v44    # "in":Ljava/io/InputStream;
    .restart local v60    # "n":I
    .restart local v72    # "personaIds":[I
    .restart local v74    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v75    # "personaManager":Landroid/os/PersonaManager;
    .restart local v77    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_1aca
    move/from16 v59, v60

    .end local v60    # "n":I
    .restart local v59    # "n":I
    goto/16 :goto_dd3

    .line 3616
    :pswitch_data_1ace
    .packed-switch 0x1
        :pswitch_1040
        :pswitch_10dc
        :pswitch_c
        :pswitch_112b
        :pswitch_11a7
        :pswitch_15f
        :pswitch_df
        :pswitch_7b
        :pswitch_4ad
        :pswitch_1a2
        :pswitch_1f1
        :pswitch_10d
        :pswitch_d87
        :pswitch_651
        :pswitch_6b2
        :pswitch_4ef
        :pswitch_51f
        :pswitch_1389
        :pswitch_372
        :pswitch_15d0
        :pswitch_165b
        :pswitch_14af
        :pswitch_14e7
        :pswitch_1526
        :pswitch_1558
        :pswitch_185d
        :pswitch_5a9
        :pswitch_196d
        :pswitch_639
        :pswitch_57d
        :pswitch_593
        :pswitch_59e
        :pswitch_588
        :pswitch_186a
        :pswitch_1a34
        :pswitch_1a5e
        :pswitch_1a8e
    .end packed-switch
.end method
