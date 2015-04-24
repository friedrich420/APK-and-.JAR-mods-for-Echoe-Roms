.class public Lcom/android/server/telecom/ErrorDialogActivity;
.super Landroid/app/Activity;
.source "ErrorDialogActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/telecom/ErrorDialogActivity;Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 34
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/telecom/ErrorDialogActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->finish()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 143
    invoke-virtual {p0, v0, v0}, Lcom/android/server/telecom/ErrorDialogActivity;->overridePendingTransition(II)V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const v4, 0x104000a

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "show_missing_voicemail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/ErrorDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/ErrorDialogActivity$5;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;)V

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080021

    new-instance v2, Lcom/android/server/telecom/ErrorDialogActivity$4;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/ErrorDialogActivity$4;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/server/telecom/ErrorDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/ErrorDialogActivity$3;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 70
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "error_message_id"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 58
    if-ne v1, v3, :cond_1

    .line 59
    sget-object v1, Lcom/android/server/telecom/ErrorDialogActivity;->TAG:Ljava/lang/String;

    const-string v2, "ErrorDialogActivity called with no error type extra."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->finish()V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v2, Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/secutils/ErrorDialog;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;

    .line 63
    iget-object v2, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;

    const v2, 0x7f08002b

    if-eq v1, v2, :cond_2

    const v2, 0x7f080038

    if-eq v1, v2, :cond_2

    const v2, 0x7f08008a

    if-eq v1, v2, :cond_2

    const v2, 0x7f080089

    if-eq v1, v2, :cond_2

    const v2, 0x7f08008b

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    .line 64
    iget-object v0, p0, Lcom/android/server/telecom/ErrorDialogActivity;->mErrorDialog:Lcom/android/server/telecom/secutils/ErrorDialog;

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/secutils/ErrorDialog;->showSpecificErrorDialog(I)V

    goto :goto_0

    .line 66
    :cond_4
    invoke-static {p0, v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->changeRtsMEssage(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/telecom/ErrorDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_5
    new-instance v1, Lcom/android/server/telecom/ErrorDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/ErrorDialogActivity$1;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;)V

    new-instance v2, Lcom/android/server/telecom/ErrorDialogActivity$2;

    invoke-direct {v2, p0}, Lcom/android/server/telecom/ErrorDialogActivity$2;-><init>(Lcom/android/server/telecom/ErrorDialogActivity;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    const-string v0, "SERR"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothManager;->sendSecBluetoothATCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
