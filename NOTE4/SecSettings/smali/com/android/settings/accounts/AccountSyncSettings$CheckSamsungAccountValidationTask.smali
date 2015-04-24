.class Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;
.super Landroid/os/AsyncTask;
.source "AccountSyncSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountSyncSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckSamsungAccountValidationTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mIntentToStartActivity:Landroid/content/Intent;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/settings/accounts/AccountSyncSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1022
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1026
    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    .line 1028
    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AccountSyncSettings;Lcom/android/settings/accounts/AccountSyncSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/accounts/AccountSyncSettings;
    .param p2, "x1"    # Lcom/android/settings/accounts/AccountSyncSettings$1;

    .prologue
    .line 1022
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 13
    .param p1, "arg0"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x1

    .line 1048
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v9}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1049
    .local v0, "activity":Landroid/app/Activity;
    const-string v1, "s5d189ajvs"

    .line 1050
    .local v1, "clientId":Ljava/lang/String;
    const-string v2, "E8781246E4A0F6E9E213178CC003DE6A"

    .line 1051
    .local v2, "clientSecret":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 1052
    .local v8, "packageName":Ljava/lang/String;
    :goto_0
    const-string v7, "OSP_02"

    .line 1053
    .local v7, "ospVersion":Ljava/lang/String;
    const-string v6, "VALIDATION_CHECK"

    .line 1069
    .local v6, "mode":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.msc.action.samsungaccount.REQUEST_CHECKLIST_VALIDATION"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1071
    .local v5, "intent":Landroid/content/Intent;
    const-string v9, "client_id"

    const-string v10, "s5d189ajvs"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1072
    const-string v9, "client_secret"

    const-string v10, "E8781246E4A0F6E9E213178CC003DE6A"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1073
    const-string v9, "progress_theme"

    const-string v10, "invisible"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v9, v5, v12}, Lcom/android/settings/accounts/AccountSyncSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1078
    const/4 v3, 0x0

    .line 1079
    .local v3, "count":I
    :goto_1
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    # getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mValidationStatus:I
    invoke-static {v9}, Lcom/android/settings/accounts/AccountSyncSettings;->access$700(Lcom/android/settings/accounts/AccountSyncSettings;)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 1081
    const/16 v9, 0x3c

    if-le v3, v9, :cond_2

    .line 1082
    :try_start_0
    const-string v9, "AccountSettings"

    const-string v10, "no response from Samsung account"

    invoke-static {v9, v10}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :cond_0
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    # getter for: Lcom/android/settings/accounts/AccountSyncSettings;->mValidationStatus:I
    invoke-static {v9}, Lcom/android/settings/accounts/AccountSyncSettings;->access$700(Lcom/android/settings/accounts/AccountSyncSettings;)I

    move-result v9

    if-nez v9, :cond_3

    .line 1097
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 1099
    :goto_2
    return-object v9

    .line 1051
    .end local v3    # "count":I
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "mode":Ljava/lang/String;
    .end local v7    # "ospVersion":Ljava/lang/String;
    .end local v8    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v8, "com.android.settings"

    goto :goto_0

    .line 1086
    .restart local v3    # "count":I
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v6    # "mode":Ljava/lang/String;
    .restart local v7    # "ospVersion":Ljava/lang/String;
    .restart local v8    # "packageName":Ljava/lang/String;
    :cond_2
    const-wide/16 v10, 0x3e8

    :try_start_1
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1087
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1088
    :catch_0
    move-exception v4

    .line 1089
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 1099
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_3
    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 1022
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 0

    .prologue
    .line 1138
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 1139
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "validated"    # Ljava/lang/Boolean;

    .prologue
    .line 1105
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1108
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    .line 1109
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1110
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1113
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 1114
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 1115
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mIntentToStartActivity:Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1120
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v2}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 1133
    :cond_1
    :goto_1
    return-void

    .line 1117
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const v3, 0x7f0a0c61

    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1122
    :catch_0
    move-exception v1

    .line 1123
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1124
    if-eqz v0, :cond_1

    .line 1125
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1127
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 1128
    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 1129
    if-eqz v0, :cond_1

    .line 1130
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1022
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 1034
    new-instance v0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$1;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1040
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->this$0:Lcom/android/settings/accounts/AccountSyncSettings;

    const v2, 0x7f0a0c60

    invoke-virtual {v1, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1042
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1043
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings$CheckSamsungAccountValidationTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1044
    return-void
.end method
