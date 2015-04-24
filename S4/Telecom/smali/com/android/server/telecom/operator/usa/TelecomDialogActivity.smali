.class public Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;
.super Landroid/app/Activity;
.source "TelecomDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$21;,
        Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    new-instance v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$1;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 110
    new-instance v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$2;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    iput-object v0, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "tel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "extra_by_pass"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->finish()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->showActivateCompleteNumberDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    .line 54
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-lt v3, v4, :cond_0

    const/16 v4, 0x39

    if-gt v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa

    if-ne v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private static getDialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x3

    .line 556
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 557
    if-ge v0, v1, :cond_0

    .line 562
    :goto_0
    return-object p0

    .line 558
    :cond_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 560
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object p0, v0

    .line 562
    goto :goto_0
.end method

.method private showActivateCompleteNumberDialog(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 356
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getDialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 360
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "country_detector"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/CountryDetector;

    .line 361
    invoke-virtual {v0}, Landroid/location/CountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Country;->getCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {p1}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getDialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 364
    new-instance v4, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$12;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$12;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    new-instance v2, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$13;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$13;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f080040

    invoke-virtual {p0, v5}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 380
    const-string v0, "*72"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080051

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f080048

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080046

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080052

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 395
    return-void

    .line 383
    :cond_0
    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 582
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 585
    invoke-virtual {p0, v0, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->overridePendingTransition(II)V

    .line 586
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .prologue
    const v2, 0x7f08003c

    const v6, 0x104000a

    const/high16 v10, 0x1040000

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    const-string v3, "extra_intent"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 72
    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent()Landroid/content/Intent;

    move-result-object v3

    .line 73
    const-string v4, "extra_dialog_type"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    sparse-switch v0, :sswitch_data_0

    .line 98
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->finish()V

    .line 101
    :goto_0
    return-void

    .line 77
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->finish()V

    goto :goto_0

    .line 80
    :sswitch_1
    new-instance v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$3;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08003f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 83
    :sswitch_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCallRoamingGuardMessageId : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p0, v3, v4}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isDomesticRoamingSettingInService()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f08003b

    :goto_1
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isInternationalRoamingSettingInService()Z

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    :cond_0
    :goto_2
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$4;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$4;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    new-instance v2, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$5;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$5;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-ne v0, v5, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isInternationalRoamingSettingInServiceGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unexpected phone type :  : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 86
    :sswitch_3
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$6;

    invoke-direct {v1, p0, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$6;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$7;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$7;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f080097

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f080095

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 89
    :sswitch_4
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$8;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$9;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$10;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$10;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080098

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080095

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f080096

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 92
    :sswitch_5
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;->IDLE:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;

    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->isCallForwardingNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v0, "true"

    const-string v3, "gsm.operator.isroaming"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;->ROAMING:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;

    :cond_5
    :goto_3
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getDialNumber(Ljava/lang/String;)Ljava/lang/String;

    sget-object v3, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$21;->$SwitchMap$com$android$server$telecom$operator$usa$TelecomDialogActivity$CallForwardingState:[I

    invoke-virtual {v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->finish()V

    goto/16 :goto_0

    :cond_6
    const-string v0, "*72"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "*92"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getDialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_8

    sget-object v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;->ACTIVATE_COMPLETE_NUMBER:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;

    goto :goto_3

    :cond_8
    sget-object v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;->ACTIVATE_INCOMPLETE_NUMBER:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;

    goto :goto_3

    :cond_9
    sget-object v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;->DEACTIVATE:Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$CallForwardingState;

    goto :goto_3

    :pswitch_0
    const v0, 0x7f08004f

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$11;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$11;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->showActivateCompleteNumberDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getDialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_from_where"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f040005

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v0, 0x7f0e000c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v7, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;

    invoke-direct {v7, p0, v0, v5, v3}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$14;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$15;

    invoke-direct {v8, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$15;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v9, 0x7f080040

    invoke-virtual {p0, v9}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, " ("

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v2, "*72"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const v2, 0x7f080041

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080051

    invoke-virtual {p0, v3}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f080043

    invoke-virtual {p0, v3}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "us_cdma_call_fowarding_setting"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const v2, 0x7f080046

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_5
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v10, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    new-instance v1, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$16;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Landroid/widget/EditText;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    goto/16 :goto_0

    :cond_a
    const v2, 0x7f080042

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    :cond_b
    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :pswitch_3
    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f08004a

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f08004e

    invoke-virtual {p0, v2}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$17;

    invoke-direct {v3, p0, v0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$17;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;Ljava/lang/String;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080047

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 95
    :sswitch_6
    new-instance v0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$18;

    invoke-direct {v0, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$18;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    new-instance v1, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$19;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$19;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    new-instance v2, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$20;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity$20;-><init>(Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f080099

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f08009a

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v6, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/telecom/operator/usa/TelecomDialogActivity;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_c
    move v1, v0

    goto/16 :goto_2

    :cond_d
    move v0, v1

    goto/16 :goto_1

    .line 75
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0xc8 -> :sswitch_6
        0x12c -> :sswitch_3
        0x12d -> :sswitch_4
    .end sparse-switch

    .line 92
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
