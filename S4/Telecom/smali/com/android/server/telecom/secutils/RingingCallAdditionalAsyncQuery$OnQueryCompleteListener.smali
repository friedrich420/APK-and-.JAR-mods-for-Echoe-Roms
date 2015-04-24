.class public Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;
.super Ljava/lang/Object;
.source "RingingCallAdditionalAsyncQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnQueryCompleteListener"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRingingCallAdditionalQueryComplete$c03c6f4(ILcom/android/internal/telephony/CallerInfo;Landroid/database/Cursor;)V
    .locals 7

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 155
    const-string v0, " onRingingCallAdditionalQueryComplete"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    sparse-switch p1, :sswitch_data_0

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 163
    :sswitch_0
    if-eqz p3, :cond_0

    .line 165
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    const-string v0, "starred"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 171
    if-eq v0, v4, :cond_2

    .line 173
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    .line 175
    if-ne v0, v1, :cond_1

    .line 177
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/RingTTS;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/RingTTS;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/telecom/secutils/RingTTS;->setStarredContact(Z)V

    .line 181
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onRingingCallAdditionalQueryComplete : STARRED_QUERYING : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 197
    :sswitch_1
    if-eqz p3, :cond_0

    .line 199
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    const-string v0, "group_ringtone"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 205
    if-eq v0, v4, :cond_3

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 207
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 209
    const-string v0, "onRingingCallAdditionalQueryComplete: group ringtone URI : "

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v2

    invoke-static {p0, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 227
    :sswitch_2
    if-eqz p3, :cond_0

    .line 229
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 231
    const-string v0, "group_vibration"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 235
    if-eq v0, v4, :cond_4

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 237
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 239
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/telecom/secutils/CustomVibration;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/CustomVibration;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/telecom/secutils/CustomVibration;->setCustomVibrationUri(Landroid/net/Uri;)V

    .line 241
    const-string v3, "onRingingCallAdditionalQueryComplete: group vibration URI : "

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v4, v2

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    :cond_4
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 261
    :sswitch_3
    if-eqz p3, :cond_7

    .line 263
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    move v0, v1

    .line 269
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 271
    const-string v3, "sec_custom_vibration"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 275
    if-eq v3, v4, :cond_6

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 277
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 279
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/telecom/secutils/CustomVibration;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/secutils/CustomVibration;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/telecom/secutils/CustomVibration;->setCustomVibrationUri(Landroid/net/Uri;)V

    .line 281
    const-string v4, "onRingingCallAdditionalQueryComplete: personal vibration URI : "

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {p0, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_5
    :goto_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 301
    :goto_3
    if-ne v0, v1, :cond_0

    .line 303
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x4

    # getter for: Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->listener:Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;
    invoke-static {}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->access$000()Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, p2, v2, v3}, Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery;->startQuery(Landroid/content/ContentResolver;ILcom/android/internal/telephony/CallerInfo;Lcom/android/server/telecom/secutils/RingingCallAdditionalAsyncQuery$OnQueryCompleteListener;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 287
    goto :goto_2

    :cond_7
    move v0, v1

    .line 297
    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1

    .line 157
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_0
    .end sparse-switch
.end method
