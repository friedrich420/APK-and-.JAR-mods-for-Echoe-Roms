.class public final Lcom/android/server/telecom/EcidContact;
.super Ljava/lang/Object;
.source "EcidContact.java"


# static fields
.field private static COLUMN_CITY:I

.field private static COLUMN_COMPANY:I

.field private static COLUMN_COUNTRY:I

.field private static COLUMN_FIRST_NAME:I

.field private static COLUMN_FRIENDS:I

.field private static COLUMN_IMAGE:I

.field private static COLUMN_LAST_NAME:I

.field private static COLUMN_NAME:I

.field private static COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

.field private static COLUMN_NUMBER:I

.field private static COLUMN_PREFER_CID_IMAGE:I

.field private static COLUMN_SAME_NETWORK:I

.field private static COLUMN_STATE:I

.field private static COLUMN_STATE_ABBR:I

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static m_mapEcidContacts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/telecom/EcidContact;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m_bNoOutgoingCallRestriction:Z

.field private m_bizName:Ljava/lang/String;

.field private m_cityName:Ljava/lang/String;

.field private m_cname:Ljava/lang/String;

.field private m_countryName:Ljava/lang/String;

.field private m_displayName:Ljava/lang/String;

.field private m_firstName:Ljava/lang/String;

.field private m_lastName:Ljava/lang/String;

.field private m_number:Ljava/lang/String;

.field private m_stateAbbr:Ljava/lang/String;

.field private m_stateName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "content://com.cequint.ecid/lookup"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/telecom/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/EcidContact;->m_bNoOutgoingCallRestriction:Z

    return-void
.end method

