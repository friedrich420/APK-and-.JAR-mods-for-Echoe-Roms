.class public final Lcom/samsung/android/service/reactive/ReactiveServiceManager;
.super Ljava/lang/Object;
.source "ReactiveServiceManager.java"


# static fields
.field public static final FLAG_ACTIVATED:I = 0x1

.field public static final FLAG_DEACTIVATED:I = 0x0

.field public static final FLAG_TRIGGERED:I = 0x2

.field public static final GOOGLE_FACTORY_RESET_PROTECTION_IS_SUPPORTED:I = 0x2

.field public static final REACTIVATION_FLAG:I = 0x0

.field public static final REACTIVE_SERVICE_EXCEPTION_ERROR:I = -0x8

.field public static final REACTIVE_SERVICE_INVALID_ARGUMENTS:I = -0x6

.field public static final REACTIVE_SERVICE_IS_NOT_EXIST:I = -0x7

.field public static final REACTIVE_SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field public static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field public static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field public static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field public static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field public static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field public static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field private static final RS_GOOGLE_NWD_SUPPORTED:I = 0x4

.field private static final RS_IS_NOT_SUPPORTED:I = 0x0

.field private static final RS_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field private static final RS_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field public static final SAMSUNG_GOOGLE_REACTIVE_SERVICES_ARE_SUPPORTED:I = 0x3

.field public static final SAMSUNG_REACTIVE_SERVICE_IS_SUPPORTED:I = 0x1

.field public static final SERVICE_FLAG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ReactiveServiceManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/service/reactive/IReactiveService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 250
    const-string v0, "ReactiveService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/reactive/IReactiveService;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    .line 251
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .registers 5

    .prologue
    .line 558
    :try_start_0
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getErrorCode()I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_a

    move-result v1

    .line 570
    :goto_6
    return v1

    .line 560
    :catch_7
    move-exception v2

    .line 562
    .local v2, "npe":Ljava/lang/NullPointerException;
    const/4 v1, -0x7

    goto :goto_6

    .line 564
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_a
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 567
    const/4 v1, -0x8

    goto :goto_6
.end method

.method public getFlag(I)I
    .registers 8
    .param p1, "flag"    # I

    .prologue
    .line 336
    :try_start_0
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->getFlag(I)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_5} :catch_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_2d

    move-result v2

    .line 348
    .local v2, "ret":I
    const/4 v3, 0x2

    if-gt v2, v3, :cond_b

    if-gez v2, :cond_29

    .line 349
    :cond_b
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFlag() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v2    # "ret":I
    :cond_29
    :goto_29
    return v2

    .line 338
    :catch_2a
    move-exception v1

    .line 340
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/4 v2, -0x7

    goto :goto_29

    .line 342
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_2d
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 345
    const/4 v2, -0x8

    goto :goto_29
.end method

.method public getServiceSupport()I
    .registers 8

    .prologue
    const/4 v3, 0x3

    .line 284
    :try_start_1
    iget-object v4, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v4}, Lcom/samsung/android/service/reactive/IReactiveService;->getServiceSupport()I
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_27

    move-result v2

    .line 296
    .local v2, "supported":I
    const-string v4, "ReactiveServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Supported : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    packed-switch v2, :pswitch_data_30

    .line 313
    :pswitch_22
    const/4 v3, 0x0

    .end local v2    # "supported":I
    :goto_23
    :pswitch_23
    return v3

    .line 286
    :catch_24
    move-exception v1

    .line 288
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/4 v3, -0x7

    goto :goto_23

    .line 290
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_27
    move-exception v0

    .line 292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 293
    const/4 v3, -0x8

    goto :goto_23

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "supported":I
    :pswitch_2d
    const/4 v3, 0x1

    goto :goto_23

    .line 298
    nop

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2d
        :pswitch_22
        :pswitch_23
        :pswitch_23
        :pswitch_23
    .end packed-switch
.end method

