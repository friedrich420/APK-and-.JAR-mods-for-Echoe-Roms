.class public Lcom/android/server/am/LockToAppRequestDialog;
.super Ljava/lang/Object;
.source "LockToAppRequestDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

.field private mCheckbox:Landroid/widget/CheckBox;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private mRequestedTask:Lcom/android/server/am/TaskRecord;

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 47
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    .line 49
    iput-object p2, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 50
    return-void
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_14

    .line 54
    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtilsCache;->getInstance(Lcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/LockPatternUtilsCache;

    move-result-object v0

    iput-object v0, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .line 57
    :cond_14
    iget-object v0, p0, mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private getLockString(I)I
    .registers 8
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 62
    :try_start_1
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5, p1}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .line 64
    .local v0, "quality":I
    sparse-switch v0, :sswitch_data_2e

    .line 80
    .end local v0    # "quality":I
    :cond_11
    :goto_11
    return v1

    .line 67
    .restart local v0    # "quality":I
    :sswitch_12
    const v1, 0x1040691

    goto :goto_11

    .line 71
    :sswitch_16
    const v1, 0x1040693

    goto :goto_11

    .line 73
    :sswitch_1a
    invoke-direct {p0}, getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    const-string v3, "lock_pattern_autolock"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, p1}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_24} :catch_2b

    move-result v2

    if-eqz v2, :cond_11

    .line 75
    const v1, 0x1040692

    goto :goto_11

    .line 78
    .end local v0    # "quality":I
    :catch_2b
    move-exception v2

    goto :goto_11

    .line 64
    nop

    :sswitch_data_2e
    .sparse-switch
        0x10000 -> :sswitch_1a
        0x20000 -> :sswitch_12
        0x30000 -> :sswitch_12
        0x40000 -> :sswitch_16
        0x50000 -> :sswitch_16
        0x60000 -> :sswitch_16
    .end sparse-switch
.end method


# virtual methods
.method public clearPrompt()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 85
    iget-object v0, p0, mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, mDialog:Landroid/app/AlertDialog;

    .line 88
    :cond_c
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 153
    const/4 v0, -0x1

    if-ne v0, p2, :cond_2c

    .line 154
    const-string v0, "ActivityManager"

    const-string v1, "accept lock-to-app request"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_exit_locked"

    iget-object v0, p0, mCheckbox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2a

    iget-object v0, p0, mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_1f
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    iget-object v0, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, mRequestedTask:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->startLockTaskMode(Lcom/android/server/am/TaskRecord;)V

    .line 165
    :goto_29
    return-void

    .line 156
    :cond_2a
    const/4 v0, 0x0

    goto :goto_1f

    .line 163
    :cond_2c
    const-string v0, "ActivityManager"

    const-string v1, "ignore lock-to-app request"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public showLockTaskPrompt(Lcom/android/server/am/TaskRecord;)V
    .registers 12
    .param p1, "task"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 91
    invoke-virtual {p0}, clearPrompt()V

    .line 92
    iput-object p1, p0, mRequestedTask:Lcom/android/server/am/TaskRecord;

    .line 93
    iget v8, p1, Lcom/android/server/am/TaskRecord;->userId:I

    invoke-direct {p0, v8}, getLockString(I)I

    move-result v6

    .line 95
    .local v6, "unlockStringId":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    .line 103
    .local v3, "r":Landroid/content/res/Resources;
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    .line 104
    .local v2, "hasPermanentMenuKey":Z
    if-eqz v2, :cond_c2

    .line 105
    iget-object v8, p0, mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_bd

    const v8, 0x104091b

    :goto_26
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "description":Ljava/lang/String;
    :goto_2a
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x104068a

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104068e

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x104068d

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 119
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz v6, :cond_d7

    .line 120
    const v8, 0x1090075

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    .line 124
    :goto_5a
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, mDialog:Landroid/app/AlertDialog;

    .line 126
    iget-object v8, p0, mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d3

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 127
    iget-object v8, p0, mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 129
    iget-object v8, p0, mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 131
    if-eqz v6, :cond_dd

    .line 132
    iget-object v8, p0, mDialog:Landroid/app/AlertDialog;

    const v9, 0x10203a4

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 133
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 136
    .local v5, "unlockString":Ljava/lang/String;
    iget-object v8, p0, mDialog:Landroid/app/AlertDialog;

    const v9, 0x10203a5

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iput-object v8, p0, mCheckbox:Landroid/widget/CheckBox;

    .line 137
    iget-object v8, p0, mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :try_start_a8
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_to_app_exit_locked"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_db

    const/4 v7, 0x1

    .line 143
    .local v7, "useLock":Z
    :goto_b7
    iget-object v8, p0, mCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_bc
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a8 .. :try_end_bc} :catch_e1

    .line 149
    .end local v4    # "tv":Landroid/widget/TextView;
    .end local v5    # "unlockString":Ljava/lang/String;
    .end local v7    # "useLock":Z
    :goto_bc
    return-void

    .line 105
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "description":Ljava/lang/String;
    :cond_bd
    const v8, 0x104091a

    goto/16 :goto_26

    .line 109
    :cond_c2
    iget-object v8, p0, mAccessibilityService:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_d3

    const v8, 0x104068c

    :goto_cd
    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "description":Ljava/lang/String;
    goto/16 :goto_2a

    .end local v1    # "description":Ljava/lang/String;
    :cond_d3
    const v8, 0x104068b

    goto :goto_cd

    .line 122
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v1    # "description":Ljava/lang/String;
    :cond_d7
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_5a

    .line 141
    .restart local v4    # "tv":Landroid/widget/TextView;
    .restart local v5    # "unlockString":Ljava/lang/String;
    :cond_db
    const/4 v7, 0x0

    goto :goto_b7

    .line 147
    .end local v4    # "tv":Landroid/widget/TextView;
    .end local v5    # "unlockString":Ljava/lang/String;
    :cond_dd
    const/4 v8, 0x0

    iput-object v8, p0, mCheckbox:Landroid/widget/CheckBox;

    goto :goto_bc

    .line 144
    .restart local v4    # "tv":Landroid/widget/TextView;
    .restart local v5    # "unlockString":Ljava/lang/String;
    :catch_e1
    move-exception v8

    goto :goto_bc
.end method
