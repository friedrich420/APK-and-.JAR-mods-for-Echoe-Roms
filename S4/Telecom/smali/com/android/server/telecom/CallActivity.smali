.class public Lcom/android/server/telecom/CallActivity;
.super Landroid/app/Activity;
.source "CallActivity.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 99
    new-instance v0, Lcom/android/server/telecom/CallActivity$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/CallActivity$1;-><init>(Lcom/android/server/telecom/CallActivity;)V

    iput-object v0, p0, Lcom/android/server/telecom/CallActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isPenMultiWindow()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 412
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    .line 414
    if-eqz v1, :cond_0

    const/16 v2, 0x800

    :try_start_0
    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const/4 v0, 0x1

    .line 421
    :cond_0
    :goto_0
    return v0

    .line 420
    :catch_0
    move-exception v1

    const-string v1, "NullPointerException Caught : "

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private processOutgoingCallIntent(Landroid/content/Intent;)Z
    .locals 12

    .prologue
    const v11, 0x7f08002e

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 168
    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->processOutgoingCallIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 170
    if-nez p1, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v3

    .line 172
    :cond_1
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/telecom/BluetoothManager;->processOutgoingCallIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 174
    if-eqz p1, :cond_0

    .line 177
    :cond_2
    const-string v0, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v0, "MdmExtension"

    const-string v1, "processOutgoingCallIntent()"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v0, v1, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v5, v6}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v1, v2

    :goto_1
    const-string v0, "enterprise_policy"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    :goto_2
    const-string v7, "MdmExtension"

    const-string v8, "phoneRestrictionPolicy != null"

    new-array v9, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7, v8, v9}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1d

    if-nez v1, :cond_1d

    invoke-virtual {v0, v6}, Landroid/app/enterprise/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v0

    :goto_3
    if-nez v1, :cond_3

    if-nez v0, :cond_3

    const v0, 0x10400b7

    invoke-static {v5, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string v0, "MdmExtension"

    const-string v1, "!canMakeCall - finish"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v0, v1, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p1, v4

    .line 179
    :cond_3
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 183
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 185
    const-string v5, "voicemail"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 186
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "sip"

    :goto_4
    invoke-static {v0, v6, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 190
    :goto_5
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 191
    const-string v5, "no_outgoing_calls"

    invoke-virtual {v0, v5}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0, v1}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 195
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 197
    const-string v0, "Rejecting non-emergency phone call due to DISALLOW_OUTGOING_CALLS restriction"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    move v1, v3

    .line 178
    goto/16 :goto_1

    .line 186
    :cond_5
    const-string v0, "tel"

    goto :goto_4

    .line 202
    :cond_6
    const-string v0, "appops"

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 206
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v5, v7}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v5

    .line 208
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 214
    :goto_6
    const/16 v7, 0xd

    invoke-virtual {v0, v7, v5, v4}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rejecting call from uid "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 211
    :catch_0
    move-exception v5

    const/4 v5, -0x1

    .line 212
    goto :goto_6

    .line 221
    :cond_7
    if-eqz v6, :cond_9

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 222
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_8

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 225
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 231
    :cond_9
    invoke-static {p0, p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->isAvailableInternationCall(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 232
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    const v1, 0x7f080039

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 237
    :cond_a
    const-string v0, "disable_add_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 239
    const-string v0, "CANNOT make 2nd IMS call!!"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, v11, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 242
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->finish()V

    goto/16 :goto_0

    .line 246
    :cond_b
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isSupportUsimMobiltyforKOR$14d1abca()Z

    .line 247
    const-string v0, "support_nsri_secure"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 252
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isNsriSecureCallMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 253
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, v11, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->finish()V

    goto/16 :goto_0

    .line 260
    :cond_c
    const-string v0, "feature_multisim_dsda"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->blockOtherSlotCallForCTCRoaming(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 263
    const-string v0, "Can not make call by other slot during call for CTC Roaming DSST"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-static {v0, v11, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 266
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->finish()V

    goto/16 :goto_0

    .line 271
    :cond_d
    const-string v0, "end_call_when_dial_e911"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 272
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    .line 273
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 275
    if-nez v0, :cond_e

    if-eqz v4, :cond_11

    :cond_e
    const-string v5, "911"

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 276
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " hangup call for emergency call "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/server/telecom/secutils/TelecomUtils;->mRedialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    if-eqz v0, :cond_f

    .line 279
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 282
    :cond_f
    if-eqz v4, :cond_10

    .line 283
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 286
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->finish()V

    goto/16 :goto_0

    .line 291
    :cond_11
    const-string v0, "att_volte_ui"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 292
    invoke-static {p0, v1}, Lcom/android/server/telecom/TelephonyUtil;->shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    .line 293
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v4

    .line 294
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/CallsManager;->getHeldCall()Lcom/android/server/telecom/Call;

    move-result-object v5

    .line 295
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v7

    .line 296
    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->isPSVoiceCall(Lcom/android/server/telecom/Call;)Z

    move-result v8

    .line 298
    if-nez v7, :cond_12

    if-eqz v8, :cond_15

    :cond_12
    if-eqz v0, :cond_15

    .line 299
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VoLTE tc 14.2, hangup fgcall for emergency call "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/telecom/secutils/TelecomUtils;->mVolteRedialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    if-eqz v4, :cond_13

    .line 303
    invoke-virtual {v4}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 306
    :cond_13
    if-eqz v5, :cond_14

    .line 307
    invoke-virtual {v5}, Lcom/android/server/telecom/Call;->disconnect()V

    .line 310
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->finish()V

    goto/16 :goto_0

    .line 316
    :cond_15
    const-string v0, "ltn_auto_csp"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 317
    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    const-string v1, "AutoCSP"

    const-string v4, "Check if AutoCSP Service is available"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/TelecomApp;->getAutoCSP()Lcom/android/server/telecom/IAutoCSP;

    move-result-object v1

    .line 324
    if-eqz v1, :cond_17

    .line 326
    :try_start_1
    invoke-interface {v1}, Lcom/android/server/telecom/IAutoCSP;->isAutoCSPEnabled()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 328
    invoke-interface {v1, v0}, Lcom/android/server/telecom/IAutoCSP;->getAutoCSPNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 332
    const v0, 0x7f08009d

    const/4 v4, 0x0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 334
    :cond_16
    const-string v0, "tel"

    const/4 v4, 0x0

    invoke-static {v0, v1, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 344
    :cond_17
    :goto_7
    const-string v1, "is_default_dialer"

    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v2

    :goto_8
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 347
    const-string v0, "international_dial_assist_dcm"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "international_dial_assist_kdi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 350
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomUtils;->checkInterprefixPopup(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/server/telecom/operator/jpn/SecJpnTelecomDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    const-string v1, "parcelable_call_intent"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 353
    const-string v1, "type_of_dialog"

    const/16 v2, 0x79

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    invoke-virtual {p0, v0}, Lcom/android/server/telecom/CallActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 336
    :catch_1
    move-exception v0

    .line 337
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    :cond_19
    move v0, v3

    .line 344
    goto :goto_8

    .line 360
    :cond_1a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1b

    .line 361
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/telecom/CallReceiver;->processOutgoingCallIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    goto/16 :goto_0

    .line 363
    :cond_1b
    invoke-direct {p0, p1, v3}, Lcom/android/server/telecom/CallActivity;->sendBroadcastToReceiver(Landroid/content/Intent;Z)Z

    move v3, v2

    .line 365
    goto/16 :goto_0

    :cond_1c
    move-object v1, v0

    goto/16 :goto_5

    :cond_1d
    move v0, v2

    goto/16 :goto_3

    :cond_1e
    move-object v0, v4

    goto/16 :goto_2
.end method

.method private sendBroadcastToReceiver(Landroid/content/Intent;Z)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 403
    const-string v0, "is_incoming_call"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 404
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 405
    const-class v0, Lcom/android/server/telecom/CallReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 406
    const-string v0, "Sending broadcast as user to CallReceiver- isIncoming: %s"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 407
    sget-object v0, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/telecom/CallActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 408
    return v4
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 90
    :goto_0
    const-string v3, "delay_activity_finish"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    .line 91
    iget-object v0, p0, Lcom/android/server/telecom/CallActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 96
    :goto_1
    const-string v0, "onCreate: end"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-void

    .line 88
    :cond_0
    const-class v3, Lcom/android/server/telecom/CallActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Attempt to deliver non-CALL action; forcing to CALL"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "android.intent.action.CALL"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "support_penwindow_callscreen"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "SUPPORT_PENWINDOW_CALLSCREEN isPenMultiWindow()"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/telecom/CallActivity;->isPenMultiWindow()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "getMultiWindowStyle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/telecom/CallActivity;->isPenMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/server/telecom/CallActivity;->isPenMultiWindow()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/telecom/TelecomApp;->setPenWindow(Z)V

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/telecom/TelecomApp;->setMWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    :cond_2
    :goto_2
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->setLastMoCallIntent(Landroid/content/Intent;)V

    const-string v3, "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "speakerphoneOn : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/server/telecom/CallActivity;->processOutgoingCallIntent(Landroid/content/Intent;)Z

    move-result v0

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/telecom/TelecomApp;->setPenWindow(Z)V

    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/telecom/TelecomApp;->setMWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_2

    :cond_5
    const-string v4, "android.telecom.action.INCOMING_CALL"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v0}, Lcom/android/server/telecom/CallReceiver;->processIncomingCallIntent(Landroid/content/Intent;)V

    :cond_6
    :goto_3
    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-direct {p0, v0, v2}, Lcom/android/server/telecom/CallActivity;->sendBroadcastToReceiver(Landroid/content/Intent;Z)Z

    goto :goto_3

    .line 94
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/telecom/CallActivity;->finish()V

    goto/16 :goto_1
.end method
