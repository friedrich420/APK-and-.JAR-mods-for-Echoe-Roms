.class public final Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;
.super Landroid/content/AsyncQueryHandler;
.source "RingingCallAdditionalAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field private static listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;


# instance fields
.field private mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

.field private mListener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

.field private mQueryType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-string v0, "RingingCallAdditionalAsyncQuery"

    sput-object v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->LOG_TAG:Ljava/lang/String;

    .line 151
    new-instance v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    invoke-direct {v0}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;-><init>()V

    sput-object v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 105
    iput p2, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mQueryType:I

    .line 107
    iput-object p3, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 109
    iput-object p4, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    .line 111
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    return-object v0
.end method

.method public static startAdditionalQuery(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 117
    const-string v0, "RingingCallAdditionalAsyncQuery"

    const-string v1, "startAdditionalQuery"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 121
    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v1, :cond_1

    .line 122
    const-string v0, "RingingCallAdditionalAsyncQuery"

    const-string v1, "shouldSendToVoicemail"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-nez v1, :cond_2

    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_2

    .line 129
    const/4 v1, 0x2

    sget-object v2, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V

    .line 135
    :cond_2
    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_3

    .line 137
    const/16 v1, 0x8

    sget-object v2, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V

    .line 143
    :cond_3
    iget-boolean v1, p1, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_0

    .line 145
    const/16 v1, 0x10

    sget-object v2, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V

    goto :goto_0
.end method

.method public static startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 327
    new-instance v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;-><init>(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;)V

    .line 345
    sparse-switch p1, :sswitch_data_0

    move-object v7, v2

    move-object v5, v2

    move-object v4, v2

    move-object v3, v2

    :goto_0
    move v1, p1

    move-object v6, v2

    .line 421
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void

    .line 349
    :sswitch_0
    const-string v1, "content://com.android.contacts/contacts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 351
    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "starred"

    aput-object v1, v4, v6

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "_id = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p2, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v7, v2

    .line 361
    goto :goto_0

    .line 367
    :sswitch_1
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 369
    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "group_ringtone"

    aput-object v1, v4, v6

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "contact_id = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p2, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND mimetype = \'vnd.android.cursor.item/group_membership\' AND group_ringtone IS NOT NULL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 381
    const-string v7, "data1 LIMIT 1 "

    goto :goto_0

    .line 389
    :sswitch_2
    sget-object v3, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 391
    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "group_vibration"

    aput-object v1, v4, v6

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "contact_id = "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p2, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND mimetype = \'vnd.android.cursor.item/group_membership\' AND group_vibration IS NOT NULL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 403
    const-string v7, "data1 LIMIT 1 "

    goto :goto_0

    .line 411
    :sswitch_3
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget-wide v4, p2, Lcom/android/internal/telephony/CallerInfo;->contactIdOrZero:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 415
    new-array v4, v7, [Ljava/lang/String;

    const-string v1, "sec_custom_vibration"

    aput-object v1, v4, v6

    move-object v7, v2

    move-object v5, v2

    goto/16 :goto_0

    .line 345
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 441
    sget-object v0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onQueryComplete : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mListener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    iget v1, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mQueryType:I

    iget-object v2, p0, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->mCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;->onRingingCallAdditionalQueryComplete$c03c6f4(ILcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)V

    .line 453
    :cond_0
    return-void
.end method
