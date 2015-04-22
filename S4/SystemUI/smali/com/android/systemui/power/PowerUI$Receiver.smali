.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerUI;Lcom/android/systemui/power/PowerUI$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/power/PowerUI;
    .param p2, "x1"    # Lcom/android/systemui/power/PowerUI$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    return-void
.end method

.method private updateSaverMode()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    # invokes: Lcom/android/systemui/power/PowerUI;->setSaverMode(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;Z)V

    .line 364
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .prologue
    .line 338
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 339
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 341
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 342
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 343
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 345
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v1, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    const-string v1, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 348
    const-string v1, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    const-string v1, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 352
    const-string v1, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 353
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 354
    const-string v1, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 355
    const-string v1, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_TOUCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v1, "LOW_BATTERY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v1, v1, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$100(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/power/PowerUI$Receiver;->updateSaverMode()V

    .line 360
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 34
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 369
    .local v2, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v18

    .line 371
    .local v18, "oldBatteryLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "level"

    const/16 v6, 0x64

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$402(Lcom/android/systemui/power/PowerUI;I)I

    .line 372
    sget v21, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 373
    .local v21, "oldBatteryStatus":I
    const-string v3, "status"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v25

    .line 376
    .local v25, "oldPlugType":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "plugged"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$502(Lcom/android/systemui/power/PowerUI;I)I

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v24

    .line 378
    .local v24, "oldInvalidCharger":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "invalid_charger"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    # setter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$602(Lcom/android/systemui/power/PowerUI;I)I

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v16, v0

    .line 382
    .local v16, "oldBatteryHealth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v19, v0

    .line 383
    .local v19, "oldBatteryOnline":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v15, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 384
    .local v15, "oldBatteryChargetype":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    move/from16 v17, v0

    .line 386
    .local v17, "oldBatteryHighVoltageCharger":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "health"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    .line 388
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "online"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    .line 389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "charge_type"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "current_avg"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryCurrentavg:I

    .line 391
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "temperature"

    const/16 v6, 0x14

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    .line 392
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "hv_charger"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v31, 0x1

    .line 396
    .local v31, "plugged":Z
    :goto_0
    if-eqz v25, :cond_3

    const/16 v26, 0x1

    .line 398
    .local v26, "oldPlugged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move/from16 v0, v18

    # invokes: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v3, v0}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;I)I

    move-result v22

    .line 399
    .local v22, "oldBucket":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    # invokes: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    .line 401
    .local v5, "bucket":I
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 402
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buckets   ....."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " .. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " .. "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v6

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "level          "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "health         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugType       "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalidCharger "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bucket         "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "plugged        "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "online  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chargeType  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$1000(Lcom/android/systemui/power/PowerUI;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v8, v8, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v9, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v11

    invoke-interface/range {v3 .. v11}, Lcom/android/systemui/power/PowerUI$WarningsUI;->update(IIJIIII)V

    .line 418
    if-nez v24, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-eqz v3, :cond_4

    .line 419
    const-string v3, "PowerUI"

    const-string v4, "showing invalid charger warning"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    .line 909
    .end local v5    # "bucket":I
    .end local v15    # "oldBatteryChargetype":I
    .end local v16    # "oldBatteryHealth":I
    .end local v17    # "oldBatteryHighVoltageCharger":Z
    .end local v18    # "oldBatteryLevel":I
    .end local v19    # "oldBatteryOnline":I
    .end local v21    # "oldBatteryStatus":I
    .end local v22    # "oldBucket":I
    .end local v24    # "oldInvalidCharger":I
    .end local v25    # "oldPlugType":I
    .end local v26    # "oldPlugged":Z
    .end local v31    # "plugged":Z
    :cond_1
    :goto_2
    return-void

    .line 395
    .restart local v15    # "oldBatteryChargetype":I
    .restart local v16    # "oldBatteryHealth":I
    .restart local v17    # "oldBatteryHighVoltageCharger":Z
    .restart local v18    # "oldBatteryLevel":I
    .restart local v19    # "oldBatteryOnline":I
    .restart local v21    # "oldBatteryStatus":I
    .restart local v24    # "oldInvalidCharger":I
    .restart local v25    # "oldPlugType":I
    :cond_2
    const/16 v31, 0x0

    goto/16 :goto_0

    .line 396
    .restart local v31    # "plugged":Z
    :cond_3
    const/16 v26, 0x0

    goto/16 :goto_1

    .line 422
    .restart local v5    # "bucket":I
    .restart local v22    # "oldBucket":I
    .restart local v26    # "oldPlugged":Z
    :cond_4
    if-eqz v24, :cond_26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-nez v3, :cond_26

    .line 423
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    .line 429
    :cond_5
    if-nez v31, :cond_28

    move/from16 v0, v22

    if-lt v5, v0, :cond_6

    if-eqz v26, :cond_28

    :cond_6
    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_28

    if-gez v5, :cond_28

    .line 434
    move/from16 v0, v22

    if-ne v5, v0, :cond_7

    if-eqz v26, :cond_27

    :cond_7
    const/16 v30, 0x1

    .line 435
    .local v30, "playSound":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    move/from16 v0, v30

    invoke-interface {v3, v0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    .line 444
    .end local v30    # "playSound":Z
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v0, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    move/from16 v23, v0

    .line 445
    .local v23, "oldCable":Z
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_2c

    .line 446
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_2b

    .line 447
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-eq v3, v4, :cond_9

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_2a

    .line 448
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    .line 449
    const-string v3, "PowerUI"

    const-string v4, "cable connects while wireless charging"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    move/from16 v0, v23

    if-ne v0, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 469
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    if-eqz v3, :cond_2f

    .line 470
    new-instance v12, Landroid/content/Intent;

    const-string v3, "com.android.systemui.power.action.ACTION_CABLE_CONNECTED"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    .local v12, "cableIntent":Landroid/content/Intent;
    const-string v3, "power_sharing"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 473
    const-string v3, "power_sharing"

    const/4 v4, 0x1

    invoke-virtual {v12, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 479
    :cond_b
    :goto_6
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz v3, :cond_c

    .line 480
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cable  "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " --> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v6, v6, Lcom/android/systemui/power/PowerUI;->mCable:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending cableIntent : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 484
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1202(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 491
    .end local v12    # "cableIntent":Landroid/content/Intent;
    :cond_d
    :goto_7
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v3

    if-nez v3, :cond_e

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "INTENT_DEBUG"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v6}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v6

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 495
    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v4, v4, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "LOW_BATTERY_DUMP"

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v3, v4, :cond_12

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    sub-int v3, v18, v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    sub-int v3, v3, v18

    const/16 v4, 0xa

    if-lt v3, v4, :cond_10

    :cond_f
    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_11

    :cond_10
    move/from16 v0, v22

    if-ge v5, v0, :cond_12

    const/4 v3, -0x2

    if-ne v3, v5, :cond_12

    .line 501
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 502
    const-string v3, "PowerUI"

    const-string v4, "Low battery dump"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.systemui.power.action.LOW_BATTERY_DUMP"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 508
    :cond_12
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->ATT:Z

    if-eqz v3, :cond_17

    .line 509
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v14

    .line 510
    .local v14, "isBatteryLowLevel":I
    const/16 v3, 0x14

    move/from16 v0, v18

    if-gt v0, v3, :cond_13

    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_14

    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_16

    :cond_14
    const/4 v3, 0x1

    if-eq v14, v3, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-le v3, v4, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1400(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 514
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 515
    new-instance v33, Landroid/content/Intent;

    const-string v3, "android.settings.POWERSAVING_AUTO_ENABLE"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 516
    .local v33, "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 517
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 518
    const-string v3, "PowerUI"

    const-string v4, "the battery level goes below the threshold of Power saving mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1402(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 540
    .end local v14    # "isBatteryLowLevel":I
    .end local v33    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_17
    :goto_8
    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    move/from16 v0, v21

    if-eq v0, v3, :cond_18

    .line 541
    const/4 v3, 0x5

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_38

    .line 542
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 550
    :cond_18
    :goto_9
    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_3c

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_19

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_19

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_3c

    .line 554
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_3b

    .line 555
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PowerManager;

    .line 556
    .local v32, "powerManager":Landroid/os/PowerManager;
    if-nez v32, :cond_39

    .line 557
    const-string v3, "PowerUI"

    const-string v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    .end local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_1a
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1600(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x2

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_1b

    .line 624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 625
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1602(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 628
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_1d

    .line 629
    const/4 v3, 0x5

    move/from16 v0, v16

    if-eq v3, v0, :cond_1c

    const/4 v3, 0x5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1c

    const/16 v3, 0x9

    move/from16 v0, v16

    if-eq v3, v0, :cond_1c

    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_1d

    .line 633
    :cond_1c
    const-string v3, "PowerUI"

    const-string v4, "Overvoltage/Undervoltage (recovered) so turn on the screen."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    .line 638
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move/from16 v0, v25

    if-eq v0, v3, :cond_20

    .line 639
    if-eqz v25, :cond_1e

    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v3, v0, :cond_20

    .line 640
    :cond_1e
    if-nez v25, :cond_20

    .line 641
    const/4 v3, 0x4

    move/from16 v0, v21

    if-eq v3, v0, :cond_44

    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_44

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1f

    const/4 v3, 0x6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1f

    const/4 v3, 0x7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-eq v3, v4, :cond_1f

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_44

    .line 647
    :cond_1f
    const-string v3, "PowerUI"

    const-string v4, "charging interruption so don\'t play charger connection sound"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_20
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    move/from16 v0, v19

    if-eq v0, v3, :cond_22

    .line 658
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_45

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_45

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargingNotice()V

    .line 680
    :cond_21
    :goto_c
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_22

    .line 681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v3, :cond_4b

    .line 682
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v3, v4, :cond_4a

    .line 683
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03e5

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 687
    :goto_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerWarning()V

    .line 697
    :cond_22
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatterySwellingLevel:I

    if-lt v3, v4, :cond_4e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatterySwellingTemperature:I

    if-lt v3, v4, :cond_4e

    .line 698
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryCount:I

    .line 700
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_24

    .line 701
    const-string v3, "PowerUI"

    const-string v4, "warn battery swelling"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    .line 703
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 704
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatterySwellingRecoveryNotice()V

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runBatterySwellingTask(I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_4d

    .line 708
    :cond_23
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PowerManager;

    .line 709
    .restart local v32    # "powerManager":Landroid/os/PowerManager;
    if-nez v32, :cond_4c

    .line 710
    const-string v3, "PowerUI"

    const-string v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    .end local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_24
    :goto_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    move/from16 v0, v17

    if-eq v0, v3, :cond_25

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryHighVoltageCharger:Z

    if-eqz v3, :cond_51

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showHighVoltageChargerNotice()V

    .line 758
    :cond_25
    :goto_10
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_1

    .line 759
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-eq v15, v3, :cond_1

    .line 760
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v3, v4, :cond_53

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eqz v3, :cond_53

    .line 762
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mDeviceType:I

    if-ne v3, v4, :cond_52

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03ec

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 767
    :goto_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSlowChargerWarning()V

    goto/16 :goto_2

    .line 424
    .end local v23    # "oldCable":Z
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result v3

    if-eqz v3, :cond_5

    goto/16 :goto_2

    .line 434
    :cond_27
    const/16 v30, 0x0

    goto/16 :goto_3

    .line 436
    :cond_28
    if-nez v31, :cond_29

    move/from16 v0, v22

    if-le v5, v0, :cond_8

    if-lez v5, :cond_8

    .line 437
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mForceTest:Z

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto/16 :goto_4

    .line 451
    .restart local v23    # "oldCable":Z
    :cond_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 454
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 458
    :cond_2c
    const-string v3, "power_sharing"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 460
    :cond_2d
    const-string v3, "pogo_plugged"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 461
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 463
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/systemui/power/PowerUI;->mCable:Z

    goto/16 :goto_5

    .line 477
    :cond_2f
    new-instance v12, Landroid/content/Intent;

    const-string v3, "com.android.systemui.power.action.ACTION_CABLE_DISCONNECTED"

    invoke-direct {v12, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v12    # "cableIntent":Landroid/content/Intent;
    goto/16 :goto_6

    .line 487
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingCableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1202(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_7

    .line 521
    .end local v12    # "cableIntent":Landroid/content/Intent;
    .restart local v14    # "isBatteryLowLevel":I
    .restart local v33    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_31
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoEnableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1402(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_8

    .line 523
    .end local v33    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_32
    const/16 v3, 0x14

    move/from16 v0, v18

    if-le v0, v3, :cond_33

    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_34

    :cond_33
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_36

    :cond_34
    if-eqz v14, :cond_35

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_36

    :cond_35
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1500(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 527
    :cond_36
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "isLowLevel"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 528
    new-instance v33, Landroid/content/Intent;

    const-string v3, "android.settings.POWERSAVING_AUTO_ENABLE"

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .restart local v33    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 530
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, v33

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 531
    const-string v3, "PowerUI"

    const-string v4, "the battery level goes over the threshold of Power saving mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1502(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_8

    .line 534
    :cond_37
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mPendingPowerSavingModeAutoDisableBroadcast:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1502(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_8

    .line 543
    .end local v14    # "isBatteryLowLevel":I
    .end local v33    # "powerSavingModeAutoEnableIntent":Landroid/content/Intent;
    :cond_38
    const/4 v3, 0x5

    move/from16 v0, v21

    if-ne v3, v0, :cond_18

    .line 544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    goto/16 :goto_9

    .line 559
    .restart local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_39
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const v4, 0x10000006

    const-string v6, "PowerUI"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_3a

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 566
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 568
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1a

    .line 569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_a

    .line 564
    :cond_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_12

    .line 572
    .end local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_3b
    const/16 v3, 0x8

    move/from16 v0, v16

    if-ne v3, v0, :cond_1a

    .line 573
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1a

    .line 574
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_a

    .line 577
    :cond_3c
    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_41

    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_41

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_3f

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Landroid/os/PowerManager;

    .line 581
    .restart local v32    # "powerManager":Landroid/os/PowerManager;
    if-nez v32, :cond_3d

    .line 582
    const-string v3, "PowerUI"

    const-string v4, "onReceive : fail to get PowerManager reference"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 584
    :cond_3d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const v4, 0x10000006

    const-string v6, "PowerUI"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    .line 586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_3e

    .line 587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 591
    :goto_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 593
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1a

    .line 594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_a

    .line 589
    :cond_3e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_13

    .line 597
    .end local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_3f
    const/4 v3, 0x3

    move/from16 v0, v16

    if-ne v3, v0, :cond_1a

    .line 598
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-nez v3, :cond_40

    .line 599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v6, 0xea60

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 602
    :cond_40
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-nez v3, :cond_1a

    .line 603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    goto/16 :goto_a

    .line 606
    :cond_41
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_1a

    .line 607
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    if-ne v3, v4, :cond_43

    const/4 v3, 0x3

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_43

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_43

    .line 609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1602(Lcom/android/systemui/power/PowerUI;Z)Z

    .line 615
    :goto_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-boolean v3, v3, Lcom/android/systemui/power/PowerUI;->mDimKeeping:Z

    if-eqz v3, :cond_42

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 618
    :cond_42
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mChargingInterruptionScreenDimLock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_a

    .line 611
    :cond_43
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissChargingInterruptionWarning()V

    .line 612
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x0

    # setter for: Lcom/android/systemui/power/PowerUI;->mNeedToDismissChargingInterruptionWarning:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1602(Lcom/android/systemui/power/PowerUI;Z)Z

    goto :goto_14

    .line 649
    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->playSound(I)V

    goto/16 :goto_b

    .line 661
    :cond_45
    const/16 v3, 0xa

    move/from16 v0, v19

    if-ne v3, v0, :cond_47

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-eq v3, v4, :cond_46

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_47

    .line 663
    :cond_46
    const-string v3, "PowerUI"

    const-string v4, "switch from wireless to cable"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWirelessChargingNotice()V

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03e0

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    goto/16 :goto_c

    .line 667
    :cond_47
    const/4 v3, 0x3

    move/from16 v0, v19

    if-eq v3, v0, :cond_48

    const/4 v3, 0x4

    move/from16 v0, v19

    if-ne v3, v0, :cond_49

    :cond_48
    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_49

    .line 669
    const-string v3, "PowerUI"

    const-string v4, "switch from cable to wireless"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showWirelessChargingNotice()V

    .line 671
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03e1

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->turnOnScreen()V

    goto/16 :goto_c

    .line 673
    :cond_49
    const/4 v3, 0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_21

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_21

    .line 675
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissWirelessChargingNotice()V

    goto/16 :goto_c

    .line 685
    :cond_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03e4

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 688
    :cond_4b
    if-nez v19, :cond_22

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerWarning()V

    goto/16 :goto_e

    .line 712
    .restart local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_4c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const v4, 0x3000000a

    const-string v6, "PowerUI"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    .line 713
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    const-string v6, "PowerUI"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

    .line 714
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 715
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_f

    .line 718
    .end local v32    # "powerManager":Landroid/os/PowerManager;
    :cond_4d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_f

    .line 722
    :cond_4e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryLevel:I

    if-le v3, v4, :cond_4f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryTemperature:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryTemperature:I

    if-gt v3, v4, :cond_24

    :cond_4f
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    if-eqz v3, :cond_24

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryCount:I

    .line 725
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryCount:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatterySwellingRecoveryThreshold:I

    if-le v3, v4, :cond_24

    .line 726
    const-string v3, "PowerUI"

    const-string v4, "recover from battery swelling"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mBatterySwelling:Z

    .line 728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissBatterySwellingWarning()V

    .line 730
    const/4 v3, 0x4

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_50

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryHealth:I

    if-ne v3, v4, :cond_50

    .line 731
    const-string v3, "PowerUI"

    const-string v4, "recover from battery swelling and interrupt charging by overheat"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showChargingInterruptionWarning()V

    .line 735
    :cond_50
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showBatterySwellingRecoveryNotice()V

    .line 737
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_24

    .line 738
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingScreenBrightLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 739
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mBatterySwellingPartialLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_f

    .line 751
    :cond_51
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissHighVoltageChargerNotice()V

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelHighVoltageChargerNotification()V

    goto/16 :goto_10

    .line 765
    :cond_52
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03eb

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_11

    .line 768
    :cond_53
    const/4 v3, 0x2

    if-ne v3, v15, :cond_1

    .line 769
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissSlowChargerWarning()V

    goto/16 :goto_2

    .line 776
    .end local v5    # "bucket":I
    .end local v15    # "oldBatteryChargetype":I
    .end local v16    # "oldBatteryHealth":I
    .end local v17    # "oldBatteryHighVoltageCharger":Z
    .end local v18    # "oldBatteryLevel":I
    .end local v19    # "oldBatteryOnline":I
    .end local v21    # "oldBatteryStatus":I
    .end local v22    # "oldBucket":I
    .end local v23    # "oldCable":Z
    .end local v24    # "oldInvalidCharger":I
    .end local v25    # "oldPlugType":I
    .end local v26    # "oldPlugged":Z
    .end local v31    # "plugged":Z
    :cond_54
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 777
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v3, v6, v7}, Lcom/android/systemui/power/PowerUI;->access$1002(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_2

    .line 778
    :cond_55
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    .line 779
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 v6, -0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J
    invoke-static {v3, v6, v7}, Lcom/android/systemui/power/PowerUI;->access$1002(Lcom/android/systemui/power/PowerUI;J)J

    goto/16 :goto_2

    .line 780
    :cond_56
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 781
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/power/PowerUI$Receiver;->updateSaverMode()V

    goto/16 :goto_2

    .line 782
    :cond_57
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 783
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "mode"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # invokes: Lcom/android/systemui/power/PowerUI;->setSaverMode(Z)V
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;Z)V

    goto/16 :goto_2

    .line 786
    :cond_58
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 788
    const/4 v3, 0x5

    sget v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-ne v3, v4, :cond_59

    .line 789
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissFullBatteryNotice()V

    .line 790
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify FullBatteryNotification again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showFullBatteryNotice()V

    .line 795
    :cond_59
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    # invokes: Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;I)I

    move-result v5

    .line 796
    .restart local v5    # "bucket":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mPlugType:I
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)I

    move-result v3

    if-nez v3, :cond_5a

    sget v3, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5a

    if-gez v5, :cond_5a

    .line 799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    .line 800
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify LowBatteryNotification again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    :cond_5a
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_1

    .line 805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-nez v3, :cond_5b

    .line 806
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissIncompatibleChargerWarning()V

    .line 807
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify incompatible charger again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showIncompatibleChargerWarning()V

    goto/16 :goto_2

    .line 812
    :cond_5b
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryChargetype:I

    if-ne v3, v4, :cond_1

    .line 813
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissSlowChargerWarning()V

    .line 814
    const-string v3, "PowerUI"

    const-string v4, "Language is changed so notify slow charging again"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showSlowChargerWarning()V

    goto/16 :goto_2

    .line 821
    .end local v5    # "bucket":I
    :cond_5c
    const-string v3, "com.android.server.PowerManagerService.action.FAILED_TO_DETECT_FACE_BEFORE_DIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 822
    const-string v3, "PowerUI"

    const-string v4, "Face detection is failed before dimming"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->notifyFaceDetectionFailureNotification()V

    goto/16 :goto_2

    .line 826
    :cond_5d
    const-string v3, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 827
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 828
    const-string v3, "PowerUI"

    const-string v4, "FTA mode ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 829
    :cond_5e
    const-string v3, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 830
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mFTAMode:Z

    .line 831
    const-string v3, "PowerUI"

    const-string v4, "FTA mode OFF"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 832
    :cond_5f
    const-string v3, "com.samsung.pen.INSERT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 833
    const-string v3, "penInsert"

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v29

    .line 834
    .local v29, "penInsert":Z
    if-nez v29, :cond_1

    const/16 v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOnline:I

    if-ne v3, v4, :cond_1

    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->mSPen:Z

    if-eqz v3, :cond_1

    .line 835
    const-string v3, "PowerUI"

    const-string v4, "S Pen is detached and wireless charging"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const v4, 0x7f0d03e2

    const/4 v6, 0x1

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 838
    .end local v29    # "penInsert":Z
    :cond_60
    const-string v3, "com.sec.android.app.camera.ACTION_START_COVER_CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 839
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 840
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    .line 841
    const-string v3, "PowerUI"

    const-string v4, "cover camera start"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 842
    :cond_61
    const-string v3, "com.sec.android.app.camera.ACTION_STOP_COVER_CAMERA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 843
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/systemui/power/PowerUI;->mCoverCamera:Z

    .line 844
    const-string v3, "PowerUI"

    const-string v4, "cover camera stop"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 848
    :cond_62
    const-string v3, "android.intent.action.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 849
    sget-boolean v3, Lcom/android/systemui/power/PowerUI$Sales;->VZW:Z

    if-eqz v3, :cond_65

    .line 850
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    move/from16 v27, v0

    .line 851
    .local v27, "oldSIOPLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "check_cooldown_level"

    const/4 v6, 0x5

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    .line 852
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SIOP Level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    move/from16 v0, v27

    if-eq v0, v3, :cond_1

    .line 855
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-ne v3, v4, :cond_63

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const v4, 0xea60

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownWarningTask(I)V

    goto/16 :goto_2

    .line 857
    :cond_63
    const/16 v3, 0x9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-ne v3, v4, :cond_64

    .line 858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownTask(I)V

    .line 859
    const-string v3, "PowerUI"

    const-string v4, "SIOP level is critical so shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 860
    :cond_64
    const/16 v3, 0x8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mSIOPLevel:I

    if-le v3, v4, :cond_1

    const/16 v3, 0x8

    move/from16 v0, v27

    if-gt v3, v0, :cond_1

    .line 861
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatShutdownWarning()V

    .line 862
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelOverheatShutdownWarningTask()V

    .line 863
    const-string v3, "PowerUI"

    const-string v4, "SIOP level recovered from shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 867
    .end local v27    # "oldSIOPLevel":I
    :cond_65
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    move/from16 v20, v0

    .line 868
    .local v20, "oldBatteryOverheatLevel":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v4, "battery_overheat_level"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    .line 869
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Battery overheat Level = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v6, v6, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v3, v3, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    move/from16 v0, v20

    if-eq v0, v3, :cond_1

    .line 872
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-ne v3, v4, :cond_66

    .line 873
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const v4, 0xea60

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->runOverheatShutdownWarningTask(I)V

    goto/16 :goto_2

    .line 874
    :cond_66
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryOverheatLevel:I

    if-le v3, v4, :cond_1

    const/4 v3, 0x2

    move/from16 v0, v20

    if-gt v3, v0, :cond_1

    .line 875
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissOverheatShutdownWarning()V

    .line 876
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->cancelOverheatShutdownWarningTask()V

    .line 877
    const-string v3, "PowerUI"

    const-string v4, "Battery overheat level recovered from shutdown"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 881
    .end local v20    # "oldBatteryOverheatLevel":I
    :cond_67
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    .line 882
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    const-string v4, "com.android.systemui.power_overheat_shutdown"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v28

    .line 883
    .local v28, "overheatShutdownSharedPrefs":Landroid/content/SharedPreferences;
    if-eqz v28, :cond_68

    .line 884
    const-string v3, "OverheatShutdown"

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 885
    invoke-interface/range {v28 .. v28}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    .line 886
    .local v13, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "OverheatShutdown"

    const/4 v4, 0x0

    invoke-interface {v13, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 887
    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 889
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.android.systemui.power.action.ACTION_CLEAR_SHUTDOWN"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showOverheatShutdownNotice()V

    .line 893
    .end local v13    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_68
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v4, 0x1

    # setter for: Lcom/android/systemui/power/PowerUI;->mBootCompleted:Z
    invoke-static {v3, v4}, Lcom/android/systemui/power/PowerUI;->access$1302(Lcom/android/systemui/power/PowerUI;Z)Z

    goto/16 :goto_2

    .line 896
    .end local v28    # "overheatShutdownSharedPrefs":Landroid/content/SharedPreferences;
    :cond_69
    const-string v3, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 897
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto/16 :goto_2

    .line 898
    :cond_6a
    const-string v3, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_TOUCH"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 899
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    goto/16 :goto_2

    .line 902
    :cond_6b
    const-string v3, "LOW_BATTERY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 903
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    # getter for: Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;
    invoke-static {v3}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(Z)V

    goto/16 :goto_2

    .line 907
    :cond_6c
    const-string v3, "PowerUI"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unknown intent: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
