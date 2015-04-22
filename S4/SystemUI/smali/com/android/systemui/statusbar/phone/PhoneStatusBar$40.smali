.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 4534
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4536
    sget-boolean v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4538
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4539
    const/4 v4, 0x0

    .line 4540
    .local v4, "flags":I
    const-string v7, "reason"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4541
    .local v5, "reason":Ljava/lang/String;
    if-eqz v5, :cond_1

    const-string v7, "recentapps"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4542
    or-int/lit8 v4, v4, 0x2

    .line 4544
    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 4633
    .end local v4    # "flags":I
    .end local v5    # "reason":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 4546
    :cond_3
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 4547
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4548
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4549
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v8, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4550
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4551
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopNotificationLogging()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4552
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->resetUserExpandedStates()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4554
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v7, :cond_4

    .line 4555
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 4562
    :cond_4
    const-string v7, "STATUSBAR-PhoneStatusBar"

    const-string v8, "     ACTION_SCREEN_OFF is finished!!!! "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4565
    :cond_5
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4566
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$7902(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4568
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4569
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v8, 0x1

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4570
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->startNotificationLoggingIfScreenOnAndVisible()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4573
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mPLMNIconDisplay:Z

    if-eqz v7, :cond_2

    .line 4574
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    goto :goto_0

    .line 4577
    :cond_6
    const-string v7, "com.android.systemui.demo"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4578
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 4579
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 4580
    const-string v7, "command"

    const-string v8, ""

    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 4581
    .local v3, "command":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 4583
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4584
    :catch_0
    move-exception v6

    .line 4585
    .local v6, "t":Ljava/lang/Throwable;
    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error running demo command, intent="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4589
    .end local v2    # "bundle":Landroid/os/Bundle;
    .end local v3    # "command":Ljava/lang/String;
    .end local v6    # "t":Ljava/lang/Throwable;
    :cond_7
    const-string v7, "fake_artwork"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 4593
    const-string v7, "com.sec.android.sconnect.service.ENABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4594
    const-string v7, "PhoneStatusBar"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mQconnectEnable = true"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4595
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v8, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8702(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4596
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 4597
    :cond_8
    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 4599
    const-string v7, "PhoneStatusBar"

    const-string v8, "onReceive : ACTION_SHUTDOWN"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4600
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsShutingdown:Z

    .line 4601
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    if-eqz v7, :cond_2

    .line 4602
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    .line 4605
    :cond_9
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4606
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v8, "level"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8802(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I

    .line 4607
    const-string v7, "status"

    const/4 v8, 0x1

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4609
    .local v1, "battStatus":I
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 4610
    const-string v7, "PhoneStatusBar"

    const-string v8, "Battery level does not show the level for 0% in upsm and emergency mode"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4611
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v9, 0x7f0d01f0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4612
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v9, 0x7f0d01f0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4618
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v7

    const/4 v8, 0x5

    if-gt v7, v8, :cond_b

    const/4 v7, 0x2

    if-eq v1, v7, :cond_b

    .line 4619
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v8, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 4623
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 4614
    :cond_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v9, 0x7f0d01f0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4615
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v9, 0x7f0d01f0

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4621
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v8, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9102(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto :goto_2

    .line 4624
    .end local v1    # "battStatus":I
    :cond_c
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "android.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4627
    :cond_d
    const-string v7, "PhoneStatusBar"

    const-string v8, "onReceive : ACTION_SIM_STATE_CHANGED"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 4630
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideMultiSIMLayout()V
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0
.end method
