.class public Lcom/android/settings/fingerprint/FingerprintConfirm;
.super Landroid/app/Activity;
.source "FingerprintConfirm.java"


# instance fields
.field private mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field mIdentifyDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mIdentifyDialog:Landroid/app/Dialog;

    .line 92
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintConfirm$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$2;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintConfirm;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->showIdentifyDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintConfirm;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fingerprint/FingerprintConfirm;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintConfirm;
    .param p1, "x1"    # Landroid/os/Handler;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintConfirm;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintConfirm;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintConfirm;->showSensorErrorDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintConfirm;)Lcom/samsung/android/fingerprint/FingerprintManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintConfirm;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    return-object v0
.end method

.method private showIdentifyDialog()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mIdentifyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mIdentifyDialog:Landroid/app/Dialog;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    const-string v2, "com.android.settings.permission.unlock"

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager;->showIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;Ljava/lang/String;Z)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mIdentifyDialog:Landroid/app/Dialog;

    .line 69
    return-void
.end method

.method private showSensorErrorDialog()V
    .locals 4

    .prologue
    .line 137
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a1afd

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a1b06

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintConfirm$3;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$3;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 147
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 148
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;I)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 54
    .local v0, "mHandler":Landroid/os/Handler;
    new-instance v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 89
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 153
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 154
    const-string v0, "TAG"

    const-string v1, "FingerprintConfirm onPause()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mIdentifyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mIdentifyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 82
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 84
    :cond_1
    return-void
.end method
