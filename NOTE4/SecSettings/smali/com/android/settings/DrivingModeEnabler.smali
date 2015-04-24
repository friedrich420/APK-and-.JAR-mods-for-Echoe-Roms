.class public final Lcom/android/settings/DrivingModeEnabler;
.super Landroid/preference/PreferenceActivity;
.source "DrivingModeEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mCheck:I

.field private final mContext:Landroid/content/Context;

.field private mDrivingModeOnDialog:Landroid/app/AlertDialog;

.field private mHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsInMainMenu:Z

.field private mPosition:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field state:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 71
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DrivingModeEnabler;->mIsInMainMenu:Z

    .line 51
    iput-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 52
    iput v2, p0, Lcom/android/settings/DrivingModeEnabler;->mPosition:I

    .line 56
    iput-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 57
    new-instance v0, Lcom/android/settings/DrivingModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DrivingModeEnabler$1;-><init>(Lcom/android/settings/DrivingModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    iput-object p1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 74
    iput v2, p0, Lcom/android/settings/DrivingModeEnabler;->state:I

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DrivingModeEnabler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DrivingModeEnabler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DrivingModeEnabler;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DrivingModeEnabler;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DrivingModeEnabler;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/DrivingModeEnabler;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/settings/DrivingModeEnabler;->mPosition:I

    return v0
.end method

.method private isVoiceControlEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    const/4 v1, 0x1

    .line 190
    .local v1, "isSVoiceInstalled":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 191
    const-string v2, "DrivingModeEnabler"

    const-string v3, "SVoice is installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SVOICE"

    invoke-static {v2}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 197
    const/4 v1, 0x0

    .line 199
    :cond_0
    return v1

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "DrivingModeEnabler"

    const-string v3, "SVoice is not installed."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showAllOptionDisabledDialog()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 207
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0d99

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0d86

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/DrivingModeEnabler$2;

    invoke-direct {v2, p0}, Lcom/android/settings/DrivingModeEnabler$2;-><init>(Lcom/android/settings/DrivingModeEnabler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    .line 226
    iget-object v0, p0, Lcom/android/settings/DrivingModeEnabler;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 227
    return-void
.end method


# virtual methods
.method public areAllDrivingModeOptionsDisabled()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 230
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_incoming_call_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 231
    .local v3, "incomingCall":I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_message_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 232
    .local v4, "message":I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_email_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 233
    .local v2, "email":I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_chaton_call_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 234
    .local v1, "chatOn":I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_voice_mail_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 235
    .local v7, "voiceMail":I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_alarm_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 236
    .local v0, "alarm":I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_schedule_notification"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 237
    .local v5, "scheduleNotification":I
    iget-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "driving_mode_unlock_screen_contents"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 238
    .local v6, "unlockScreen":I
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    if-nez v7, :cond_0

    if-nez v0, :cond_0

    if-nez v5, :cond_0

    if-nez v6, :cond_0

    .line 240
    const/4 v8, 0x1

    .line 242
    :cond_0
    return v8
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 158
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 159
    .local v2, "state":I
    if-eqz p2, :cond_3

    if-nez v2, :cond_3

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeEnabler;->areAllDrivingModeOptionsDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/DrivingModeEnabler;->mIsInMainMenu:Z

    if-eqz v4, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/settings/DrivingModeEnabler;->showAllOptionDisabledDialog()V

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 164
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 165
    const-string v4, "DrivingModeEnabler"

    const-string v5, "switch is on"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 167
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "DrivingMode"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "quickpanel_drivingmode_checked"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 172
    .local v0, "bShowDialog":Z
    :goto_1
    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/settings/DrivingModeEnabler;->isVoiceControlEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/DrivingModeEnabler;->showDrivingModeOnDialog()V

    goto :goto_0

    .end local v0    # "bShowDialog":Z
    :cond_2
    move v0, v3

    .line 171
    goto :goto_1

    .line 176
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    if-nez p2, :cond_0

    if-ne v2, v0, :cond_0

    .line 177
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 178
    const/4 v2, 0x0

    .line 179
    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    const-string v4, "DrivingModeEnabler"

    const-string v5, "switch is off"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v4, "DrivingMode"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 183
    iget-object v3, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 121
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "DrivingModeEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCheck = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/DrivingModeEnabler;->mCheck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const-string v2, "DrivingModeEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DRIVINGTMODE_ONOFF = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "driving_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget v2, p0, Lcom/android/settings/DrivingModeEnabler;->mCheck:I

    iget-object v3, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 125
    const-string v2, "changed"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    :goto_0
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 131
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_1
    return-void

    .line 127
    :cond_0
    const-string v2, "changed"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "DrivingModeEnabler"

    const-string v3, "no BroadcastReceiver to be unregistered"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public resume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 107
    .local v0, "state":I
    const-string v1, "DrivingModeEnabler"

    const-string v2, "resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput v0, p0, Lcom/android/settings/DrivingModeEnabler;->mCheck:I

    .line 109
    if-ne v0, v3, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 111
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 115
    :goto_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/DrivingModeEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.settings.DRIVINGMODE_SWITCH_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method

.method public setHeaderPosition(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 0
    .param p1, "header"    # Landroid/preference/PreferenceActivity$Header;
    .param p2, "position"    # I

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/DrivingModeEnabler;->mHeader:Landroid/preference/PreferenceActivity$Header;

    .line 85
    iput p2, p0, Lcom/android/settings/DrivingModeEnabler;->mPosition:I

    .line 86
    return-void
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 5
    .param p1, "switch_"    # Landroid/widget/Switch;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 142
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v1, p1, :cond_0

    .line 155
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 145
    iput-object p1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    .line 146
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "driving_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 147
    .local v0, "state":I
    if-ne v0, v3, :cond_1

    .line 148
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 153
    :goto_1
    const-string v1, "DrivingModeEnabler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSwitch DRIVINGMODE_ONOFF ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_1
.end method

.method public showDrivingModeOnDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 252
    iget-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 253
    iget-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 254
    iput-object v9, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 257
    :cond_0
    iget-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 259
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v6, 0x7f040087

    invoke-virtual {v2, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 260
    .local v3, "layout":Landroid/view/View;
    const v6, 0x7f10016f

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 261
    .local v0, "checkBox":Landroid/widget/CheckBox;
    new-instance v6, Lcom/android/settings/DrivingModeEnabler$3;

    invoke-direct {v6, p0}, Lcom/android/settings/DrivingModeEnabler$3;-><init>(Lcom/android/settings/DrivingModeEnabler;)V

    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    const v6, 0x7f10016e

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 266
    .local v4, "message":Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 267
    .local v1, "drivingModeText":Ljava/lang/String;
    const-string v6, "p4notelteusc"

    const-string v7, "ro.product.name"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 268
    iget-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0d9d

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    const v8, 0x7f0a0d9c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 272
    .local v5, "messageString":Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0a0d86

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    invoke-virtual {v6, v7, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    .line 277
    iget-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 278
    iget-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mDrivingModeOnDialog:Landroid/app/AlertDialog;

    new-instance v7, Lcom/android/settings/DrivingModeEnabler$4;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/DrivingModeEnabler$4;-><init>(Lcom/android/settings/DrivingModeEnabler;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 289
    return-void

    .line 270
    .end local v5    # "messageString":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    const v7, 0x7f0a0d9b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public updateSwitch()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 89
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "driving_mode_on"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 90
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    .line 91
    .local v0, "isChecked":Z
    const-string v2, "DrivingModeEnabler"

    const-string v3, "updateSwitch"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    if-ne v1, v5, :cond_1

    .line 94
    if-nez v0, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/settings/DrivingModeEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
