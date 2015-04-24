.class Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;
.super Landroid/os/Handler;
.source "WifiTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SheduleHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimerService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiTimerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    .line 100
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 101
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, -0x1

    const/4 v10, 0x0

    .line 105
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 106
    .local v2, "arguments":Landroid/os/Bundle;
    if-eqz v2, :cond_3

    const-string v7, "com.android.settings.wifi.wifisheduler_action_type"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 107
    .local v0, "actionType":I
    :goto_0
    if-eqz v2, :cond_0

    const-string v7, "wifisheduler_alarm_type"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, "alarmType":I
    :cond_0
    const-string v7, "WifiTimer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Message received "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/16 v7, 0x1389

    if-ne v0, v7, :cond_5

    .line 110
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    # getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "wifitimer_start_time_checked"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    # getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "wifitimer_end_time_checked"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 114
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    # invokes: Lcom/android/settings/wifi/WifiTimerService;->cancelAllAlarms()V
    invoke-static {v7}, Lcom/android/settings/wifi/WifiTimerService;->access$100(Lcom/android/settings/wifi/WifiTimerService;)V

    .line 115
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    # invokes: Lcom/android/settings/wifi/WifiTimerService;->sheduleAllAlarms()V
    invoke-static {v7}, Lcom/android/settings/wifi/WifiTimerService;->access$200(Lcom/android/settings/wifi/WifiTimerService;)V

    .line 141
    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    invoke-virtual {v7}, Lcom/android/settings/wifi/WifiTimerService;->stopSelf()V

    .line 142
    return-void

    .end local v0    # "actionType":I
    .end local v1    # "alarmType":I
    :cond_3
    move v0, v1

    .line 106
    goto :goto_0

    .line 117
    .restart local v0    # "actionType":I
    .restart local v1    # "alarmType":I
    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    # invokes: Lcom/android/settings/wifi/WifiTimerService;->cancelAllAlarms()V
    invoke-static {v7}, Lcom/android/settings/wifi/WifiTimerService;->access$100(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_1

    .line 119
    :cond_5
    const/16 v7, 0x138c

    if-ne v0, v7, :cond_7

    .line 120
    const/16 v7, 0x3e9

    if-ne v1, v7, :cond_6

    .line 121
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    # invokes: Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V
    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiTimerService;->access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 122
    :cond_6
    const/16 v7, 0x3ea

    if-ne v1, v7, :cond_2

    .line 123
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    # invokes: Lcom/android/settings/wifi/WifiTimerService;->enableWifi(Ljava/lang/Boolean;)V
    invoke-static {v7, v8}, Lcom/android/settings/wifi/WifiTimerService;->access$300(Lcom/android/settings/wifi/WifiTimerService;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 125
    :cond_7
    const/16 v7, 0x138b

    if-ne v0, v7, :cond_9

    .line 126
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    # getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 128
    .local v3, "ed":Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    # getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "wifitimer_start_time_checked"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 130
    .local v6, "isStartTimeChecked":Z
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    # getter for: Lcom/android/settings/wifi/WifiTimerService;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/android/settings/wifi/WifiTimerService;->access$000(Lcom/android/settings/wifi/WifiTimerService;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "wifitimer_end_time_checked"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 132
    .local v5, "isEndTimeChecked":Z
    if-nez v6, :cond_8

    if-eqz v5, :cond_2

    .line 134
    :cond_8
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    # invokes: Lcom/android/settings/wifi/WifiTimerService;->sheduleAllAlarms()V
    invoke-static {v7}, Lcom/android/settings/wifi/WifiTimerService;->access$200(Lcom/android/settings/wifi/WifiTimerService;)V

    goto :goto_1

    .line 136
    .end local v3    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v5    # "isEndTimeChecked":Z
    .end local v6    # "isStartTimeChecked":Z
    :cond_9
    const/16 v7, 0x138d

    if-ne v0, v7, :cond_2

    .line 137
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "launch_with"

    const/4 v8, 0x3

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    iget-object v7, p0, Lcom/android/settings/wifi/WifiTimerService$SheduleHandler;->this$0:Lcom/android/settings/wifi/WifiTimerService;

    iget-object v7, v7, Lcom/android/settings/wifi/WifiTimerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
