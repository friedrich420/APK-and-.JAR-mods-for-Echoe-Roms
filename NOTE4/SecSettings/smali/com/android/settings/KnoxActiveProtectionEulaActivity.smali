.class public Lcom/android/settings/KnoxActiveProtectionEulaActivity;
.super Landroid/app/Activity;
.source "KnoxActiveProtectionEulaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnNextReboot:Landroid/widget/Button;

.field private btnRebootNow:Landroid/widget/Button;

.field private chkConfirm:Landroid/widget/CheckBox;

.field private mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

.field private tvEula:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    .line 42
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    .line 43
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    .line 44
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    .line 45
    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    return-void
.end method

.method private isKoreaCountryCode()Z
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "ret":Z
    const-string v1, "KOREA"

    const-string v2, "ro.csc.country_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    const/4 v0, 0x1

    .line 170
    :cond_0
    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1, v4, v4}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    goto :goto_0

    .line 90
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1, v4, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V

    goto :goto_0

    .line 96
    :pswitch_2
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnablePending()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V

    .line 101
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "KnoxActiveProtectionEulaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "btn_cancel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v1}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapDisablePending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->setKapEnabled(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 108
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 109
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    const-string v2, "#000000"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 114
    :cond_2
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    const-string v2, "#888888"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    const-string v2, "#888888"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    .line 84
    nop

    :pswitch_data_0
    .packed-switch 0x7f10025f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f040104

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->setContentView(I)V

    .line 57
    new-instance v0, Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-direct {v0}, Lcom/android/settings/KnoxActiveProtectionStatus;-><init>()V

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    .line 59
    const v0, 0x7f10025d

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    .line 61
    invoke-direct {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->isKoreaCountryCode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->tvEula:Landroid/widget/TextView;

    const v1, 0x7f0a1e3e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    :cond_0
    const v0, 0x7f100262

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    const v0, 0x7f100261

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    const v0, 0x7f100260

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f10025f

    invoke-virtual {p0, v0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    .line 79
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    const-string v1, "kapCheckBox"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 164
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 129
    :try_start_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isKapEnforced()Z

    move-result v2

    .line 131
    .local v2, "isKapEnforced":Z
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->mKapStatus:Lcom/android/settings/KnoxActiveProtectionStatus;

    invoke-virtual {v3}, Lcom/android/settings/KnoxActiveProtectionStatus;->isDeviceTampered()Z

    move-result v1

    .line 133
    .local v1, "isDeviceTampered":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v1    # "isDeviceTampered":Z
    .end local v2    # "isKapEnforced":Z
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 140
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    const-string v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 142
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    const-string v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 150
    :goto_1
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "KnoxActiveProtectionEulaActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onResume : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnRebootNow:Landroid/widget/Button;

    const-string v4, "#888888"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 147
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    iget-object v3, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->btnNextReboot:Landroid/widget/Button;

    const-string v4, "#888888"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 155
    const-string v0, "kapCheckBox"

    iget-object v1, p0, Lcom/android/settings/KnoxActiveProtectionEulaActivity;->chkConfirm:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    return-void
.end method
