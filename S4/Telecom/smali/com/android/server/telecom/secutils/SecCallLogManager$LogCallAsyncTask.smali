.class final Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;
.super Landroid/os/AsyncTask;
.source "SecCallLogManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/SecCallLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LogCallAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/secutils/SecCallLogManager;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/secutils/SecCallLogManager;B)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;-><init>(Lcom/android/server/telecom/secutils/SecCallLogManager;)V

    return-void
.end method

.method private varargs doInBackground([Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)[Landroid/net/Uri;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 634
    array-length v3, p1

    .line 635
    new-array v4, v3, [Landroid/net/Uri;

    move v1, v2

    .line 636
    :goto_0
    if-ge v1, v3, :cond_0

    .line 637
    aget-object v0, p1, v1

    .line 639
    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->makeLogValue(Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)Landroid/content/ContentValues;

    move-result-object v5

    .line 642
    :try_start_0
    iget-object v6, v0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v0, v0, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->dbUri:Landroid/net/Uri;

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    aput-object v0, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Exception raised during adding CallLog entry."

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v6, v7}, Lcom/android/server/telecom/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 645
    const/4 v0, 0x0

    aput-object v0, v4, v1

    goto :goto_1

    .line 648
    :cond_0
    return-object v4
.end method

.method private makeLogValue(Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)Landroid/content/ContentValues;
    .locals 10

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x0

    .line 652
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 654
    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 655
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->context:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callType:I

    invoke-static {v0, v2, v5}, Lcom/android/server/telecom/EcidContact;->doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/telecom/EcidContact;

    move-result-object v0

    .line 656
    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "Doing Ecid Call For CallLogManager Lookup"

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 658
    if-eqz v0, :cond_5

    .line 659
    iget-object v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/telecom/EcidContact;->getCityId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    invoke-virtual {v0}, Lcom/android/server/telecom/EcidContact;->getFirstName()Ljava/lang/String;

    move-result-object v5

    .line 666
    invoke-virtual {v0}, Lcom/android/server/telecom/EcidContact;->getLastName()Ljava/lang/String;

    move-result-object v6

    .line 667
    invoke-virtual {v0}, Lcom/android/server/telecom/EcidContact;->getBizName()Ljava/lang/String;

    move-result-object v7

    .line 668
    invoke-virtual {v0}, Lcom/android/server/telecom/EcidContact;->getCnapName()Ljava/lang/String;

    move-result-object v0

    .line 670
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 671
    const-string v8, "cityid"

    invoke-virtual {v4, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 675
    const-string v2, "fname"

    invoke-virtual {v4, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 679
    const-string v2, "lname"

    invoke-virtual {v4, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 683
    const-string v2, "bname"

    invoke-virtual {v4, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    const-string v2, "Unknown Name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Wireless Caller"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 688
    const-string v2, "cnap_name"

    invoke-virtual {v4, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_4
    invoke-static {}, Lcom/android/server/telecom/EcidContact;->clearEcidContacts()V

    .line 696
    :cond_5
    const-string v0, "date"

    iget-wide v6, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->timestamp:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 697
    const-string v0, "duration"

    iget v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->durationInSec:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 698
    const-string v0, "type"

    iget v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 700
    iget-object v2, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->number:Ljava/lang/String;

    .line 701
    iget v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    .line 703
    iget v5, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_13

    .line 704
    const-string v1, "-2"

    .line 713
    :goto_0
    const-string v2, "number"

    invoke-virtual {v4, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    const-string v1, "presentation"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 716
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_6

    .line 717
    const-string v0, "ci_person_id"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v6, v1, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 718
    const-string v0, "ci_normalizedNumber"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->normalizedNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const-string v0, "ci_phoneNumber"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    :cond_6
    const-string v0, "cnap_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 724
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->CheckDisplayPLettrering()Z

    move-result v0

    if-nez v0, :cond_7

    .line 725
    iget-object v0, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$202(Lcom/android/server/telecom/secutils/SecCallLogManager;Ljava/lang/String;)Ljava/lang/String;

    .line 728
    :cond_7
    const-string v0, "cnap_name"

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->cnapName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$200(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    :cond_8
    const-string v0, "cdnip_supplementary_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 731
    const-string v0, "cdnip_number"

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->cdnipNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$300(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_9
    const-string v0, "voice_call_recording_call_log"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 734
    const-string v0, "sec_record"

    iget-object v1, p0, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->this$0:Lcom/android/server/telecom/secutils/SecCallLogManager;

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->recordSaveFilePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$400(Lcom/android/server/telecom/secutils/SecCallLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_a
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 738
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    if-eqz v0, :cond_c

    .line 741
    :try_start_0
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 746
    :goto_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    .line 747
    if-nez v1, :cond_b

    move v0, v3

    .line 749
    :cond_b
    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "makeLogValue : account_id -"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->accountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v5}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " , sim_id - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    const-string v1, "sim_id"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string v1, "simnum"

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 755
    :cond_c
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->photoringUrl:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 756
    const-string v0, "photoring_uri"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->photoringUrl:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_d
    const-string v0, "feature_logs_kor"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 760
    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->serviceType:I
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$500()I

    move-result v0

    iput v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    .line 762
    :cond_e
    const-string v0, "service_type"

    iget v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->service_type:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 763
    const-string v0, "ctc_vip_mode"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 764
    iget-boolean v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isAutoRejectCall:Z

    if-eqz v0, :cond_16

    .line 765
    const-string v0, "reject_flag"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    :cond_f
    :goto_2
    const-string v0, "ctc_call_time_duration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 772
    iget-boolean v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->isCallOutDuration:Z

    if-eqz v0, :cond_17

    .line 773
    const-string v0, "call_out_duration"

    iget v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->durationInSec:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    :cond_10
    :goto_3
    sput-boolean v3, Lcom/android/server/telecom/operator/OperatorUtils;->mIsWzoneCall:Z

    .line 781
    const-string v0, "usa_cdma_smc_fac_req"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 782
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v4, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->updateContentValues(Landroid/content/ContentValues;Lcom/android/internal/telephony/CallerInfo;)V

    .line 784
    :cond_11
    const-string v0, "ltn_sdnname_display"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_12

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_12

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 787
    const-string v0, "name"

    iget-object v1, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    :cond_12
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    if-eqz v0, :cond_18

    .line 791
    iget-object v0, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->extraValues:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 792
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 705
    :cond_13
    iget v5, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    if-ne v5, v1, :cond_14

    .line 706
    const-string v1, "-1"

    goto/16 :goto_0

    .line 707
    :cond_14
    iget v5, p1, Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;->presentation:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_15

    .line 708
    const-string v1, "-3"

    goto/16 :goto_0

    .line 709
    :cond_15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 710
    const-string v0, "-1"

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 711
    goto/16 :goto_0

    .line 742
    :catch_0
    move-exception v0

    .line 743
    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "getPhoneId failed : "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    goto/16 :goto_1

    .line 767
    :cond_16
    const-string v0, "reject_flag"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 775
    :cond_17
    const-string v0, "call_out_duration"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    .line 795
    :cond_18
    return-object v4

    :cond_19
    move-object v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method protected final bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 631
    check-cast p1, [Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;

    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/SecCallLogManager$LogCallAsyncTask;->doInBackground([Lcom/android/server/telecom/secutils/SecCallLogManager$AddCallArgs;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 631
    check-cast p1, [Landroid/net/Uri;

    array-length v2, p1

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, p1, v0

    if-nez v3, :cond_0

    # getter for: Lcom/android/server/telecom/secutils/SecCallLogManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/secutils/SecCallLogManager;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed to write call to the log."

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
