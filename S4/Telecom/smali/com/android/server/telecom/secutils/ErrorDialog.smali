.class public final Lcom/android/server/telecom/secutils/ErrorDialog;
.super Ljava/lang/Object;
.source "ErrorDialog.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/telecom/secutils/ErrorDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$1;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    .line 131
    new-instance v0, Lcom/android/server/telecom/secutils/ErrorDialog$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$2;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 122
    iput-object p1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    .line 123
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 32
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ErrorDialog"

    const-string v1, "STATE_IN_SERVICE : start call "

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-static {v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/telecom/secutils/ErrorDialog;)Z
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    const-string v0, "ErrorDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "getPhoneId :  "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(J)I

    move-result v0

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {}, Lcom/android/server/telecom/TelecomApp;->getInstance()Lcom/android/server/telecom/TelecomApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomApp;->getPhoneAccountRegistrar()Lcom/android/server/telecom/PhoneAccountRegistrar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/PhoneAccountRegistrar;->getAllPhoneAccountHandles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    const-string v6, "E"

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v2

    :cond_0
    const-string v6, "ErrorDialog"

    const-string v7, "PhoneAccountHandle %s."

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v0, v8, v3

    invoke-static {v6, v7, v8}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    const-string v0, "ErrorDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "isSimReady : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isPhoneAccountReady : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_3

    if-eqz v4, :cond_3

    :goto_2
    return v2

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method static synthetic access$300(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/telecom/secutils/ErrorDialog;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 32
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    const v2, 0x7f080030

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$7;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$7;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$8;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$8;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/telecom/secutils/ErrorDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/telecom/secutils/ErrorDialog;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mAirplaneModeOffProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private finishActivity()V
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 129
    return-void
.end method


# virtual methods
.method public final showSpecificErrorDialog(I)V
    .locals 9

    .prologue
    const/high16 v8, 0x1040000

    const/4 v7, 0x2

    const/4 v6, 0x0

    const v5, 0x104000a

    const/4 v4, 0x1

    .line 379
    const-string v0, "ErrorDialog"

    const-string v1, "showSpecificErrorDialog : There is no matched dialog "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    sparse-switch p1, :sswitch_data_0

    .line 397
    const-string v0, "ErrorDialog"

    const-string v1, "showSpecificErrorDialog : There is no matched dialog "

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 400
    :goto_0
    return-void

    .line 382
    :sswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$6;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$6;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$5;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$5;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$4;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$4;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$3;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$3;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 385
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$11;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$11;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$10;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$10;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$9;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$9;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 388
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$14;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$14;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$13;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$13;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v8, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$12;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$12;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 391
    :sswitch_3
    const-string v0, "ErrorDialog"

    const-string v1, "outgoingCSVoicecallWithToast"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->removeVideoCallExtra(Landroid/content/Intent;)V

    const-string v1, "cs_voice_call_outgoing"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/telecom/secutils/ErrorDialog;->finishActivity()V

    goto/16 :goto_0

    .line 394
    :sswitch_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/telecom/secutils/ErrorDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$16;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$16;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/secutils/ErrorDialog$15;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/secutils/ErrorDialog$15;-><init>(Lcom/android/server/telecom/secutils/ErrorDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08002b -> :sswitch_0
        0x7f080038 -> :sswitch_1
        0x7f080089 -> :sswitch_3
        0x7f08008a -> :sswitch_2
        0x7f08008b -> :sswitch_4
    .end sparse-switch
.end method
