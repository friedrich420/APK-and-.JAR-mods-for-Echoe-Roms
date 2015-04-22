.class Lcom/android/server/pm/PersonaManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    .prologue
    .line 6582
    iput-object p1, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 6585
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 6587
    .local v0, "action":Ljava/lang/String;
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5b

    .line 6588
    const-string v8, "android.intent.extra.user_handle"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 6589
    .local v1, "currentUserId":I
    iget-object v8, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8, v1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v8

    if-nez v8, :cond_49

    .line 6590
    const-string/jumbo v8, "sys.knox.store"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6591
    const-string v8, "PersonaManagerService"

    const-string v9, "onReceive USER_SWITCHED it is not knox container"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6596
    :goto_2b
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive USER_SWITCHED in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6598
    iget-object v8, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setKnoxAppsComponentSetting(Landroid/content/Context;I)V
    invoke-static {v8, p1, v1}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;Landroid/content/Context;I)V

    .line 6656
    .end local v1    # "currentUserId":I
    :cond_48
    :goto_48
    return-void

    .line 6593
    .restart local v1    # "currentUserId":I
    :cond_49
    const-string/jumbo v8, "sys.knox.store"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 6594
    const-string v8, "PersonaManagerService"

    const-string v9, "onReceive USER_SWITCHED it is knox container"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 6600
    .end local v1    # "currentUserId":I
    :cond_5b
    const-string v8, "com.sec.knox.container.INTENT_KNOX_ALARM_TIMEOUT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 6601
    const-string v8, "PersonaManagerService"

    const-string v9, "INTENT_ACTION_PASSWORD_TIMEOUT_NOTIFICATION onReceive"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6602
    const-string/jumbo v8, "personaid"

    invoke-virtual {p2, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 6603
    .local v5, "personaId":I
    iget-object v8, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v8

    const/4 v9, 0x6

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 6604
    .local v3, "msg":Landroid/os/Message;
    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 6605
    iget-object v8, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_48

    .line 6606
    .end local v3    # "msg":Landroid/os/Message;
    .end local v5    # "personaId":I
    :cond_88
    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b5

    .line 6607
    const-string v8, "PersonaManagerService"

    const-string v9, "ACTION_SCREEN_OFF onReceive"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6608
    const-string/jumbo v8, "why"

    const/4 v9, 0x3

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 6609
    .local v7, "why":I
    iget-object v8, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v8

    const/16 v9, 0xb

    invoke-virtual {v8, v9, v7, v11}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 6610
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v8, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_48

    .line 6611
    .end local v3    # "msg":Landroid/os/Message;
    .end local v7    # "why":I
    :cond_b5
    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_db

    .line 6612
    const-string v8, "PersonaManagerService"

    const-string v9, "ACTION_SCREEN_ON onReceive"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6613
    iget-object v8, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v8

    const/16 v9, 0x13

    invoke-virtual {v8, v9}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 6614
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v8, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v8}, Lcom/android/server/pm/PersonaManagerService;->access$700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_48

    .line 6615
    .end local v3    # "msg":Landroid/os/Message;
    :cond_db
    const-string v8, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_fb

    const-string v8, "com.samsung.android.intent.action.FINGERPRINT_REMOVED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_fb

    const-string v8, "com.samsung.android.intent.action.FINGERPRINT_PASSWORD_UPDATED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_fb

    const-string v8, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 6616
    :cond_fb
    iget-object v8, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v8, v12}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v6

    .line 6617
    .local v6, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_105
    :goto_105
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_131

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 6618
    .local v4, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_105

    .line 6619
    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PID:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6620
    invoke-virtual {v4, v12}, Landroid/content/pm/PersonaInfo;->setIsFingerReset(Z)V

    goto :goto_105

    .line 6623
    .end local v4    # "pInfo":Landroid/content/pm/PersonaInfo;
    :cond_131
    const-string v8, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_48

    .line 6624
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13d
    :goto_13d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_48

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PersonaInfo;

    .line 6625
    .restart local v4    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v4, :cond_13d

    .line 6626
    iget-object v8, p0, this$0:Lcom/android/server/pm/PersonaManagerService;

    iget v9, v4, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v8, v9, v11}, Lcom/android/server/pm/PersonaManagerService;->setIsFingerAsSupplement(IZ)V

    goto :goto_13d
.end method
