.class Lcom/android/server/UiModeManagerService$5;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableCarMode(I)V
    .registers 8
    .param p1, "flags"    # I

    .prologue
    .line 209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 211
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_24

    .line 212
    :try_start_9
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 213
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_1c

    .line 214
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 216
    :cond_1c
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_21

    .line 218
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 220
    return-void

    .line 216
    :catchall_21
    move-exception v2

    :try_start_22
    monitor-exit v3
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    :try_start_23
    throw v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_24

    .line 218
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_37

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump uimode service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 279
    :goto_36
    return-void

    .line 278
    :cond_37
    iget-object v0, p0, this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    goto :goto_36
.end method

.method public enableCarMode(I)V
    .registers 7
    .param p1, "flags"    # I

    .prologue
    .line 194
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 196
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_23

    .line 197
    :try_start_9
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, p1}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZI)V

    .line 198
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v2, v2, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v2, :cond_1b

    .line 199
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v4}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 201
    :cond_1b
    monitor-exit v3
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_20

    .line 203
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    return-void

    .line 201
    :catchall_20
    move-exception v2

    :try_start_21
    monitor-exit v3
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_20

    :try_start_22
    throw v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_23

    .line 203
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getCurrentModeType()I
    .registers 5

    .prologue
    .line 224
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 226
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_17

    .line 227
    :try_start_9
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget v2, v2, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 v2, v2, 0xf

    monitor-exit v3
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_14

    .line 230
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    .line 228
    :catchall_14
    move-exception v2

    :try_start_15
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    :try_start_16
    throw v2
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_17

    .line 230
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getNightMode()I
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 263
    :try_start_5
    iget-object v0, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget v0, v0, Lcom/android/server/UiModeManagerService;->mNightMode:I

    monitor-exit v1

    return v0

    .line 264
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public setNightMode(I)V
    .registers 8
    .param p1, "mode"    # I

    .prologue
    .line 236
    packed-switch p1, :pswitch_data_5c

    .line 242
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 245
    :pswitch_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 247
    .local v0, "ident":J
    :try_start_20
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget-object v3, v2, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_56

    .line 248
    :try_start_25
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->isDoingNightModeLocked()Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    iget v2, v2, Lcom/android/server/UiModeManagerService;->mNightMode:I

    if-eq v2, p1, :cond_4e

    .line 249
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v2}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "ui_night_mode"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 251
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    iput p1, v2, Lcom/android/server/UiModeManagerService;->mNightMode:I

    .line 252
    iget-object v2, p0, this$0:Lcom/android/server/UiModeManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 254
    :cond_4e
    monitor-exit v3
    :try_end_4f
    .catchall {:try_start_25 .. :try_end_4f} :catchall_53

    .line 256
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    return-void

    .line 254
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v3
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    :try_start_55
    throw v2
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_56

    .line 256
    :catchall_56
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 236
    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
