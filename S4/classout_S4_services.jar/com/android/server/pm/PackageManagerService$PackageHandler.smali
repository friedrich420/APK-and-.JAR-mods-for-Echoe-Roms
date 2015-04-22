.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field private mBound:Z

.field final mPendingInstalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PackageManagerService$HandlerParams;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1156
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1157
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1129
    const/4 v0, 0x0

    iput-boolean v0, p0, mBound:Z

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPendingInstalls:Ljava/util/ArrayList;

    .line 1158
    return-void
.end method

.method private connectToService()Z
    .registers 8

    .prologue
    const/16 v6, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1136
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcom/android/server/pm/PackageManagerService;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 1137
    .local v0, "service":Landroid/content/Intent;
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1138
    iget-object v3, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v4, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v1, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1140
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1141
    iput-boolean v1, p0, mBound:Z

    .line 1145
    :goto_29
    return v1

    .line 1144
    :cond_2a
    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    move v1, v2

    .line 1145
    goto :goto_29
.end method

.method private disconnectService()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1149
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$602(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1150
    iput-boolean v2, p0, mBound:Z

    .line 1151
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1152
    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDefContainerConn:Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$DefaultContainerConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1153
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1154
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 72
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1169
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_bee

    .line 1762
    :cond_7
    :goto_7
    :pswitch_7
    return-void

    .line 1171
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1172
    .local v53, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v40

    .line 1174
    .local v40, "idx":I
    move-object/from16 v0, v53

    instance-of v4, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams;

    if-nez v4, :cond_75

    .line 1175
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "INIT_COPY: observer{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v53

    # invokes: Lcom/android/server/pm/PackageManagerService;->getObserverHashCodeFromHandlerParam(Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "}\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "          idx{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v40

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "}\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "          for_user{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    :cond_75
    move-object/from16 v0, p0

    iget-boolean v4, v0, mBound:Z

    if-nez v4, :cond_9a

    .line 1187
    invoke-direct/range {p0 .. p0}, connectToService()Z

    move-result v4

    if-nez v4, :cond_8d

    .line 1188
    const-string v4, "PackageManager"

    const-string v10, "Failed to bind to media container service"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-virtual/range {v53 .. v53}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto/16 :goto_7

    .line 1194
    :cond_8d
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v40

    move-object/from16 v1, v53

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_7

    .line 1197
    :cond_9a
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    move/from16 v0, v40

    move-object/from16 v1, v53

    invoke-virtual {v4, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1200
    if-nez v40, :cond_7

    .line 1201
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 1208
    .end local v40    # "idx":I
    .end local v53    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :pswitch_b3
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_c6

    .line 1209
    move-object/from16 v0, p0

    iget-object v10, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/app/IMediaContainerService;

    # setter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v10, v4}, Lcom/android/server/pm/PackageManagerService;->access$602(Lcom/android/server/pm/PackageManagerService;Lcom/android/internal/app/IMediaContainerService;)Lcom/android/internal/app/IMediaContainerService;

    .line 1211
    :cond_c6
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    if-nez v4, :cond_fd

    .line 1212
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, mBound:Z

    .line 1214
    const-string v4, "PackageManager"

    const-string v10, "Cannot bind to media container service"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "i$":Ljava/util/Iterator;
    :goto_e4
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f4

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1217
    .restart local v53    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v53 .. v53}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_e4

    .line 1219
    .end local v53    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_f4
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7

    .line 1220
    .end local v39    # "i$":Ljava/util/Iterator;
    :cond_fd
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1b9

    .line 1221
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1222
    .restart local v53    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v53, :cond_7

    .line 1223
    move-object/from16 v0, v53

    instance-of v4, v0, Lcom/android/server/pm/PackageManagerService$MeasureParams;

    if-nez v4, :cond_15e

    .line 1224
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MCS_BOUND: observer{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v53

    # invokes: Lcom/android/server/pm/PackageManagerService;->getObserverHashCodeFromHandlerParam(Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;
    invoke-static {v13, v0}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$HandlerParams;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "}\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "          for_user{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    :cond_15e
    invoke-virtual/range {v53 .. v53}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_176

    .line 1236
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1238
    :cond_176
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1a6

    .line 1239
    move-object/from16 v0, p0

    iget-boolean v4, v0, mBound:Z

    if-eqz v4, :cond_7

    .line 1240
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, removeMessages(I)V

    .line 1241
    const-string v4, "PackageManager"

    const-string/jumbo v10, "remove MCS_UNBIND message and Posting MCS_UNBIND 10 secs later"

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    const/4 v4, 0x6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, obtainMessage(I)Landroid/os/Message;

    move-result-object v64

    .line 1245
    .local v64, "ubmsg":Landroid/os/Message;
    const-wide/16 v10, 0x2710

    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-virtual {v0, v1, v10, v11}, sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_7

    .line 1251
    .end local v64    # "ubmsg":Landroid/os/Message;
    :cond_1a6
    const-string v4, "PackageManager"

    const-string v10, "Posting MCS_BOUND for next work in MCS_BOUND "

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 1258
    .end local v53    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_1b9
    const-string v4, "PackageManager"

    const-string v10, "Empty queue"

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1263
    :pswitch_1c2
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "MCS_RECONNECT"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1266
    move-object/from16 v0, p0

    iget-boolean v4, v0, mBound:Z

    if-eqz v4, :cond_1e2

    .line 1267
    invoke-direct/range {p0 .. p0}, disconnectService()V

    .line 1269
    :cond_1e2
    invoke-direct/range {p0 .. p0}, connectToService()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1270
    const-string v4, "PackageManager"

    const-string v10, "Failed to bind to media container service"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .restart local v39    # "i$":Ljava/util/Iterator;
    :goto_1f7
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_207

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1273
    .restart local v53    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    invoke-virtual/range {v53 .. v53}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->serviceError()V

    goto :goto_1f7

    .line 1275
    .end local v53    # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_207
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_7

    .line 1281
    .end local v39    # "i$":Ljava/util/Iterator;
    :pswitch_210
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "MCS_UNBIND"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_23e

    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_23e

    .line 1306
    move-object/from16 v0, p0

    iget-boolean v4, v0, mBound:Z

    if-eqz v4, :cond_7

    .line 1308
    invoke-direct/range {p0 .. p0}, disconnectService()V

    goto/16 :goto_7

    .line 1310
    :cond_23e
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1314
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 1321
    :pswitch_254
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "MCS_GIVE_UP"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    move-object/from16 v0, p0

    iget-object v4, v0, mPendingInstalls:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_7

    .line 1327
    :pswitch_26b
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "SEND_PENDING_BROADCAST"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    const/4 v9, 0x0

    .line 1332
    .local v9, "size":I
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1333
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    .line 1334
    :try_start_280
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    if-nez v4, :cond_28e

    .line 1335
    monitor-exit v10

    goto/16 :goto_7

    .line 1365
    :catchall_28b
    move-exception v4

    monitor-exit v10
    :try_end_28d
    .catchall {:try_start_280 .. :try_end_28d} :catchall_28b

    throw v4

    .line 1337
    :cond_28e
    :try_start_28e
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v9

    .line 1338
    if-gtz v9, :cond_29d

    .line 1340
    monitor-exit v10

    goto/16 :goto_7

    .line 1342
    :cond_29d
    new-array v5, v9, [Ljava/lang/String;

    .line 1343
    .local v5, "packages":[Ljava/lang/String;
    new-array v6, v9, [Ljava/util/ArrayList;

    .line 1344
    .local v6, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v7, v9, [I

    .line 1345
    .local v7, "uids":[I
    const/16 v38, 0x0

    .line 1347
    .local v38, "i":I
    const/16 v47, 0x0

    .local v47, "n":I
    :goto_2a7
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v4

    move/from16 v0, v47

    if-ge v0, v4, :cond_31d

    .line 1348
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v52

    .line 1349
    .local v52, "packageUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    move/from16 v0, v52

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v44

    .line 1352
    .local v44, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_2d5
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31a

    move/from16 v0, v38

    if-ge v0, v9, :cond_31a

    .line 1353
    invoke-interface/range {v44 .. v44}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/Map$Entry;

    .line 1354
    .local v37, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v5, v38

    .line 1355
    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    aput-object v4, v6, v38

    .line 1356
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v4, v4, Lcom/android/server/pm/Settings;->mPackages:Ljava/util/HashMap;

    invoke-interface/range {v37 .. v37}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v54

    check-cast v54, Lcom/android/server/pm/PackageSetting;

    .line 1357
    .local v54, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v54, :cond_318

    move-object/from16 v0, v54

    iget v4, v0, Lcom/android/server/pm/PackageSetting;->appId:I

    move/from16 v0, v52

    invoke-static {v0, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    :goto_313
    aput v4, v7, v38

    .line 1360
    add-int/lit8 v38, v38, 0x1

    .line 1361
    goto :goto_2d5

    .line 1357
    :cond_318
    const/4 v4, -0x1

    goto :goto_313

    .line 1347
    .end local v37    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v54    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_31a
    add-int/lit8 v47, v47, 0x1

    goto :goto_2a7

    .line 1363
    .end local v44    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v52    # "packageUserId":I
    :cond_31d
    move/from16 v9, v38

    .line 1364
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    .line 1365
    monitor-exit v10
    :try_end_329
    .catchall {:try_start_28e .. :try_end_329} :catchall_28b

    .line 1367
    const/16 v38, 0x0

    :goto_32b
    move/from16 v0, v38

    if-ge v0, v9, :cond_340

    .line 1368
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v10, v5, v38

    const/4 v11, 0x1

    aget-object v13, v6, v38

    aget v14, v7, v38

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static {v4, v10, v11, v13, v14}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1367
    add-int/lit8 v38, v38, 0x1

    goto :goto_32b

    .line 1370
    :cond_340
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_7

    .line 1375
    .end local v5    # "packages":[Ljava/lang/String;
    .end local v6    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "uids":[I
    .end local v9    # "size":I
    .end local v38    # "i":I
    .end local v47    # "n":I
    :pswitch_347
    const-string v4, "PackageManager"

    const-string v10, "SEND_PENDING_BROADCAST_WITH_LIST START"

    invoke-static {v4, v10}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    const/4 v5, 0x0

    .line 1379
    .restart local v5    # "packages":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1380
    .restart local v6    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 1381
    .restart local v7    # "uids":[I
    const/4 v8, 0x0

    .line 1382
    .local v8, "dontKillFlags":[Z
    const/4 v9, 0x0

    .line 1383
    .restart local v9    # "size":I
    const/16 v60, 0x0

    .line 1385
    .local v60, "retSize":I
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    .line 1386
    :try_start_358
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    if-eqz v4, :cond_3a1

    .line 1387
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcastsForBurst:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcastsWithList;->size()I

    move-result v9

    .line 1388
    if-gtz v9, :cond_391

    .line 1389
    const-string v4, "PackageManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pending size ["

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "] SEND_PENDING_BROADCAST_WITH_LIST END"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1390
    monitor-exit v10

    goto/16 :goto_7

    .line 1398
    :catchall_38e
    move-exception v4

    monitor-exit v10
    :try_end_390
    .catchall {:try_start_358 .. :try_end_390} :catchall_38e

    throw v4

    .line 1392
    :cond_391
    :try_start_391
    new-array v5, v9, [Ljava/lang/String;

    .line 1393
    new-array v6, v9, [Ljava/util/ArrayList;

    .line 1394
    new-array v7, v9, [I

    .line 1395
    new-array v8, v9, [Z

    .line 1396
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->handlePendingBroadcastsForBurst([Ljava/lang/String;[Ljava/util/ArrayList;[I[ZI)I
    invoke-static/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;[Ljava/lang/String;[Ljava/util/ArrayList;[I[ZI)I

    move-result v60

    .line 1398
    :cond_3a1
    monitor-exit v10
    :try_end_3a2
    .catchall {:try_start_391 .. :try_end_3a2} :catchall_38e

    .line 1400
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_3a4
    move/from16 v0, v38

    move/from16 v1, v60

    if-ge v0, v1, :cond_3bc

    .line 1401
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v10, v5, v38

    aget-boolean v11, v8, v38

    aget-object v13, v6, v38

    aget v14, v7, v38

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;I)V
    invoke-static {v4, v10, v11, v13, v14}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1400
    add-int/lit8 v38, v38, 0x1

    goto :goto_3a4

    .line 1403
    :cond_3bc
    new-instance v43, Landroid/content/Intent;

    const-string v4, "android.intent.action.EMERGENCY_FINISHED_SENDING_PACKAGE_CHANGED"

    move-object/from16 v0, v43

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1404
    .local v43, "it":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1406
    const-string v4, "PackageManager"

    const-string v10, "SEND_PENDING_BROADCAST_WITH_LIST END"

    invoke-static {v4, v10}, Lcom/sec/android/emergencymode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1411
    .end local v5    # "packages":[Ljava/lang/String;
    .end local v6    # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "uids":[I
    .end local v8    # "dontKillFlags":[Z
    .end local v9    # "size":I
    .end local v38    # "i":I
    .end local v43    # "it":Landroid/content/Intent;
    .end local v60    # "retSize":I
    :pswitch_3d9
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1412
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v51, v0

    check-cast v51, Ljava/lang/String;

    .line 1413
    .local v51, "packageName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v67, v0

    .line 1414
    .local v67, "userId":I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_477

    const/16 v28, 0x1

    .line 1415
    .local v28, "andCode":Z
    :goto_3f3
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "START_CLEANING_PACKAGE packageName{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v51

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "}\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "userId{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v67

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "}\n"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "andCode{"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v28

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v13, "}"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    .line 1421
    const/4 v4, -0x1

    move/from16 v0, v67

    if-ne v0, v4, :cond_47b

    .line 1422
    :try_start_449
    sget-object v4, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v68

    .line 1423
    .local v68, "users":[I
    move-object/from16 v31, v68

    .local v31, "arr$":[I
    move-object/from16 v0, v31

    array-length v0, v0

    move/from16 v46, v0

    .local v46, "len$":I
    const/16 v39, 0x0

    .local v39, "i$":I
    :goto_458
    move/from16 v0, v39

    move/from16 v1, v46

    if-ge v0, v1, :cond_48f

    aget v66, v31, v39

    .line 1424
    .local v66, "user":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v11, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v66

    move-object/from16 v1, v51

    move/from16 v2, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v11}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 1423
    add-int/lit8 v39, v39, 0x1

    goto :goto_458

    .line 1414
    .end local v28    # "andCode":Z
    .end local v31    # "arr$":[I
    .end local v39    # "i$":I
    .end local v46    # "len$":I
    .end local v66    # "user":I
    .end local v68    # "users":[I
    :cond_477
    const/16 v28, 0x0

    goto/16 :goto_3f3

    .line 1428
    .restart local v28    # "andCode":Z
    :cond_47b
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    new-instance v11, Landroid/content/pm/PackageCleanItem;

    move/from16 v0, v67

    move-object/from16 v1, v51

    move/from16 v2, v28

    invoke-direct {v11, v0, v1, v2}, Landroid/content/pm/PackageCleanItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v4, v11}, Lcom/android/server/pm/Settings;->addPackageToCleanLPw(Landroid/content/pm/PackageCleanItem;)V

    .line 1431
    :cond_48f
    monitor-exit v10
    :try_end_490
    .catchall {:try_start_449 .. :try_end_490} :catchall_49e

    .line 1432
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1433
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->startCleaningPackages()V

    goto/16 :goto_7

    .line 1431
    :catchall_49e
    move-exception v4

    :try_start_49f
    monitor-exit v10
    :try_end_4a0
    .catchall {:try_start_49f .. :try_end_4a0} :catchall_49e

    throw v4

    .line 1437
    .end local v28    # "andCode":Z
    .end local v51    # "packageName":Ljava/lang/String;
    .end local v67    # "userId":I
    :pswitch_4a1
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1438
    .local v33, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->delete(I)V

    .line 1439
    const/16 v34, 0x0

    .line 1441
    .local v34, "deleteOld":Z
    if-eqz v33, :cond_75d

    .line 1442
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-object/from16 v29, v0

    .line 1443
    .local v29, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-object/from16 v56, v0

    .line 1445
    .local v56, "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    const-string v10, "PackageManager"

    const-string v11, "MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "POST_INSTALL: observer{"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v29, :cond_6ec

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v4, :cond_6ec

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_4f1
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "}\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "          Handling post-install for "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    move-object/from16 v0, v56

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_66b

    .line 1451
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v11, v13}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendBroadcast(ZZZ)V

    .line 1452
    new-instance v12, Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-direct {v12, v4}, Landroid/os/Bundle;-><init>(I)V

    .line 1453
    .local v12, "extras":Landroid/os/Bundle;
    const-string v4, "android.intent.extra.UID"

    move-object/from16 v0, v56

    iget v10, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1458
    const/4 v4, 0x0

    new-array v0, v4, [I

    move-object/from16 v21, v0

    .line 1459
    .local v21, "updateUsers":[I
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    if-eqz v4, :cond_54d

    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v4, v4

    if-nez v4, :cond_6f0

    .line 1460
    :cond_54d
    move-object/from16 v0, v56

    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    .line 1489
    .local v15, "firstUsers":[I
    :cond_551
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v10, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v4, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 1490
    .local v41, "isChinaNal":Ljava/lang/String;
    const-string v4, "ChinaNalSecurity"

    move-object/from16 v0, v41

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57d

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_57d

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    const-string v10, "com.sec.android.preloadinstaller"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57d

    .line 1491
    const-string v4, "com.sec.android.extra.PRELOADINSTALL"

    const/4 v10, 0x1

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1495
    :cond_57d
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_5aa

    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    const-string v10, "com.android.vending"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5aa

    .line 1497
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->getInstance(Landroid/content/Context;)Lcom/sec/enterprise/knox/certificate/CertificatePolicy;

    move-result-object v32

    .line 1498
    .local v32, "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    if-eqz v32, :cond_5aa

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Lcom/sec/enterprise/knox/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_5aa

    .line 1499
    const-string v4, "isMarketInstallation"

    const/4 v10, 0x1

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1503
    .end local v32    # "cp":Lcom/sec/enterprise/knox/certificate/CertificatePolicy;
    :cond_5aa
    const-string v10, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v10 .. v15}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1506
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v4, :cond_756

    const/16 v65, 0x1

    .line 1507
    .local v65, "update":Z
    :goto_5c3
    if-eqz v65, :cond_5cb

    .line 1508
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v10, 0x1

    invoke-virtual {v12, v4, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1516
    :cond_5cb
    const-string v16, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v12

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1519
    if-eqz v65, :cond_654

    .line 1520
    const-string v16, "android.intent.action.PACKAGE_REPLACED"

    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v18, v12

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1523
    const-string v16, "android.intent.action.MY_PACKAGE_REPLACED"

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v16 .. v21}, Lcom/android/server/pm/PackageManagerService;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/IIntentReceiver;[I)V

    .line 1528
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isForwardLocked(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1000(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-nez v4, :cond_620

    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    # invokes: Lcom/android/server/pm/PackageManagerService;->isExternal(Landroid/content/pm/PackageParser$Package;)Z
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1100(Landroid/content/pm/PackageParser$Package;)Z

    move-result v4

    if-eqz v4, :cond_654

    .line 1533
    :cond_620
    const/4 v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v26, v0

    const/4 v4, 0x0

    move-object/from16 v0, v56

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    aput v10, v26, v4

    .line 1534
    .local v26, "uidArray":[I
    new-instance v25, Ljava/util/ArrayList;

    const/4 v4, 0x1

    move-object/from16 v0, v25

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1535
    .local v25, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    const/16 v27, 0x0

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    invoke-static/range {v22 .. v27}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V

    .line 1540
    .end local v25    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v26    # "uidArray":[I
    :cond_654
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    if-eqz v4, :cond_65e

    .line 1542
    const/16 v34, 0x1

    .line 1546
    :cond_65e
    const/16 v4, 0xc26

    move-object/from16 v0, p0

    iget-object v10, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # invokes: Lcom/android/server/pm/PackageManagerService;->getUnknownSourcesSettings()I
    invoke-static {v10}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;)I

    move-result v10

    invoke-static {v4, v10}, Landroid/util/EventLog;->writeEvent(II)I

    .line 1550
    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v15    # "firstUsers":[I
    .end local v21    # "updateUsers":[I
    .end local v41    # "isChinaNal":Ljava/lang/String;
    .end local v65    # "update":Z
    :cond_66b
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 1552
    if-eqz v34, :cond_686

    .line 1553
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1554
    :try_start_67b
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->removedInfo:Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 1555
    monitor-exit v10
    :try_end_686
    .catchall {:try_start_67b .. :try_end_686} :catchall_75a

    .line 1557
    :cond_686
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    if-eqz v4, :cond_7

    .line 1559
    :try_start_68c
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "result of install: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v56

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, v29

    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageManagerService;->extrasForInstallResult(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;)Landroid/os/Bundle;

    move-result-object v12

    .line 1562
    .restart local v12    # "extras":Landroid/os/Bundle;
    move-object/from16 v0, v29

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v0, v56

    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v56

    iget v11, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    move-object/from16 v0, v56

    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnMsg:Ljava/lang/String;

    invoke-interface {v4, v10, v11, v13, v12}, Landroid/content/pm/IPackageInstallObserver2;->onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_6e0
    .catch Landroid/os/RemoteException; {:try_start_68c .. :try_end_6e0} :catch_6e2

    goto/16 :goto_7

    .line 1564
    .end local v12    # "extras":Landroid/os/Bundle;
    :catch_6e2
    move-exception v36

    .line 1565
    .local v36, "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v10, "Observer no longer exists."

    invoke-static {v4, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1445
    .end local v36    # "e":Landroid/os/RemoteException;
    :cond_6ec
    const-string v4, "null"

    goto/16 :goto_4f1

    .line 1462
    .restart local v12    # "extras":Landroid/os/Bundle;
    .restart local v21    # "updateUsers":[I
    :cond_6f0
    const/4 v4, 0x0

    new-array v15, v4, [I

    .line 1463
    .restart local v15    # "firstUsers":[I
    const/16 v38, 0x0

    .restart local v38    # "i":I
    :goto_6f5
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    array-length v4, v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_551

    .line 1464
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    aget v66, v4, v38

    .line 1465
    .restart local v66    # "user":I
    const/16 v42, 0x1

    .line 1466
    .local v42, "isNew":Z
    const/16 v45, 0x0

    .local v45, "j":I
    :goto_708
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    array-length v4, v4

    move/from16 v0, v45

    if-ge v0, v4, :cond_71d

    .line 1467
    move-object/from16 v0, v56

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->origUsers:[I

    aget v4, v4, v45

    move/from16 v0, v66

    if-ne v4, v0, :cond_736

    .line 1468
    const/16 v42, 0x0

    .line 1472
    :cond_71d
    if-eqz v42, :cond_739

    .line 1473
    array-length v4, v15

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v48, v0

    .line 1474
    .local v48, "newFirst":[I
    const/4 v4, 0x0

    const/4 v10, 0x0

    array-length v11, v15

    move-object/from16 v0, v48

    invoke-static {v15, v4, v0, v10, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1476
    array-length v4, v15

    aput v66, v48, v4

    .line 1477
    move-object/from16 v15, v48

    .line 1463
    .end local v48    # "newFirst":[I
    :goto_733
    add-int/lit8 v38, v38, 0x1

    goto :goto_6f5

    .line 1466
    :cond_736
    add-int/lit8 v45, v45, 0x1

    goto :goto_708

    .line 1479
    :cond_739
    move-object/from16 v0, v21

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [I

    move-object/from16 v49, v0

    .line 1480
    .local v49, "newUpdate":[I
    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v21

    array-length v11, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-static {v0, v4, v1, v10, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1482
    move-object/from16 v0, v21

    array-length v4, v0

    aput v66, v49, v4

    .line 1483
    move-object/from16 v21, v49

    goto :goto_733

    .line 1506
    .end local v38    # "i":I
    .end local v42    # "isNew":Z
    .end local v45    # "j":I
    .end local v49    # "newUpdate":[I
    .end local v66    # "user":I
    .restart local v41    # "isChinaNal":Ljava/lang/String;
    :cond_756
    const/16 v65, 0x0

    goto/16 :goto_5c3

    .line 1555
    .end local v12    # "extras":Landroid/os/Bundle;
    .end local v15    # "firstUsers":[I
    .end local v21    # "updateUsers":[I
    .end local v41    # "isChinaNal":Ljava/lang/String;
    :catchall_75a
    move-exception v4

    :try_start_75b
    monitor-exit v10
    :try_end_75c
    .catchall {:try_start_75b .. :try_end_75c} :catchall_75a

    throw v4

    .line 1569
    .end local v29    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v56    # "res":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    :cond_75d
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Bogus post-install token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1573
    .end local v33    # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v34    # "deleteOld":Z
    :pswitch_77b
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "UPDATED_MEDIA_STATUS"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_7f6

    const/16 v55, 0x1

    .line 1576
    .local v55, "reportStatus":Z
    :goto_791
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_7f9

    const/16 v35, 0x1

    .line 1577
    .local v35, "doGc":Z
    :goto_79a
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "reportStatus="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v55

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", doGc = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    if-eqz v35, :cond_7ca

    .line 1580
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Runtime;->gc()V

    .line 1582
    :cond_7ca
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_7e1

    .line 1584
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Ljava/util/Set;

    .line 1587
    .local v30, "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v30

    # invokes: Lcom/android/server/pm/PackageManagerService;->unloadAllContainers(Ljava/util/Set;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;Ljava/util/Set;)V

    .line 1589
    .end local v30    # "args":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    :cond_7e1
    if-eqz v55, :cond_7

    .line 1592
    :try_start_7e3
    invoke-static {}, Lcom/android/internal/content/PackageHelper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    invoke-interface {v4}, Landroid/os/storage/IMountService;->finishMediaUpdate()V
    :try_end_7ea
    .catch Landroid/os/RemoteException; {:try_start_7e3 .. :try_end_7ea} :catch_7ec

    goto/16 :goto_7

    .line 1593
    :catch_7ec
    move-exception v36

    .line 1594
    .restart local v36    # "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v10, "MountService not running?"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1575
    .end local v35    # "doGc":Z
    .end local v36    # "e":Landroid/os/RemoteException;
    .end local v55    # "reportStatus":Z
    :cond_7f6
    const/16 v55, 0x0

    goto :goto_791

    .line 1576
    .restart local v55    # "reportStatus":Z
    :cond_7f9
    const/16 v35, 0x0

    goto :goto_79a

    .line 1599
    .end local v55    # "reportStatus":Z
    :pswitch_7fc
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "WRITE_SETTINGS"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1601
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    .line 1602
    const/16 v4, 0xd

    :try_start_812
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, removeMessages(I)V

    .line 1603
    const/16 v4, 0xe

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, removeMessages(I)V

    .line 1604
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1605
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1606
    monitor-exit v10
    :try_end_833
    .catchall {:try_start_812 .. :try_end_833} :catchall_83a

    .line 1607
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_7

    .line 1606
    :catchall_83a
    move-exception v4

    :try_start_83b
    monitor-exit v10
    :try_end_83c
    .catchall {:try_start_83b .. :try_end_83c} :catchall_83a

    throw v4

    .line 1610
    :pswitch_83d
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "WRITE_PACKAGE_RESTRICTIONS"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1612
    sget-object v10, Lcom/android/server/pm/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v10

    .line 1613
    const/16 v4, 0xe

    :try_start_853
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, removeMessages(I)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, "i$":Ljava/util/Iterator;
    :goto_864
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_883

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v67

    .line 1615
    .restart local v67    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move/from16 v0, v67

    invoke-virtual {v4, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_864

    .line 1618
    .end local v39    # "i$":Ljava/util/Iterator;
    .end local v67    # "userId":I
    :catchall_880
    move-exception v4

    monitor-exit v10
    :try_end_882
    .catchall {:try_start_853 .. :try_end_882} :catchall_880

    throw v4

    .line 1617
    .restart local v39    # "i$":Ljava/util/Iterator;
    :cond_883
    :try_start_883
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mDirtyUsers:Ljava/util/HashSet;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;)Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    .line 1618
    monitor-exit v10
    :try_end_88f
    .catchall {:try_start_883 .. :try_end_88f} :catchall_880

    .line 1619
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_7

    .line 1622
    .end local v39    # "i$":Ljava/util/Iterator;
    :pswitch_896
    const-string v4, "PackageManager"

    const-string v10, "MSG"

    const-string v11, "CHECK_PENDING_VERIFICATION"

    invoke-static {v10, v11}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v69, v0

    .line 1624
    .local v69, "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/pm/PackageVerificationState;

    .line 1626
    .local v62, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v62, :cond_903

    .line 1627
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    if-eqz v4, :cond_950

    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v50, v0

    .line 1628
    .local v50, "ob":Landroid/content/pm/IPackageInstallObserver2;
    :goto_8c7
    const-string v10, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "CHECK_PENDING_VERIFICATION: observer{"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v50, :cond_954

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_8de
    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "}\n"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, "          verificationId{"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "}"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1632
    .end local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_903
    if-eqz v62, :cond_7

    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1636
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1638
    .local v57, "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v57

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v57

    iget v10, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1640
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v69

    move-object/from16 v1, v62

    move-object/from16 v2, v57

    # invokes: Lcom/android/server/pm/PackageManagerService;->packageVerificationCompletion(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageVerificationState;->getVerifierPackageCount()I

    move-result v4

    if-lez v4, :cond_7

    move-object/from16 v0, v57

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    const/4 v10, 0x0

    move-object/from16 v0, v62

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageVerificationState;->getVerifierPackage(I)Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    move-result-object v10

    iget v10, v10, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uId:I

    if-ne v4, v10, :cond_7

    .line 1643
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v62

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToPendingVerifier(Lcom/android/server/pm/PackageVerificationState;)Z
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$1700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;)Z

    goto/16 :goto_7

    .line 1627
    .end local v57    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :cond_950
    const/16 v50, 0x0

    goto/16 :goto_8c7

    .line 1628
    .restart local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_954
    const-string v4, "null"

    goto :goto_8de

    .line 1648
    .end local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v62    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v69    # "verificationId":I
    :pswitch_957
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v69, v0

    .line 1650
    .restart local v69    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/pm/PackageVerificationState;

    .line 1651
    .restart local v62    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v62, :cond_98f

    .line 1652
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid verification token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v69

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " received"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1656
    :cond_98f
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    if-eqz v4, :cond_a24

    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v50, v0

    .line 1657
    .restart local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :goto_99d
    const-string v10, "PackageManager"

    const-string v11, "MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "PACKAGE_VERIFIED: observer{"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v50, :cond_a28

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_9b6
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "}\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "          verificationId{"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "}"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1663
    .restart local v57    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    move-object/from16 v0, v57

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    move-object/from16 v0, v57

    iget v10, v0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    move-object/from16 v0, v62

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1665
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v69

    move-object/from16 v1, v62

    move-object/from16 v2, v57

    # invokes: Lcom/android/server/pm/PackageManagerService;->packageVerificationCompletion(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageVerificationState;->getVerifierPackageCount()I

    move-result v4

    if-lez v4, :cond_7

    move-object/from16 v0, v57

    iget v4, v0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    const/4 v10, 0x0

    move-object/from16 v0, v62

    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageVerificationState;->getVerifierPackage(I)Lcom/android/server/pm/PackageManagerService$VerifierPackage;

    move-result-object v10

    iget v10, v10, Lcom/android/server/pm/PackageManagerService$VerifierPackage;->uId:I

    if-ne v4, v10, :cond_7

    .line 1668
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v62

    # invokes: Lcom/android/server/pm/PackageManagerService;->sendOrderedBroadcastToPendingVerifier(Lcom/android/server/pm/PackageVerificationState;)Z
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->access$1700(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageVerificationState;)Z

    goto/16 :goto_7

    .line 1656
    .end local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v57    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :cond_a24
    const/16 v50, 0x0

    goto/16 :goto_99d

    .line 1657
    .restart local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_a28
    const-string v4, "null"

    goto :goto_9b6

    .line 1673
    .end local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v62    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v69    # "verificationId":I
    :pswitch_a2b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v69, v0

    .line 1675
    .restart local v69    # "verificationId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/pm/PackageVerificationState;

    .line 1676
    .restart local v62    # "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v62, :cond_7

    .line 1680
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    if-eqz v4, :cond_aab

    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageVerificationState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    iget-object v0, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v50, v0

    .line 1681
    .restart local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :goto_a4f
    const-string v10, "PackageManager"

    const-string v11, "MSG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SUFFICIENT_VERIFICATION_TIMEOUT: observer{"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-eqz v50, :cond_aae

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_a68
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "}\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, "          verificationId{"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v69

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v13, "}"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v4}, Lcom/android/server/pm/PackageManagerService;->logFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1685
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v57, v0

    check-cast v57, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1687
    .restart local v57    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageVerificationState;->clearSufficientVerifiers()V

    .line 1689
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move/from16 v0, v69

    move-object/from16 v1, v62

    move-object/from16 v2, v57

    # invokes: Lcom/android/server/pm/PackageManagerService;->packageVerificationCompletion(ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z
    invoke-static {v4, v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->access$1600(Lcom/android/server/pm/PackageManagerService;ILcom/android/server/pm/PackageVerificationState;Lcom/android/server/pm/PackageVerificationResponse;)Z

    goto/16 :goto_7

    .line 1680
    .end local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v57    # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :cond_aab
    const/16 v50, 0x0

    goto :goto_a4f

    .line 1681
    .restart local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    :cond_aae
    const-string v4, "null"

    goto :goto_a68

    .line 1695
    .end local v50    # "ob":Landroid/content/pm/IPackageInstallObserver2;
    .end local v62    # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v69    # "verificationId":I
    :pswitch_ab1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v61, v0

    .line 1696
    .local v61, "scanId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v61

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/pm/PackageScanState;

    .line 1698
    .local v62, "state":Lcom/android/server/pm/PackageScanState;
    if-eqz v62, :cond_7

    .line 1699
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageScanState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v29

    .line 1701
    .restart local v29    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v61

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1703
    const/16 v4, 0x16

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    if-ne v4, v10, :cond_b26

    .line 1704
    const/16 v59, -0x15

    .line 1705
    .local v59, "ret":I
    const-string v4, "PackageManager"

    const-string v10, "Failing package install after timeout"

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :goto_ae7
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v29

    move/from16 v1, v59

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1716
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageScanState;->getTempPackage()Ljava/io/File;

    move-result-object v63

    .line 1717
    .local v63, "temp":Ljava/io/File;
    if-eqz v63, :cond_b1a

    .line 1718
    invoke-virtual/range {v63 .. v63}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_b1a

    .line 1719
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t delete temporary file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v63 .. v63}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_b1a
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x6

    invoke-virtual {v4, v10}, sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 1707
    .end local v59    # "ret":I
    .end local v63    # "temp":Ljava/io/File;
    :cond_b26
    const/16 v59, -0x6e

    .line 1709
    .restart local v59    # "ret":I
    :try_start_b28
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_b36
    .catch Landroid/os/RemoteException; {:try_start_b28 .. :try_end_b36} :catch_b38

    move-result v59

    goto :goto_ae7

    .line 1710
    :catch_b38
    move-exception v36

    .line 1711
    .restart local v36    # "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v10, "Could not contact the ContainerService"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae7

    .line 1729
    .end local v29    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v36    # "e":Landroid/os/RemoteException;
    .end local v59    # "ret":I
    .end local v61    # "scanId":I
    .end local v62    # "state":Lcom/android/server/pm/PackageScanState;
    :pswitch_b41
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v61, v0

    .line 1730
    .restart local v61    # "scanId":I
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v61

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/android/server/pm/PackageScanState;

    .line 1731
    .restart local v62    # "state":Lcom/android/server/pm/PackageScanState;
    if-nez v62, :cond_b73

    .line 1732
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid scan token "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, v61

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1735
    :cond_b73
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingScans:Landroid/util/SparseArray;

    move/from16 v0, v61

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1736
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v58

    .line 1737
    .local v58, "responseCode":I
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageScanState;->getInstallArgs()Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v29

    .line 1738
    .restart local v29    # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    const/16 v59, -0x16

    .line 1739
    .restart local v59    # "ret":I
    const/16 v4, 0x3e8

    move/from16 v0, v58

    if-ne v0, v4, :cond_ba5

    .line 1740
    const/16 v59, -0x6e

    .line 1742
    :try_start_b96
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    # getter for: Lcom/android/server/pm/PackageManagerService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v4

    const/4 v10, 0x1

    move-object/from16 v0, v29

    invoke-virtual {v0, v4, v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I
    :try_end_ba4
    .catch Landroid/os/RemoteException; {:try_start_b96 .. :try_end_ba4} :catch_be4

    move-result v59

    .line 1747
    :cond_ba5
    :goto_ba5
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v0, v29

    move/from16 v1, v59

    # invokes: Lcom/android/server/pm/PackageManagerService;->processPendingInstall(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    invoke-static {v4, v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$1800(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V

    .line 1749
    invoke-virtual/range {v62 .. v62}, Lcom/android/server/pm/PackageScanState;->getTempPackage()Ljava/io/File;

    move-result-object v63

    .line 1750
    .restart local v63    # "temp":Ljava/io/File;
    if-eqz v63, :cond_bd8

    .line 1751
    invoke-virtual/range {v63 .. v63}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_bd8

    .line 1752
    const-string v4, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t delete temporary file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual/range {v63 .. v63}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_bd8
    move-object/from16 v0, p0

    iget-object v4, v0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/4 v10, 0x6

    invoke-virtual {v4, v10}, sendEmptyMessage(I)Z

    goto/16 :goto_7

    .line 1743
    .end local v63    # "temp":Ljava/io/File;
    :catch_be4
    move-exception v36

    .line 1744
    .restart local v36    # "e":Landroid/os/RemoteException;
    const-string v4, "PackageManager"

    const-string v10, "Could not contact the ContainerService"

    invoke-static {v4, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba5

    .line 1169
    nop

    :pswitch_data_bee
    .packed-switch 0x1
        :pswitch_26b
        :pswitch_7
        :pswitch_b3
        :pswitch_7
        :pswitch_8
        :pswitch_210
        :pswitch_3d9
        :pswitch_7
        :pswitch_4a1
        :pswitch_1c2
        :pswitch_254
        :pswitch_77b
        :pswitch_7fc
        :pswitch_83d
        :pswitch_957
        :pswitch_896
        :pswitch_347
        :pswitch_ab1
        :pswitch_b41
        :pswitch_7
        :pswitch_a2b
        :pswitch_ab1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v1, 0xa

    .line 1162
    :try_start_2
    invoke-virtual {p0, p1}, doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_9

    .line 1164
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1166
    return-void

    .line 1164
    :catchall_9
    move-exception v0

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    throw v0
.end method
