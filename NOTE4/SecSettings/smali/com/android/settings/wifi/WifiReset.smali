.class public Lcom/android/settings/wifi/WifiReset;
.super Ljava/lang/Object;
.source "WifiReset.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/settings/wifi/WifiReset$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiReset$1;-><init>(Lcom/android/settings/wifi/WifiReset;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 46
    iput-object p1, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    .line 47
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiReset;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiReset;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiReset;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiReset;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public reset()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 69
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_internet_service_check_warning"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 70
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_poor_connection_warning"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 71
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_scan_always_enabled"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 73
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_networks_available_notification_on"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_sleep_policy"

    const/4 v6, 0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 76
    const-string v4, "DEFAULT_ON,MENU_ON"

    const-string v5, "DEFAULT_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot20_enable"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 82
    :goto_0
    const-string v4, "ssid"

    const-string v5, "rssi"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 83
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_ap_sort"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 91
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 95
    .local v1, "msg":Landroid/os/Message;
    const/16 v4, 0x1f

    iput v4, v1, Landroid/os/Message;->what:I

    .line 96
    const-string v4, "SKT"

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 97
    iput v7, v1, Landroid/os/Message;->arg1:I

    .line 101
    :goto_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 103
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hidden_ap_sinal_strength"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 104
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_connection_monitor_enable"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 106
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Wifi_ConfigDisconnectApThreshold"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "prioritymode":Ljava/lang/String;
    const-string v4, "KT_Specific"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_connection_monitor_enable"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_connection_monitor_settings"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    const-string v5, "wifitimer_pref"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 113
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v4, "wifitimer_start_time_checked"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    const-string v4, "wifitimer_end_time_checked"

    invoke-interface {v0, v4, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 116
    const-string v4, "wifitimer_done"

    const-string v5, ""

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 117
    const-string v4, "wifitimer_start_time"

    const-string v5, "19:00"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 118
    const-string v4, "wifitimer_end_time"

    const-string v5, "21:00"

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 119
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 121
    invoke-static {}, Lcom/android/settings/Utils;->deleteWifiFiles()V

    .line 123
    new-instance v4, Lcom/android/settings/wifi/WifiReset$2;

    invoke-direct {v4, p0}, Lcom/android/settings/wifi/WifiReset$2;-><init>(Lcom/android/settings/wifi/WifiReset;)V

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiReset$2;->start()V

    .line 130
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 132
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 134
    :cond_1
    return-void

    .line 79
    .end local v0    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "prioritymode":Ljava/lang/String;
    .end local v3    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_hotspot20_enable"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 85
    :cond_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_ap_sort"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 99
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_4
    iput v8, v1, Landroid/os/Message;->arg1:I

    goto/16 :goto_2
.end method

.method public start()V
    .locals 5

    .prologue
    .line 51
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 52
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a1666

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->show()V

    .line 55
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 57
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 58
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xe6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 59
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 61
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 62
    .local v0, "intent":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiReset;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiReset;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    .end local v0    # "intent":Landroid/content/IntentFilter;
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiReset;->reset()V

    goto :goto_0
.end method
