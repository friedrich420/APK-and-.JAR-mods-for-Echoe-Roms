.class public final Lcom/android/server/telecom/secutils/AutoRedial;
.super Ljava/lang/Object;
.source "AutoRedial.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRedialCount:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    .line 44
    iput-object p1, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method


# virtual methods
.method public final startAutoRedial(Lcom/android/server/telecom/Call;I)V
    .locals 7

    .prologue
    const/16 v6, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autoredial_mode_sim2"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_1
    const-string v3, "auto_retry_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->shouldMakeAutoRedial(Landroid/content/Context;Z)Z

    move-result v0

    :cond_0
    const-string v3, "AutoRedial"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startAutoRedial : isRedialMode = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_7

    move v0, v2

    :goto_2
    if-eqz v0, :cond_b

    .line 48
    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    .line 49
    const-string v0, "auto_retry_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    invoke-static {v0, v6}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->recalculateRedialCount(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    .line 51
    :cond_1
    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    new-instance v3, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v3}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    .line 55
    invoke-virtual {v3, v1}, Lcom/android/services/telephony/common/SecCallExtra;->setRedialCall(Z)V

    .line 56
    const-string v1, "videocall"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    const-string v1, "videocall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 59
    :cond_2
    const-string v1, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->createSecCallExtraBundle(Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/server/telecom/CallReceiver;->processOutgoingCallIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 66
    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    .line 47
    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autoredial_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    goto :goto_1

    :cond_6
    move v0, v2

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x3

    if-eq p2, v0, :cond_8

    const-string v0, "AutoRedial"

    const-string v3, "startAutoRedial : previous state is not Dialing"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto :goto_2

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "AutoRedial"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isEmergencyCall = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    if-ne v0, v6, :cond_a

    move v0, v2

    goto/16 :goto_2

    :sswitch_0
    const-string v3, "AutoRedial"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startAutoRedial : DO not make redial in current disconnectedCause : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v2

    goto/16 :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_2

    .line 64
    :cond_b
    iput v2, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    goto :goto_3

    :cond_c
    move v0, v2

    goto/16 :goto_0

    .line 47
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x7 -> :sswitch_0
        0x10 -> :sswitch_0
        0x15 -> :sswitch_0
        0x24 -> :sswitch_0
    .end sparse-switch
.end method
