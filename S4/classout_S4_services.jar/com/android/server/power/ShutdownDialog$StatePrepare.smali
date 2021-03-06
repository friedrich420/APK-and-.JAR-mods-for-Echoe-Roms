.class Lcom/android/server/power/ShutdownDialog$StatePrepare;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePrepare"
.end annotation


# instance fields
.field private hasAnim:Z

.field private hasSound:Z

.field final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method private constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p2, "x1"    # Lcom/android/server/power/ShutdownDialog$1;

    .prologue
    .line 223
    invoke-direct {p0, p1}, <init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method

.method private disableWindowRotation()V
    .registers 4

    .prologue
    .line 292
    iget-object v2, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 293
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 294
    .local v1, "nl":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 295
    const/4 v2, 0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 296
    iget-object v2, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {v2}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 297
    return-void
.end method

.method private needToPlayCommonSound()Z
    .registers 3

    .prologue
    .line 283
    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "countryCode":Ljava/lang/String;
    const-string v1, "KOREA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "korea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 285
    :cond_17
    const/4 v1, 0x0

    .line 288
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x1

    goto :goto_18
.end method

.method private playSoundForKor()V
    .registers 5

    .prologue
    .line 300
    const-string v1, "ShutdownDialog"

    const-string/jumbo v2, "shutdown Dialog kor power snd"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :try_start_8
    const-string/jumbo v1, "service.media.powersnd"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v1, "ctl.start"

    const-string/jumbo v2, "powersnd"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_1d} :catch_1e
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_1d} :catch_23

    .line 310
    :goto_1d
    return-void

    .line 305
    :catch_1e
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1d

    .line 307
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_23
    move-exception v1

    goto :goto_1d
.end method


# virtual methods
.method public checkRunning()Z
    .registers 2

    .prologue
    .line 276
    iget-boolean v0, p0, hasSound:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, hasAnim:Z

    if-eqz v0, :cond_a

    .line 277
    :cond_8
    const/4 v0, 0x1

    .line 279
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public checkStart()Z
    .registers 2

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public prepare()V
    .registers 10

    .prologue
    .line 229
    const-string v7, "ShutdownDialog"

    const-string/jumbo v8, "prepare shutdown dialog image and sound"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_54

    .line 233
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/LibQmg;

    .line 234
    .local v2, "qmg":Lcom/android/server/power/LibQmg;
    const-string v7, "ShutdownDialog"

    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v6

    .line 236
    .local v6, "width":I
    invoke-virtual {v2}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v0

    .line 238
    .local v0, "height":I
    invoke-direct {p0}, disableWindowRotation()V

    .line 239
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    const/4 v7, 0x3

    if-ge v1, v7, :cond_5c

    .line 240
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v7

    aget-object v7, v7, v1

    if-nez v7, :cond_51

    .line 241
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v0, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v7, v1

    .line 239
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 245
    .end local v0    # "height":I
    .end local v1    # "i":I
    .end local v2    # "qmg":Lcom/android/server/power/LibQmg;
    .end local v6    # "width":I
    :cond_54
    const-string v7, "ShutdownDialog"

    const-string/jumbo v8, "qmglist error"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_5c
    invoke-direct {p0}, needToPlayCommonSound()Z

    move-result v7

    if-eqz v7, :cond_91

    .line 250
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # invokes: Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$600(Lcom/android/server/power/ShutdownDialog;)I

    move-result v5

    .line 251
    .local v5, "systemVolume":I
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v8, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->shutdownSoundPath:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/power/ShutdownDialog;->access$700(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/power/ShutdownDialog;->access$800(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "soundPathConfirmed":Ljava/lang/String;
    if-eqz v3, :cond_80

    if-lez v5, :cond_80

    .line 253
    const/4 v7, 0x1

    iput-boolean v7, p0, hasSound:Z

    .line 254
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # invokes: Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V
    invoke-static {v7, v3}, Lcom/android/server/power/ShutdownDialog;->access$900(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V

    .line 261
    .end local v3    # "soundPathConfirmed":Ljava/lang/String;
    .end local v5    # "systemVolume":I
    :cond_80
    :goto_80
    new-instance v4, Landroid/content/Intent;

    const-string v7, "POWER_OFF_ANIMATION_START"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    .local v4, "startAnimation":Landroid/content/Intent;
    iget-object v7, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->access$1000(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 263
    return-void

    .line 257
    .end local v4    # "startAnimation":Landroid/content/Intent;
    :cond_91
    invoke-direct {p0}, playSoundForKor()V

    goto :goto_80
.end method

.method public start()V
    .registers 3

    .prologue
    .line 266
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "start draw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->access$1100(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;->start()V

    .line 268
    iget-object v0, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    iget-object v1, p0, this$0:Lcom/android/server/power/ShutdownDialog;

    # getter for: Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->access$1100(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v1

    # setter for: Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;
    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->access$1202(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 269
    return-void
.end method
