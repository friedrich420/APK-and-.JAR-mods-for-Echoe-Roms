.class public Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;
.super Lcom/android/internal/app/AlertActivity;
.source "RoamingAutoDialOption.java"


# instance fields
.field private mIsFinishing:Z

.field private mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mIsFinishing:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;Z)Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mIsFinishing:Z

    return v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 92
    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onBackPressed()..."

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iput-boolean v5, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mIsFinishing:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->finish()V

    .line 95
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onCreate()..."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    const-string v1, "extra_rad_original_number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mPhoneNumber:Ljava/lang/String;

    .line 46
    const-string v0, "RoamingAutoDialOption"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 50
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 51
    const v2, 0x7f080074

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 52
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 53
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const v3, 0x7f080075

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 54
    iget-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    const v3, 0x7f080076

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 55
    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 56
    new-instance v1, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$1;-><init>(Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 64
    new-instance v1, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$2;

    invoke-direct {v1, p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption$2;-><init>(Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;)V

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 80
    const-string v0, "RoamingAutoDialOption"

    const-string v1, "setupAlert"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->setupAlert()V

    .line 83
    iget-object v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0}, Lcom/android/internal/app/AlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    const-string v1, "RoamingAutoDialOption"

    const-string v2, "disable sound effects"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v0, v5}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 88
    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 105
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 106
    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onPause()..."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 99
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 100
    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onResume()..."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 111
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 112
    const-string v0, "RoamingAutoDialOption"

    const-string v1, "onStop()..."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-boolean v0, p0, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->mIsFinishing:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialOption;->finish()V

    .line 114
    :cond_0
    return-void
.end method
