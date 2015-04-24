.class final Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;
.super Ljava/lang/Thread;
.source "CustomVibration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/CustomVibration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VibratorThread"
.end annotation


# instance fields
.field private mContinueVibrating:Z

.field private synthetic this$0:Lcom/android/server/telecom/secutils/CustomVibration;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/secutils/CustomVibration;)V
    .locals 1

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 181
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->mContinueVibrating:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/secutils/CustomVibration;B)V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0, p1}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;-><init>(Lcom/android/server/telecom/secutils/CustomVibration;)V

    return-void
.end method

.method private makePersonalVibration(Landroid/net/Uri;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 227
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    iget-object v0, v0, Lcom/android/server/telecom/secutils/CustomVibration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_1

    .line 229
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    const-string v1, "vibration_pattern"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vibration id : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "vibration_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pattern : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/server/telecom/secutils/CustomVibration;->access$100(Ljava/lang/String;)V

    .line 236
    iget-object v2, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    # invokes: Lcom/android/server/telecom/secutils/CustomVibration;->StringToLongArray(Ljava/lang/String;)[J
    invoke-static {v2, v1}, Lcom/android/server/telecom/secutils/CustomVibration;->access$300(Lcom/android/server/telecom/secutils/CustomVibration;Ljava/lang/String;)[J

    move-result-object v1

    .line 238
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->mContinueVibrating:Z

    if-eqz v2, :cond_0

    .line 239
    iget-object v2, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    iget-object v2, v2, Lcom/android/server/telecom/secutils/CustomVibration;->mVibrator:Landroid/os/SystemVibrator;

    sget-object v3, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v2, v1, v6, v3}, Landroid/os/SystemVibrator;->vibrate([JILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 240
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 241
    const/4 v0, 0x1

    .line 246
    :goto_0
    return v0

    .line 244
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v6

    .line 246
    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mCustomVibrationUri : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    iget-object v1, v1, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->access$100(Ljava/lang/String;)V

    .line 192
    const-string v0, "personal_vibration"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    iget-object v0, v0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    iget-object v0, v0, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->makePersonalVibration(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    iget-object v0, v0, Lcom/android/server/telecom/secutils/CustomVibration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    iget-object v1, v1, Lcom/android/server/telecom/secutils/CustomVibration;->mCustomVibrationUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    const-string v1, "Custom Uri is invalid, So make default personal vibration"

    # invokes: Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/telecom/secutils/CustomVibration;->access$100(Ljava/lang/String;)V

    .line 200
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->makePersonalVibration(Landroid/net/Uri;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    iget-object v1, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/secutils/CustomVibration;->access$200(Lcom/android/server/telecom/secutils/CustomVibration;Ljava/lang/String;Z)V

    goto :goto_0

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    iget-object v0, v0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibrator:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mContinueVibrating : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->mContinueVibrating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->access$100(Ljava/lang/String;)V

    .line 215
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->mContinueVibrating:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    iget-object v0, v0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibrator:Landroid/os/SystemVibrator;

    const/16 v1, 0xd

    sget-object v2, Landroid/os/SystemVibrator$MagnitudeType;->CallMagnitude:Landroid/os/SystemVibrator$MagnitudeType;

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe(ILandroid/os/SystemVibrator$MagnitudeType;)V

    .line 218
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    .line 222
    :cond_2
    const-string v0, "mVibrator == null : "

    # invokes: Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->access$100(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final stopThread()V
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopThread : mContinueVibrating :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->mContinueVibrating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/telecom/secutils/CustomVibration;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/CustomVibration;->access$100(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->mContinueVibrating:Z

    .line 187
    iget-object v0, p0, Lcom/android/server/telecom/secutils/CustomVibration$VibratorThread;->this$0:Lcom/android/server/telecom/secutils/CustomVibration;

    iget-object v0, v0, Lcom/android/server/telecom/secutils/CustomVibration;->mVibrator:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    .line 188
    return-void
.end method
