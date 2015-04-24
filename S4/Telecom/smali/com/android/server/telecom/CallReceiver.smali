.class public Lcom/android/server/telecom/CallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/server/telecom/CallReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static processIncomingCallIntent(Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 210
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 213
    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Rejecting incoming call due to null phone account"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    .line 218
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Rejecting incoming call due to null component name"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 222
    :cond_1
    const/4 v1, 0x0

    .line 223
    const-string v2, "android.telecom.extra.INCOMING_CALL_EXTRAS"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    const-string v1, "android.telecom.extra.INCOMING_CALL_EXTRAS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 226
    :cond_2
    sget-object v2, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Processing incoming call from connection service [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/telecom/CallsManager;->processIncomingCallIntent(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static processOutgoingCallIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 14

    .prologue
    const v8, 0x7f08001e

    const/4 v9, -0x1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 86
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 90
    const-string v1, "feature_ctc"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 91
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 93
    :goto_0
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "processOutgoingCallIntent() scheme = "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v10}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "uriString = "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v10}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    const-string v0, "voicemail"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "sip"

    :goto_1
    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    .line 100
    :cond_0
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "handle = "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v10}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    invoke-static {p0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableInternationCall(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    const v0, 0x7f080039

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v6

    .line 206
    :goto_2
    return v0

    .line 97
    :cond_1
    const-string v0, "tel"

    goto :goto_1

    .line 109
    :cond_2
    const-string v0, "prohibit_second_call_in_emergency_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 110
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 112
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Currently EMERGENCY_CALL connection -- ignore this call"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {p0, v7}, Lcom/android/server/telecom/CallReceiver;->showErrorDialog(Landroid/content/Context;I)V

    move v0, v6

    .line 115
    goto :goto_2

    .line 119
    :cond_3
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 122
    if-nez v0, :cond_4

    .line 123
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->selectAccountBySimSlotIDExtra(Landroid/content/Intent;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 127
    :cond_4
    const-string v3, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 128
    const-string v3, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 130
    :goto_3
    const-string v10, "voicemail"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 137
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoiceCallSubId(Landroid/content/Intent;)J

    move-result-wide v10

    .line 138
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(J)Ljava/lang/String;

    move-result-object v10

    .line 139
    if-eqz v10, :cond_5

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 140
    :cond_5
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v1, "processOutgoingCallIntent no voice mail number "

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/server/telecom/CallReceiver;->showErrorDialog(Landroid/content/Context;I)V

    move v0, v6

    .line 142
    goto :goto_2

    .line 146
    :cond_6
    const-string v10, "tel"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 147
    invoke-static {p0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkToInitiateOutgoingCall(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v5

    .line 148
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndParseNumberDuringCSVTCall(Landroid/content/Intent;)Z

    move-result v10

    .line 149
    sget-object v11, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "checkToInitiateOutgoingCall = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v11, v12, v13}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    const/4 v11, 0x4

    if-ne v5, v11, :cond_8

    .line 151
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->removeVideoCallExtra(Landroid/content/Intent;)V

    .line 159
    :cond_7
    invoke-static {p0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkForLGTCDMA(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_9

    move v0, v6

    .line 160
    goto/16 :goto_2

    .line 152
    :cond_8
    if-eqz v5, :cond_7

    .line 153
    if-nez v10, :cond_7

    .line 154
    invoke-static {p0, v5}, Lcom/android/server/telecom/CallReceiver;->showErrorDialog(Landroid/content/Context;I)V

    move v0, v6

    .line 155
    goto/16 :goto_2

    .line 163
    :cond_9
    invoke-static {p0, v2, p1, v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeOutgoingSecCallExtra(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    .line 164
    const-string v5, "is_default_dialer"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 166
    const-string v10, "ip_call"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 167
    const-string v10, "outbarringpwright"

    invoke-virtual {p1, v10, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 168
    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v11

    .line 169
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/android/services/telephony/common/SecCallExtra;->IsIPCall()Z

    move-result v11

    if-eqz v11, :cond_a

    if-nez v10, :cond_a

    .line 170
    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeIpCallNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    const-string v2, "tel"

    invoke-static {v2, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 172
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    :cond_a
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/server/telecom/CallsManager;->startOutgoingCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;

    move-result-object v3

    .line 178
    if-eqz v3, :cond_10

    .line 184
    new-instance v0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/Call;Landroid/content/Intent;Z)V

    .line 186
    invoke-virtual {v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->processIntent()I

    move-result v1

    .line 187
    if-nez v1, :cond_d

    move v0, v7

    .line 189
    :goto_4
    if-nez v0, :cond_e

    if-eqz v3, :cond_e

    .line 190
    invoke-virtual {v3}, Lcom/android/server/telecom/Call;->disconnect()V

    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sparse-switch v1, :sswitch_data_0

    move v0, v6

    move v1, v9

    :goto_5
    if-eq v1, v9, :cond_b

    const-string v1, "error_message_id"

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_b
    if-eq v0, v7, :cond_c

    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 191
    :cond_c
    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendFailureResponse(Landroid/content/Intent;)V

    move v0, v6

    .line 192
    goto/16 :goto_2

    :cond_d
    move v0, v6

    .line 187
    goto :goto_4

    :sswitch_0
    move v0, v6

    move v1, v8

    .line 190
    goto :goto_5

    :sswitch_1
    move v0, v7

    move v1, v9

    goto :goto_5

    .line 193
    :cond_e
    if-eqz v0, :cond_f

    .line 194
    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendSuccessResponse(Landroid/content/Intent;)V

    :cond_f
    :goto_6
    move v0, v7

    .line 206
    goto/16 :goto_2

    .line 197
    :cond_10
    const-string v0, "videocall"

    invoke-virtual {p1, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 198
    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v0

    if-nez v0, :cond_12

    .line 202
    :cond_11
    invoke-static {p0, v7}, Lcom/android/server/telecom/CallReceiver;->showErrorDialog(Landroid/content/Context;I)V

    .line 204
    :cond_12
    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendFailureResponse(Landroid/content/Intent;)V

    goto :goto_6

    :cond_13
    move-object v3, v4

    goto/16 :goto_3

    :cond_14
    move-object v1, v0

    goto/16 :goto_0

    .line 190
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method private static showErrorDialog(Landroid/content/Context;I)V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, -0x1

    const v1, 0x7f08002e

    .line 281
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v2

    .line 322
    :goto_0
    if-ne v0, v1, :cond_2

    .line 323
    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    .line 331
    :goto_1
    return-void

    :pswitch_1
    move v0, v1

    .line 286
    goto :goto_0

    .line 288
    :pswitch_2
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "videocall_settings"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    .line 289
    :goto_2
    if-eqz v0, :cond_1

    .line 290
    const v0, 0x7f080089

    goto :goto_0

    :cond_0
    move v0, v3

    .line 288
    goto :goto_2

    .line 292
    :cond_1
    const v0, 0x7f08008a

    .line 294
    goto :goto_0

    .line 296
    :pswitch_3
    const v0, 0x7f08008b

    .line 297
    goto :goto_0

    .line 299
    :pswitch_4
    const-string v0, "show_missing_voicemail"

    invoke-virtual {v4, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v0, v2

    .line 300
    goto :goto_0

    .line 303
    :pswitch_5
    const v0, 0x7f08009b

    .line 304
    goto :goto_0

    .line 306
    :pswitch_6
    const v0, 0x7f0800ad

    .line 307
    goto :goto_0

    .line 309
    :pswitch_7
    const v0, 0x7f0800ae

    .line 310
    goto :goto_0

    .line 312
    :pswitch_8
    const v0, 0x7f0800af

    .line 313
    goto :goto_0

    .line 315
    :pswitch_9
    const v0, 0x7f0800b0

    .line 316
    goto :goto_0

    .line 318
    :pswitch_a
    const v0, 0x7f08009c

    goto :goto_0

    .line 326
    :cond_2
    if-eq v0, v2, :cond_3

    .line 327
    const-string v1, "error_message_id"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 329
    :cond_3
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 330
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 60
    const-string v0, "is_unknown_call"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 61
    const-string v1, "is_incoming_call"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 62
    const-string v2, "onReceive - isIncomingCall: %s isUnknownCall: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    if-eqz v0, :cond_3

    .line 66
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_1

    const-string v0, "Rejecting unknown call due to null phone account"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, "Rejecting unknown call due to null component name"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/CallsManager;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_0

    .line 67
    :cond_3
    if-eqz v1, :cond_4

    .line 68
    invoke-static {p2}, Lcom/android/server/telecom/CallReceiver;->processIncomingCallIntent(Landroid/content/Intent;)V

    .line 69
    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "h_and_j_as_phone_os_up"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, " isIncomingCall: Screen off"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    goto :goto_0

    .line 75
    :cond_4
    invoke-static {p1, p2}, Lcom/android/server/telecom/CallReceiver;->processOutgoingCallIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
