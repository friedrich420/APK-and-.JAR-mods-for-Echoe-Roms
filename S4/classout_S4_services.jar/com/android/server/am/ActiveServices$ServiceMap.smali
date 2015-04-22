.class Lcom/android/server/am/ActiveServices$ServiceMap;
.super Landroid/os/Handler;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceMap"
.end annotation


# static fields
.field static final MSG_BG_START_TIMEOUT:I = 0x1


# instance fields
.field final mDelayedStartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServicesByIntent:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mServicesByName:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mStartingBackground:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;Landroid/os/Looper;I)V
    .registers 5
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "userId"    # I

    .prologue
    .line 195
    iput-object p1, p0, this$0:Lcom/android/server/am/ActiveServices;

    .line 196
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 173
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mServicesByName:Landroid/util/ArrayMap;

    .line 175
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mServicesByIntent:Landroid/util/ArrayMap;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDelayedStartList:Ljava/util/ArrayList;

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mStartingBackground:Ljava/util/ArrayList;

    .line 197
    iput p3, p0, mUserId:I

    .line 198
    return-void
.end method


# virtual methods
.method ensureNotStartingBackground(Lcom/android/server/am/ServiceRecord;)V
    .registers 3
    .param p1, "r"    # Lcom/android/server/am/ServiceRecord;

    .prologue
    .line 212
    iget-object v0, p0, mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 214
    invoke-virtual {p0}, rescheduleDelayedStarts()V

    .line 216
    :cond_b
    iget-object v0, p0, mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 219
    :cond_13
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    .line 209
    :goto_5
    return-void

    .line 204
    :pswitch_6
    iget-object v0, p0, this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 205
    :try_start_b
    invoke-virtual {p0}, rescheduleDelayedStarts()V

    .line 206
    monitor-exit v1

    goto :goto_5

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_10

    throw v0

    .line 202
    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method rescheduleDelayedStarts()V
    .registers 15

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 222
    invoke-virtual {p0, v5}, removeMessages(I)V

    .line 223
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 224
    .local v10, "now":J
    const/4 v7, 0x0

    .local v7, "i":I
    iget-object v0, p0, mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, "N":I
    :goto_10
    if-ge v7, v6, :cond_44

    .line 225
    iget-object v0, p0, mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 226
    .local v3, "r":Lcom/android/server/am/ServiceRecord;
    iget-wide v0, v3, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    cmp-long v0, v0, v10

    if-gtz v0, :cond_41

    .line 227
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Waited long enough for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 229
    add-int/lit8 v6, v6, -0x1

    .line 230
    add-int/lit8 v7, v7, -0x1

    .line 224
    :cond_41
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 234
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_44
    :goto_44
    iget-object v0, p0, mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ab

    iget-object v0, p0, mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/server/am/ActiveServices;

    iget v1, v1, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-ge v0, v1, :cond_ab

    .line 235
    iget-object v0, p0, mDelayedStartList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    .line 237
    .restart local v3    # "r":Lcom/android/server/am/ServiceRecord;
    iget-object v0, v3, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_98

    .line 238
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** NO PENDING STARTS! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " startReq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v3, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " delayedStop="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v3, Lcom/android/server/am/ServiceRecord;->delayedStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_98
    iput-boolean v4, v3, Lcom/android/server/am/ServiceRecord;->delayed:Z

    .line 250
    iget-object v0, p0, this$0:Lcom/android/server/am/ActiveServices;

    iget-object v1, v3, Lcom/android/server/am/ServiceRecord;->pendingStarts:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ServiceRecord$StartItem;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$StartItem;->intent:Landroid/content/Intent;

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveServices;->startServiceInnerLocked(Lcom/android/server/am/ActiveServices$ServiceMap;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ZZ)Landroid/content/ComponentName;

    goto :goto_44

    .line 252
    .end local v3    # "r":Lcom/android/server/am/ServiceRecord;
    :cond_ab
    iget-object v0, p0, mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ca

    .line 253
    iget-object v0, p0, mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ServiceRecord;

    .line 254
    .local v9, "next":Lcom/android/server/am/ServiceRecord;
    iget-wide v0, v9, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_e0

    iget-wide v12, v9, Lcom/android/server/am/ServiceRecord;->startingBgTimeout:J

    .line 257
    .local v12, "when":J
    :goto_c3
    invoke-virtual {p0, v5}, obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 258
    .local v8, "msg":Landroid/os/Message;
    invoke-virtual {p0, v8, v12, v13}, sendMessageAtTime(Landroid/os/Message;J)Z

    .line 260
    .end local v8    # "msg":Landroid/os/Message;
    .end local v9    # "next":Lcom/android/server/am/ServiceRecord;
    .end local v12    # "when":J
    :cond_ca
    iget-object v0, p0, mStartingBackground:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/server/am/ActiveServices;

    iget v1, v1, Lcom/android/server/am/ActiveServices;->mMaxStartingBackground:I

    if-ge v0, v1, :cond_df

    .line 261
    iget-object v0, p0, this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget v1, p0, mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->backgroundServicesFinishedLocked(I)V

    .line 263
    :cond_df
    return-void

    .restart local v9    # "next":Lcom/android/server/am/ServiceRecord;
    :cond_e0
    move-wide v12, v10

    .line 254
    goto :goto_c3
.end method