.method public static clearEcidContacts()V
    .locals 2

    .prologue
    .line 96
    sget-object v1, Lcom/android/server/telecom/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    monitor-enter v1

    .line 97
    :try_start_0
    sget-object v0, Lcom/android/server/telecom/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    const-string v0, "EcidContact"

    const-string v1, "clearEcidContacts()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static doLookup(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/telecom/EcidContact;
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 108
    const-string v0, "EcidContact"

    const-string v1, "ECID AOSP VERSION: 2.3.6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-eqz p0, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 110
    invoke-static {p1}, Lcom/android/server/telecom/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/server/telecom/EcidContact;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 112
    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Skip look up, already done previously: ctx: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v0

    .line 126
    :goto_0
    return-object v2

    .line 115
    :cond_0
    new-instance v8, Lcom/android/server/telecom/EcidContact;

    invoke-direct {v8}, Lcom/android/server/telecom/EcidContact;-><init>()V

    .line 116
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/telecom/EcidContact;->m_number:Ljava/lang/String;

    .line 117
    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    move v1, v6

    :goto_1
    const-string v0, "EcidContact"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Lookup "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v4, v6, [Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "system"

    :goto_2
    aput-object v1, v4, v7

    sget-object v1, Lcom/android/server/telecom/EcidContact;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "_ID"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v1, "_COUNT"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    const-string v1, "cid_pNumber"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_NUMBER:I

    const-string v1, "cid_pCityName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_CITY:I

    const-string v1, "cid_pStateName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_STATE:I

    const-string v1, "cid_pStateAbbr"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_STATE_ABBR:I

    const-string v1, "cid_pCountryName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_COUNTRY:I

    const-string v1, "cid_pCompany"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_COMPANY:I

    const-string v1, "cid_pName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_NAME:I

    const-string v1, "cid_pFirstName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_FIRST_NAME:I

    const-string v1, "cid_pLastName"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_LAST_NAME:I

    const-string v1, "cid_pImage"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_IMAGE:I

    const-string v1, "cid_bSameNetwork"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_SAME_NETWORK:I

    const-string v1, "cid_bFriends"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_FRIENDS:I

    const-string v1, "cid_bPreferCidImage"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_PREFER_CID_IMAGE:I

    const-string v1, "cid_bNoOutgoingCallRestriction"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/telecom/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_NUMBER:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_CITY:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/telecom/EcidContact;->m_cityName:Ljava/lang/String;

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_STATE:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/telecom/EcidContact;->m_stateName:Ljava/lang/String;

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_STATE_ABBR:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/telecom/EcidContact;->m_stateAbbr:Ljava/lang/String;

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_COUNTRY:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/telecom/EcidContact;->m_countryName:Ljava/lang/String;

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_COMPANY:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/telecom/EcidContact;->m_bizName:Ljava/lang/String;

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_NAME:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/telecom/EcidContact;->m_cname:Ljava/lang/String;

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_FIRST_NAME:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/telecom/EcidContact;->m_firstName:Ljava/lang/String;

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_LAST_NAME:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Lcom/android/server/telecom/EcidContact;->m_lastName:Ljava/lang/String;

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_IMAGE:I

    invoke-static {v0, v1}, Lcom/android/server/telecom/EcidContact;->getString(Landroid/database/Cursor;I)Ljava/lang/String;

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_SAME_NETWORK:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_FRIENDS:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_PREFER_CID_IMAGE:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    if-ltz v1, :cond_1

    sget v1, Lcom/android/server/telecom/EcidContact;->COLUMN_NO_OUTGOING_CALL_RESTRICTION:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    iput-boolean v6, v8, Lcom/android/server/telecom/EcidContact;->m_bNoOutgoingCallRestriction:Z

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 118
    :goto_4
    sget-object v0, Lcom/android/server/telecom/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    iget-object v1, v8, Lcom/android/server/telecom/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "EcidContact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "added cidContact "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "for number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Lcom/android/server/telecom/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-string v0, "EcidContact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "look up completed: number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    .line 122
    goto/16 :goto_0

    :cond_2
    move v1, v7

    .line 117
    goto/16 :goto_1

    :cond_3
    const-string v1, "user"

    goto/16 :goto_2

    :cond_4
    move v6, v7

    goto :goto_3

    :cond_5
    const-string v0, "EcidContact"

    const-string v1, "No CityID found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 125
    :cond_6
    const-string v0, "EcidContact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "doLookup Invalid Args: ctx: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " number: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public static getCityId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    invoke-static {p0}, Lcom/android/server/telecom/EcidContact;->getEcidContact(Ljava/lang/String;)Lcom/android/server/telecom/EcidContact;

    move-result-object v0

    .line 137
    if-nez v0, :cond_0

    .line 138
    const-string v0, ""

    .line 165
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iget-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_displayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    iget-object v0, v0, Lcom/android/server/telecom/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_0

    .line 146
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_displayName:Ljava/lang/String;

    .line 148
    iget-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_stateName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 150
    iget-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_stateName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_displayName:Ljava/lang/String;

    .line 160
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_displayName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 161
    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_displayName:Ljava/lang/String;

    .line 163
    :cond_3
    const-string v1, "EcidContact"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "m_displayName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/server/telecom/EcidContact;->m_displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, v0, Lcom/android/server/telecom/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_0

    .line 152
    :cond_4
    iget-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/server/telecom/EcidContact;->m_cityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/telecom/EcidContact;->m_stateAbbr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_1

    .line 156
    :cond_5
    iget-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_countryName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 157
    iget-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_countryName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/telecom/EcidContact;->m_displayName:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getEcidContact(Ljava/lang/String;)Lcom/android/server/telecom/EcidContact;
    .locals 2

    .prologue
    .line 91
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/android/server/telecom/EcidContact;->m_mapEcidContacts:Ljava/util/HashMap;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/EcidContact;

    return-object v0
.end method

.method private static getString(Landroid/database/Cursor;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getBizName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_bizName:Ljava/lang/String;

    .line 368
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_cname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_cname:Ljava/lang/String;

    .line 374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getContactName(I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 278
    const-string v0, "EcidContact"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getContactName() for phone:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/telecom/EcidContact;->m_number:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/telecom/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/server/telecom/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/android/server/telecom/EcidContact;->m_cname:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    move v5, v1

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-nez v0, :cond_0

    if-eqz v3, :cond_7

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_1

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_4
    const-string v0, "EcidContact"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gDN len "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    :goto_5
    const-string v3, "EcidContact"

    const-string v4, "getContactName: num: %s type: %s name: %s"

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/telecom/EcidContact;->m_number:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x2

    aput-object v0, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-object v0

    :cond_3
    move v0, v2

    .line 280
    goto :goto_0

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move v4, v2

    goto :goto_2

    :cond_6
    move v5, v2

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_8

    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_bizName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_cname:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const-string v0, "EcidContact"

    const-string v3, "null Contact Display Name"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final getFirstName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 301
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_firstName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    :goto_1
    return-object v0

    .line 300
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 308
    :cond_1
    const-string v0, "EcidContact"

    const-string v1, "null Contact First Name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final getLastName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 315
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    if-eqz v0, :cond_2

    .line 318
    iget-object v0, p0, Lcom/android/server/telecom/EcidContact;->m_lastName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 321
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_1
    return-object v0

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 322
    :cond_1
    const-string v0, "EcidContact"

    const-string v1, "null Contact Last Name"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
