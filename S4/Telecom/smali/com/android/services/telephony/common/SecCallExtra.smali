.class public Lcom/android/services/telephony/common/SecCallExtra;
.super Ljava/lang/Object;
.source "SecCallExtra.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/services/telephony/common/SecCallExtra;",
            ">;"
        }
    .end annotation
.end field

.field private static final DOMAIN_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RESOLUTION_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IMSConferenceParticipantCount:I

.field private IMSConferenceParticipantCreateTime:[J

.field private IMSConferenceParticipantDuration:[J

.field private IMSConferenceParticipantLookupKey:[Ljava/lang/String;

.field private IMSConferenceParticipantName:[Ljava/lang/String;

.field private IMSConferenceParticipantNumber:[Ljava/lang/String;

.field private IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

.field private IMSConferenceParticipantStartDuration:[J

.field private IMSConferenceParticipantState:[I

.field private IMSConferenceParticipantStatus:[I

.field private mAssisted:I

.field private mCdnipNumber:Ljava/lang/String;

.field private mConnectionCallId:Ljava/lang/String;

.field private mDisconnectForCallBarring:I

.field private mDomain:I

.field private mEndEarly:I

.field private mFirstCallerForIMSConference:Ljava/lang/String;

.field private mGetAliveParticipantNumber:Ljava/lang/String;

.field private mHDIcon:I

.field private mHasBeenVideoCall:I

.field private mIMSConferenceCall:B

.field private mIMSConferenceStateChanged:I

.field private mIsAutorejectCall:I

.field private mIsEpdgCall:I

.field private mIsEpdgW2L:I

.field private mIsIpCall:I

.field private mIsRadNumberConverted:I

.field private mIsRedialCall:I

.field private mIsWaitingCall:I

.field private mLineCtrl:I

.field private mLogSeviceType:I

.field private mModifiedLogType:I

.field private mModifiedTimeMillis:J

.field private mNameForIMSConference:Ljava/lang/String;

.field private mNumberForIMSConference:Ljava/lang/String;

.field private mOutgoingCallMessage:Ljava/lang/String;

.field private mRadOriginalNumber:Ljava/lang/String;

.field private mReceivedCall:B

.field private mRecordSaveFilePath:Ljava/lang/String;

.field private mSubId:J

.field private mTelecomCallId:Ljava/lang/String;

.field private mTouchPoint:Ljava/lang/String;

.field private mType:I

.field private mVideoResolution:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 170
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VOICE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO_SHARE_TX"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO_SHARE_RX"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VIDEO"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MODIFY_REQUEST"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "MODIFY_RECEIVE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->TYPE_MAP:Ljava/util/Map;

    .line 179
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "PS"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->DOMAIN_MAP:Ljava/util/Map;

    .line 184
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QCIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "QVGA"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VGA"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "VGALAND"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CIF"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "HD720"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->RESOLUTION_MAP:Ljava/util/Map;

    .line 727
    new-instance v0, Lcom/android/services/telephony/common/SecCallExtra$1;

    invoke-direct {v0}, Lcom/android/services/telephony/common/SecCallExtra$1;-><init>()V

    sput-object v0, Lcom/android/services/telephony/common/SecCallExtra;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    .line 41
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    .line 43
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    .line 47
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    .line 49
    iput v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    .line 51
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    .line 53
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    .line 55
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    .line 57
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    .line 59
    iput v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    .line 61
    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    .line 63
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    .line 67
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    .line 69
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    .line 81
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    .line 83
    iput-wide v4, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:J

    .line 89
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    .line 91
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    .line 93
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    .line 95
    iput-wide v4, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    .line 97
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    .line 99
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    .line 101
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    .line 103
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    .line 105
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    .line 107
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    .line 109
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    .line 110
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    .line 111
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantName:[Ljava/lang/String;

    .line 112
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

    .line 113
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantLookupKey:[Ljava/lang/String;

    .line 114
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    .line 115
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    .line 116
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    .line 117
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    .line 118
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    .line 226
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    .line 41
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    .line 43
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    .line 47
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    .line 49
    iput v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    .line 51
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    .line 53
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    .line 55
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    .line 57
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    .line 59
    iput v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    .line 61
    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    .line 63
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    .line 67
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    .line 69
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    .line 81
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    .line 83
    iput-wide v4, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:J

    .line 89
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    .line 91
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    .line 93
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    .line 95
    iput-wide v4, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    .line 97
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    .line 99
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    .line 101
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    .line 103
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    .line 105
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    .line 107
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    .line 109
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    .line 110
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    .line 111
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantName:[Ljava/lang/String;

    .line 112
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

    .line 113
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantLookupKey:[Ljava/lang/String;

    .line 114
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    .line 115
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    .line 116
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    .line 117
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    .line 118
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    .line 716
    invoke-virtual {p0, p1}, Lcom/android/services/telephony/common/SecCallExtra;->readFromParcel(Landroid/os/Parcel;)V

    .line 717
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/services/telephony/common/SecCallExtra;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/services/telephony/common/SecCallExtra;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x6

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    .line 41
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    .line 43
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    .line 47
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    .line 49
    iput v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    .line 51
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    .line 53
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    .line 55
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    .line 57
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    .line 59
    iput v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    .line 61
    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    .line 63
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    .line 67
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    .line 69
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    .line 73
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    .line 75
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    .line 81
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    .line 83
    iput-wide v4, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:J

    .line 89
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    .line 91
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    .line 93
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    .line 95
    iput-wide v4, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    .line 97
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    .line 99
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    .line 101
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    .line 103
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    .line 105
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    .line 107
    iput-object v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    .line 109
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    .line 110
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    .line 111
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantName:[Ljava/lang/String;

    .line 112
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

    .line 113
    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantLookupKey:[Ljava/lang/String;

    .line 114
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    .line 115
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    .line 116
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    .line 117
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    .line 118
    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    .line 229
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    .line 230
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    .line 231
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    .line 232
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    .line 233
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    .line 234
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    .line 235
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    .line 236
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    .line 237
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    .line 238
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    .line 239
    iget-byte v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    .line 240
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    .line 241
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    .line 242
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    .line 243
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    .line 244
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    .line 245
    iget-byte v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    .line 246
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    .line 247
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    .line 248
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    .line 249
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    .line 250
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    .line 251
    iget-wide v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:J

    iput-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:J

    .line 252
    iget-wide v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    iput-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    .line 253
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    .line 254
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    .line 255
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    .line 256
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    .line 257
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    .line 258
    iget v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    .line 259
    iget-object v0, p1, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public static createSecCallExtraBundle(Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 195
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 196
    const-string v1, "sec_call_extra"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 197
    return-object v0
.end method

.method public static getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 1

    .prologue
    .line 218
    if-nez p0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 222
    :goto_0
    return-object v0

    .line 221
    :cond_0
    const-class v0, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 222
    const-string v0, "sec_call_extra"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/services/telephony/common/SecCallExtra;

    goto :goto_0
.end method

.method public static setSecCallExtraToBundle(Landroid/os/Bundle;Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    const/4 p0, 0x0

    .line 214
    :goto_0
    return-object p0

    .line 210
    :cond_0
    if-nez p0, :cond_1

    .line 211
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 213
    :cond_1
    const-string v0, "sec_call_extra"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method


# virtual methods
.method public final IsIPCall()Z
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 721
    const/4 v0, 0x0

    return v0
.end method

.method public final getCdnipNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisconnectForCallBarring()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 508
    iget v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDomain()I
    .locals 1

    .prologue
    .line 327
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    return v0
.end method

.method public final getEpdgCall()Z
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getEpdgW2L()Z
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getHDIcon()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    return v0
.end method

.method public final getHasBeenVideoCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 516
    iget v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLogServiceType()I
    .locals 1

    .prologue
    .line 484
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    return v0
.end method

.method public final getModifiedLogType()I
    .locals 1

    .prologue
    .line 492
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    return v0
.end method

.method public final getModifiedTimeMillis()J
    .locals 2

    .prologue
    .line 476
    iget-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    return-wide v0
.end method

.method public final getRadOriginalNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getRecordSaveFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getTelecomCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    return v0
.end method

.method public final isAutoRejectCall()Z
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isIMSConferenceCall()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 369
    iget-byte v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLineCtrl()Z
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isRadConvertNumber()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 404
    iget v1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    .line 675
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    .line 676
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    .line 677
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    .line 678
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    .line 679
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    .line 680
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    .line 681
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    .line 682
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    .line 683
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    .line 684
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    .line 685
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    .line 686
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    .line 687
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    .line 688
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    .line 689
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    .line 690
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    .line 691
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    .line 692
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    .line 693
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    .line 694
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:J

    .line 695
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    .line 696
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    .line 697
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    .line 698
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    .line 699
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    .line 700
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    .line 701
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    .line 702
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    .line 703
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    .line 704
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantName:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantLookupKey:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 709
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 710
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 711
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 712
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    .line 713
    return-void
.end method

.method public final setAssisted(I)V
    .locals 0

    .prologue
    .line 524
    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    .line 525
    return-void
.end method

.method public final setConnectionCallId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public final setDisconnectForCallBarring(Z)V
    .locals 1

    .prologue
    .line 504
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    .line 505
    return-void
.end method

.method public final setDomain(I)V
    .locals 0

    .prologue
    .line 324
    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    .line 325
    return-void
.end method

.method public final setEndEarly(Z)V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    .line 497
    return-void
.end method

.method public final setHDIcon(I)V
    .locals 0

    .prologue
    .line 331
    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    .line 332
    return-void
.end method

.method public final setIMSConferenceCall(B)V
    .locals 0

    .prologue
    .line 365
    iput-byte p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    .line 366
    return-void
.end method

.method public final setIPCall(Z)V
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    .line 304
    return-void
.end method

.method public final setLineCtrl(Z)V
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    .line 314
    return-void
.end method

.method public final setLogServiceType(I)V
    .locals 0

    .prologue
    .line 480
    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    .line 481
    return-void
.end method

.method public final setModifiedLogType(I)V
    .locals 0

    .prologue
    .line 488
    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    .line 489
    return-void
.end method

.method public final setModifiedTimeMillis(J)V
    .locals 1

    .prologue
    .line 472
    iput-wide p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    .line 473
    return-void
.end method

.method public final setOutgoingCallMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    .line 386
    return-void
.end method

.method public final setRadConvertNumber(Z)V
    .locals 1

    .prologue
    .line 400
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    .line 401
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setRadOriginalNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public final setReceivedCall(B)V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    .line 378
    return-void
.end method

.method public final setRedialCall(Z)V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    .line 284
    return-void
.end method

.method public final setSubId(J)V
    .locals 1

    .prologue
    .line 464
    iput-wide p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:J

    .line 465
    return-void
.end method

.method public final setTelecomCallId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public final setTouchPoint(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public final setType(I)V
    .locals 1

    .prologue
    .line 317
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    .line 318
    return-void
.end method

.method public final setVideoResolution(I)V
    .locals 0

    .prologue
    .line 354
    iput p1, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    .line 355
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 742
    invoke-static {p0}, Lcom/google/common/base/Equivalences;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mTelecomCallId"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mConnectionCallId"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsRedialCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsAutorejectCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsWaitingCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsIpCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mLineCtrl"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mType"

    sget-object v2, Lcom/android/services/telephony/common/SecCallExtra;->TYPE_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mDomain"

    sget-object v2, Lcom/android/services/telephony/common/SecCallExtra;->DOMAIN_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mHDIcon"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsEpdgCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsEpdgW2L"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mVideoResolution"

    sget-object v2, Lcom/android/services/telephony/common/SecCallExtra;->RESOLUTION_MAP:Ljava/util/Map;

    iget v3, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIMSConferenceCall"

    iget-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIMSConferenceStateChanged"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNameForIMSConference"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mNumberForIMSConference"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mGetAliveParticipantNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mFirstCallerForIMSConference"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mReceivedCall"

    iget-byte v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mOutgoingCallMessage"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mRadOriginalNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mIsRadNumberConverted"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mCdnipNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mRecordSaveFilePath"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mSubId"

    iget-wide v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mModifiedTimeMillis"

    iget-wide v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;J)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mLogSeviceType"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mModifiedLogType"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mEndEarly"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mDisconnectForCallBarring"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mHasBeenVideoCall"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "mAssisted"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantCount"

    iget v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;I)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantNumber"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantState"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantStatus"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantCreateTime"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantStartduration"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "IMSConferenceParticipantDuration"

    iget-object v2, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/Objects$ToStringHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/base/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTelecomCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mConnectionCallId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 624
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRedialCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsAutorejectCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsWaitingCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsIpCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 628
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLineCtrl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDomain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 631
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHDIcon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 632
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsEpdgW2L:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 634
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mVideoResolution:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 635
    iget-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceCall:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 636
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIMSConferenceStateChanged:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 637
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNameForIMSConference:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 638
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mNumberForIMSConference:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mGetAliveParticipantNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mFirstCallerForIMSConference:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 641
    iget-byte v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mReceivedCall:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 642
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mOutgoingCallMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRadOriginalNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mIsRadNumberConverted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mCdnipNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mRecordSaveFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 647
    iget-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mSubId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 648
    iget-wide v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedTimeMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 649
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mLogSeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 650
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mModifiedLogType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 651
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mEndEarly:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 652
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mDisconnectForCallBarring:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 653
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mHasBeenVideoCall:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mAssisted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 655
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->mTouchPoint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 656
    iget v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 657
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantNumber:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantName:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 659
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantPhotoUri:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantLookupKey:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 661
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantState:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 662
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStatus:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 663
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantCreateTime:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 664
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantStartDuration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 665
    iget-object v0, p0, Lcom/android/services/telephony/common/SecCallExtra;->IMSConferenceParticipantDuration:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 666
    return-void
.end method
