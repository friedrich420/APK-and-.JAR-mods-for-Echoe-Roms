.class Lcom/android/server/VibratorService$SecSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecSettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .registers 7
    .param p2, "type"    # I

    .prologue
    .line 1256
    iput-object p1, p0, this$0:Lcom/android/server/VibratorService;

    .line 1257
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1258
    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2200()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1259
    iput p2, p0, mType:I

    .line 1260
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 8
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x5

    .line 1269
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1271
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mVibe:Lcom/immersion/android/ImmVibe;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2400(Lcom/android/server/VibratorService;)Lcom/immersion/android/ImmVibe;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1305
    :goto_d
    return-void

    .line 1275
    :cond_e
    iget v1, p0, mType:I

    packed-switch v1, :pswitch_data_9e

    goto :goto_d

    .line 1277
    :pswitch_14
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2200()[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1278
    .local v0, "magnitudeLevel":I
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    if-le v0, v4, :cond_35

    .end local v0    # "magnitudeLevel":I
    :goto_2a
    # setter for: Lcom/android/server/VibratorService;->mImmVibeTouchMagnitude:I
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$2502(Lcom/android/server/VibratorService;I)I

    .line 1280
    const-string v1, "VibratorService"

    const-string v2, "Feedback magnitude has changed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1278
    .restart local v0    # "magnitudeLevel":I
    :cond_35
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2600()[I

    move-result-object v2

    aget v0, v2, v0

    goto :goto_2a

    .line 1285
    .end local v0    # "magnitudeLevel":I
    :pswitch_3c
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2200()[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1286
    .restart local v0    # "magnitudeLevel":I
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    if-le v0, v4, :cond_5d

    .end local v0    # "magnitudeLevel":I
    :goto_52
    # setter for: Lcom/android/server/VibratorService;->mImmVibeCallMagnitude:I
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$2702(Lcom/android/server/VibratorService;I)I

    .line 1288
    const-string v1, "VibratorService"

    const-string v2, "Call vibration magnitude has changed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1286
    .restart local v0    # "magnitudeLevel":I
    :cond_5d
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2600()[I

    move-result-object v2

    aget v0, v2, v0

    goto :goto_52

    .line 1293
    .end local v0    # "magnitudeLevel":I
    :pswitch_64
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v1

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2200()[Ljava/lang/String;

    move-result-object v2

    iget v3, p0, mType:I

    aget-object v2, v2, v3

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 1294
    .restart local v0    # "magnitudeLevel":I
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    if-le v0, v4, :cond_97

    .end local v0    # "magnitudeLevel":I
    :goto_7a
    # setter for: Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I
    invoke-static {v1, v0}, Lcom/android/server/VibratorService;->access$2802(Lcom/android/server/VibratorService;I)I

    .line 1296
    # getter for: Lcom/android/server/VibratorService;->USE_SET_MAX_MAGNITUE:Z
    invoke-static {}, Lcom/android/server/VibratorService;->access$2900()Z

    move-result v1

    if-nez v1, :cond_8e

    .line 1297
    iget-object v1, p0, this$0:Lcom/android/server/VibratorService;

    iget-object v2, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mImmVibeNotiMagnitude:I
    invoke-static {v2}, Lcom/android/server/VibratorService;->access$2800(Lcom/android/server/VibratorService;)I

    move-result v2

    # setter for: Lcom/android/server/VibratorService;->mDefaultMagnitude:I
    invoke-static {v1, v2}, Lcom/android/server/VibratorService;->access$1702(Lcom/android/server/VibratorService;I)I

    .line 1300
    :cond_8e
    const-string v1, "VibratorService"

    const-string v2, "Notification vibration magnitude has changed"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1294
    .restart local v0    # "magnitudeLevel":I
    :cond_97
    # getter for: Lcom/android/server/VibratorService;->LEVEL_TO_MAGNITUDE:[I
    invoke-static {}, Lcom/android/server/VibratorService;->access$2600()[I

    move-result-object v2

    aget v0, v2, v0

    goto :goto_7a

    .line 1275
    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_14
        :pswitch_3c
        :pswitch_64
    .end packed-switch
.end method

.method reload()V
    .registers 5

    .prologue
    .line 1263
    iget-object v0, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1264
    iget-object v0, p0, this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$2300(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    # getter for: Lcom/android/server/VibratorService;->mTypeURIs:[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/VibratorService;->access$2200()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, mType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1265
    return-void
.end method