.method public getString()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 413
    :try_start_1
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3}, Lcom/samsung/android/service/reactive/IReactiveService;->getString()Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_11

    move-result-object v2

    .line 426
    :goto_7
    return-object v2

    .line 415
    :catch_8
    move-exception v1

    .line 417
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "ReactiveServiceManager"

    const-string v4, "getString() : Service is not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 420
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_11
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public isConnected()Z
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    if-eqz v0, :cond_6

    .line 262
    const/4 v0, 0x1

    .line 264
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public sessionAccept([B)[B
    .registers 7
    .param p1, "input"    # [B

    .prologue
    const/4 v2, 0x0

    .line 481
    if-nez p1, :cond_b

    .line 483
    const-string v3, "ReactiveServiceManager"

    const-string v4, "SessionAccept() : Invalid argument"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    :goto_a
    return-object v2

    .line 489
    :cond_b
    :try_start_b
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionAccept([B)[B
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v2

    .local v2, "ret":[B
    goto :goto_a

    .line 491
    .end local v2    # "ret":[B
    :catch_12
    move-exception v1

    .line 493
    .local v1, "npe":Ljava/lang/NullPointerException;
    const-string v3, "ReactiveServiceManager"

    const-string v4, "SessionAccpet() : Service is not exist."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 496
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_1b
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public sessionComplete([B)I
    .registers 8
    .param p1, "input"    # [B

    .prologue
    .line 520
    if-nez p1, :cond_4

    .line 521
    const/4 v2, -0x6

    .line 540
    :cond_3
    :goto_3
    return v2

    .line 525
    :cond_4
    :try_start_4
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->sessionComplete([B)I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_9} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_2f

    move-result v2

    .line 537
    .local v2, "ret":I
    if-eqz v2, :cond_3

    .line 538
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sessionComplete() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 527
    .end local v2    # "ret":I
    :catch_2c
    move-exception v1

    .line 529
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/4 v2, -0x7

    goto :goto_3

    .line 531
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_2f
    move-exception v0

    .line 533
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 534
    const/4 v2, -0x8

    goto :goto_3
.end method

.method public setFlag(IILjava/lang/String;)I
    .registers 10
    .param p1, "flag"    # I
    .param p2, "value"    # I
    .param p3, "info"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x6

    .line 375
    const/4 v3, 0x1

    if-gt p2, v3, :cond_6

    if-gez p2, :cond_7

    .line 398
    :cond_6
    :goto_6
    return v2

    .line 378
    :cond_7
    if-nez p1, :cond_b

    if-eqz p3, :cond_6

    .line 383
    :cond_b
    :try_start_b
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/service/reactive/IReactiveService;->setFlag(IILjava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_10} :catch_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_36

    move-result v2

    .line 395
    .local v2, "ret":I
    if-eqz v2, :cond_6

    .line 396
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setFlag() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 385
    .end local v2    # "ret":I
    :catch_33
    move-exception v1

    .line 387
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/4 v2, -0x7

    goto :goto_6

    .line 389
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_36
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    const/4 v2, -0x8

    goto :goto_6
.end method

.method public setString(Ljava/lang/String;)I
    .registers 8
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 444
    if-nez p1, :cond_4

    .line 445
    const/4 v2, -0x6

    .line 466
    :goto_3
    return v2

    .line 449
    :cond_4
    :try_start_4
    iget-object v3, p0, mService:Lcom/samsung/android/service/reactive/IReactiveService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/reactive/IReactiveService;->setString(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_9} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_2f

    move-result v2

    .line 461
    .local v2, "ret":I
    if-gez v2, :cond_35

    .line 462
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setString() : error code["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 451
    .end local v2    # "ret":I
    :catch_2c
    move-exception v1

    .line 453
    .local v1, "npe":Ljava/lang/NullPointerException;
    const/4 v2, -0x7

    goto :goto_3

    .line 455
    .end local v1    # "npe":Ljava/lang/NullPointerException;
    :catch_2f
    move-exception v0

    .line 457
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    const/4 v2, -0x8

    goto :goto_3

    .line 464
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "ret":I
    :cond_35
    const-string v3, "ReactiveServiceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setString() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters are saved."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
