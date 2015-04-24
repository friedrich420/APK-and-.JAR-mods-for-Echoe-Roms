.class public final Lcom/android/settings/SmsDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v2, 0x0

    .line 71
    .local v2, "isDefaultSms":Z
    const-string v10, "phone"

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    .line 72
    .local v9, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v10

    if-nez v10, :cond_0

    .line 74
    const-string v10, "SmsDefaultDialog"

    const-string v11, "No phone, no SMS"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const/4 v10, 0x0

    .line 170
    :goto_0
    return v10

    .line 78
    :cond_0
    const/4 v4, 0x0

    .line 79
    .local v4, "messageAppName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 80
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 82
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v8, :cond_1

    .line 83
    :try_start_0
    const-string v10, "com.android.mms"

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 90
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 91
    invoke-virtual {v8, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .end local v4    # "messageAppName":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 92
    .restart local v4    # "messageAppName":Ljava/lang/String;
    const-string v10, "SmsDefaultDialog"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ai is not null get messageAppName = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :goto_2
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 98
    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-nez v10, :cond_3

    .line 99
    const/4 v10, 0x0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 87
    const-string v10, "SmsDefaultDialog"

    const-string v11, "Exception occur ai is null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 94
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const v10, 0x7f0a1cd2

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 102
    :cond_3
    const/4 v5, 0x0

    .line 103
    .local v5, "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    const/4 v10, 0x1

    invoke-static {p0, v10}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v6

    .line 104
    .local v6, "oldSmsComponent":Landroid/content/ComponentName;
    if-eqz v6, :cond_4

    .line 105
    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v5

    .line 107
    iget-object v10, v5, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v11, v11, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 108
    const/4 v10, 0x0

    goto :goto_0

    .line 112
    :cond_4
    const/4 v3, 0x0

    .line 113
    .local v3, "isUSAPopup":Z
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 114
    const/4 v3, 0x1

    .line 117
    :cond_5
    const-string v10, "com.android.mms"

    invoke-virtual {v10, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 118
    const/4 v2, 0x1

    .line 124
    :goto_3
    iget-object v7, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 125
    .local v7, "p":Lcom/android/internal/app/AlertController$AlertParams;
    if-eqz v3, :cond_7

    .line 126
    const v10, 0x7f0a0831

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 130
    :goto_4
    if-eqz v5, :cond_b

    .line 131
    if-eqz v2, :cond_9

    .line 132
    if-eqz v3, :cond_8

    .line 133
    const v10, 0x7f0a0833

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v5, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v13, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 159
    :goto_5
    if-eqz v3, :cond_e

    .line 160
    const v10, 0x7f0a00bb

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 161
    const v10, 0x7f0a00bc

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 166
    :goto_6
    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 167
    iput-object p0, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->setupAlert()V

    .line 170
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 120
    .end local v7    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_6
    const/4 v2, 0x0

    goto :goto_3

    .line 128
    .restart local v7    # "p":Lcom/android/internal/app/AlertController$AlertParams;
    :cond_7
    const v10, 0x7f0a0830

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_4

    .line 136
    :cond_8
    const v10, 0x7f0a0832

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v13, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, v5, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_5

    .line 140
    :cond_9
    if-eqz v3, :cond_a

    .line 141
    const v10, 0x7f0a0833

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v5, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v13, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_5

    .line 144
    :cond_a
    const v10, 0x7f0a1ccf

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v13, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_5

    .line 148
    :cond_b
    if-eqz v2, :cond_c

    .line 149
    const v10, 0x7f0a0834

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v13, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 151
    :cond_c
    if-eqz v3, :cond_d

    .line 152
    const v10, 0x7f0a0834

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v13, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 154
    :cond_d
    const v10, 0x7f0a1ccf

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v13, v13, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v4, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 163
    :cond_e
    const v10, 0x7f0a08f4

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 164
    const v10, 0x7f0a08f5

    invoke-virtual {p0, v10}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    goto/16 :goto_6
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 59
    packed-switch p2, :pswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 62
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 49
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 52
    invoke-direct {p0, v1}, Lcom/android/settings/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    .line 55
    :cond_0
    return-void
.end method
